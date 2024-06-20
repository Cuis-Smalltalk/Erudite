'From Cuis7.1 [latest update: #6487] on 20 June 2024 at 12:24:25 pm'!
'Description DocBook support for Erudite.

DocBook validation: https://wiki.archlinux.org/title/DocBook
DocBook guide: https://tdg.docbook.org/tdg/5.2/'!
!provides: 'EruditeDocBook' 1 9!
!requires: 'Erudite' 1 259 nil!
!requires: 'EruditeXMLBook' 1 13 nil!
!requires: 'YAXO' 1 27 nil!
SystemOrganization addCategory: #EruditeDocBook!


!classDefinition: #DocBookEruditeBook category: #EruditeDocBook!
EruditeBook subclass: #DocBookEruditeBook
	instanceVariableNames: 'file'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'DocBookEruditeBook class' category: #EruditeDocBook!
DocBookEruditeBook class
	instanceVariableNames: ''!

!classDefinition: #DocBookEruditeBookStorer category: #EruditeDocBook!
EruditeBookStorer subclass: #DocBookEruditeBookStorer
	instanceVariableNames: 'file'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'DocBookEruditeBookStorer class' category: #EruditeDocBook!
DocBookEruditeBookStorer class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocBookParser category: #EruditeDocBook!
Object subclass: #EruditeDocBookParser
	instanceVariableNames: 'stream sectionLevel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'EruditeDocBookParser class' category: #EruditeDocBook!
EruditeDocBookParser class
	instanceVariableNames: ''!


!DocBookEruditeBook commentStamp: 'MM 6/18/2024 21:15:44' prior: 0!
(DocBookEruditeBook titled: 'My book') edit!

!DocBookEruditeBookStorer commentStamp: '<historical>' prior: 0!
| bookFile |

bookFile  (CodePackage installedPackages at: 'EruditeDocBook') fullFileName asFileEntry parent // 'DocBook/defguide5/src/guide.xml'.

DocBookEruditeBook new
	file: bookFile;
	load;
	open!

!DocBookEruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 6/19/2024 14:51:14'!
storerClass

	^ DocBookEruditeBookStorer ! !

!DocBookEruditeBook methodsFor: 'accessing' stamp: 'MM 6/19/2024 14:51:43'!
file
	"Answer the value of file"

	^ file! !

!DocBookEruditeBook methodsFor: 'accessing' stamp: 'MM 6/19/2024 14:51:43'!
file: anObject
	"Set the value of file"

	file := anObject! !

!DocBookEruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 21:05:58'!
parser

	^ EruditeDocBookParser new! !

!DocBookEruditeBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 6/19/2024 17:14:25'!
load

	| xml loadedBook |
	
	loadedBook := DocBookEruditeBook new
					file: book file;
					yourself.
	xml := XMLDOMParser parseDocumentFrom: book file readStream.
	xml tagsNamed: #title do: [:elem | loadedBook title: elem contentString].
	xml tagsNamed: #xi:include do: [:elem | | chapterFilePath chapterXML chapterTitle |
		chapterFilePath := book file parent // (elem attributeAt: #href).
		chapterXML := XMLDOMParser parseDocumentFrom: chapterFilePath readStream.
		chapterTitle := chapterXML firstTagNamed: #title.
		chapterTitle ifNotNil: [
			loadedBook addSection: chapterTitle contentString contents: chapterFilePath textContents]].
	
	^ loadedBook
	! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 21:18:21'!
initialize

	super initialize.
	sectionLevel := 0.! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 21:18:10'!
initialize: aStream

	stream := aStream
	! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 20:58:46'!
parse

	^ EruditeDocument new
		parser: self;
		yourself! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 21:00:08'!
parse: aString

	| parser xml doc contents |
	
	stream := aString readStream.
	parser := EruditeXMLDOMParser.
	xml := parser parseDocumentFrom: stream.
	contents := OrderedCollection new.
	doc := EruditeDocument new
			contents: contents;
			yourself.
	xml elementsDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			contents add: parsedElem]].
	
	^ doc! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/19/2024 09:48:29'!
parseElement: anXMLElement
	
	(anXMLElement isKindOf: XMLStringNode) ifTrue:[
		^ EruditeDocString contents: anXMLElement string].
	
	(anXMLElement isKindOf: XMLElement)
		ifFalse: [^EruditeDocString contents: ''].
	
	^ (self parserFor: anXMLElement tag) ifNotNil: [:selector |
		self perform: selector with: anXMLElement]! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/19/2024 08:31:17'!
parserFor: xmlTag

	| parserSelector |
	
	parserSelector := ('parse', xmlTag capitalized, ':') asSymbol.
	^ (self respondsTo: parserSelector) 
		ifTrue: [parserSelector]
		ifFalse: [Transcript show: '[EruditeDocBookParser WARNING] - Ignoring element. No parser for: ', xmlTag; cr.
				nil]! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 21:14:52'!
sectionLevel

	^ sectionLevel! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 21:15:05'!
sectionLevel: aNumber

	sectionLevel := aNumber! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/19/2024 09:07:52'!
parseAbstract: anXMLElement

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 11:54:02'!
parseAcronym: anXMLElement

	^ EruditeDocString contents: anXMLElement contentString! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/19/2024 09:04:27'!
parseAppendix: anXMLElement

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/19/2024 08:58:08'!
parseChapter: anXMLElement

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 12:01:21'!
parseIndexterm: anXMLElement

	"TODO
	Do nothing for now"
	
	^ nil! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/19/2024 08:34:42'!
parsePara: anXMLElement

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/19/2024 09:43:22'!
parsePreface: anXMLElement

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 12:23:11'!
parseProgramlisting: anXMLElement

	^ EruditeParagraphNode 
	      contents: (Array with: ((EruditeDocCode code: anXMLElement contentString)
								sourceLanguage: nil;
								yourself))
	
! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/19/2024 08:57:44'!
parseSection: anXMLElement

	| paragraph |
	
	self sectionLevel: self sectionLevel + 1.
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	self sectionLevel: self sectionLevel - 1.
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 12:00:49'!
parseTag: anXMLElement

	"do nothing"
	
	^ nil! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/19/2024 08:38:03'!
parseTitle: anXMLElement

	^ EruditeDocHeading 
		heading: (String streamContents: [:s |
			           s nextPutAll: anXMLElement contents first string;
					nextPut: Character newLineCharacter ])
		level: self sectionLevel ! !

!EruditeDocBookParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 20:58:46'!
parse: aString

	^ self new parse: aString! !
