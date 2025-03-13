'From Cuis7.3 [latest update: #7066] on 13 March 2025 at 4:26:29 pm'!
'Description '!
!provides: 'EruditeXMLBook' 1 19!
!requires: 'Erudite' 1 267 nil!
!requires: 'YAXO' 1 27 nil!
SystemOrganization addCategory: #EruditeXMLBook!


!classDefinition: #EruditeXMLBook category: #EruditeXMLBook!
EruditeBook subclass: #EruditeXMLBook
	instanceVariableNames: 'requirements file'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLBook class' category: #EruditeXMLBook!
EruditeXMLBook class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLBookStorer category: #EruditeXMLBook!
EruditeBookStorer subclass: #EruditeXMLBookStorer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLBookStorer class' category: #EruditeXMLBook!
EruditeXMLBookStorer class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocString category: #EruditeXMLBook!
EruditeDocNode subclass: #EruditeDocString
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeDocString class' category: #EruditeXMLBook!
EruditeDocString class
	instanceVariableNames: ''!

!classDefinition: #EruditeParagraphNode category: #EruditeXMLBook!
EruditeDocNode subclass: #EruditeParagraphNode
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeParagraphNode class' category: #EruditeXMLBook!
EruditeParagraphNode class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLElementParser category: #EruditeXMLBook!
Object subclass: #EruditeXMLElementParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLElementParser class' category: #EruditeXMLBook!
EruditeXMLElementParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLChapterParser category: #EruditeXMLBook!
EruditeXMLElementParser subclass: #EruditeXMLChapterParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLChapterParser class' category: #EruditeXMLBook!
EruditeXMLChapterParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLClassParser category: #EruditeXMLBook!
EruditeXMLElementParser subclass: #EruditeXMLClassParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLClassParser class' category: #EruditeXMLBook!
EruditeXMLClassParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLDoItParser category: #EruditeXMLBook!
EruditeXMLElementParser subclass: #EruditeXMLDoItParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLDoItParser class' category: #EruditeXMLBook!
EruditeXMLDoItParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLH1Parser category: #EruditeXMLBook!
EruditeXMLElementParser subclass: #EruditeXMLH1Parser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLH1Parser class' category: #EruditeXMLBook!
EruditeXMLH1Parser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLListItemParser category: #EruditeXMLBook!
EruditeXMLElementParser subclass: #EruditeXMLListItemParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLListItemParser class' category: #EruditeXMLBook!
EruditeXMLListItemParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLParagraphParser category: #EruditeXMLBook!
EruditeXMLElementParser subclass: #EruditeXMLParagraphParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLParagraphParser class' category: #EruditeXMLBook!
EruditeXMLParagraphParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLTitleParser category: #EruditeXMLBook!
EruditeXMLElementParser subclass: #EruditeXMLTitleParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLTitleParser class' category: #EruditeXMLBook!
EruditeXMLTitleParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLUnorderedListParser category: #EruditeXMLBook!
EruditeXMLElementParser subclass: #EruditeXMLUnorderedListParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLUnorderedListParser class' category: #EruditeXMLBook!
EruditeXMLUnorderedListParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLParser category: #EruditeXMLBook!
Object subclass: #EruditeXMLParser
	instanceVariableNames: 'stream mode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLParser class' category: #EruditeXMLBook!
EruditeXMLParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLDOMParser category: #EruditeXMLBook!
XMLDOMParser subclass: #EruditeXMLDOMParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLDOMParser class' category: #EruditeXMLBook!
EruditeXMLDOMParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLElement category: #EruditeXMLBook!
XMLElement subclass: #EruditeXMLElement
	instanceVariableNames: 'children'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'EruditeXMLElement class' category: #EruditeXMLBook!
EruditeXMLElement class
	instanceVariableNames: ''!


!EruditeXMLBook commentStamp: '<historical>' prior: 0!
|xml doc|

xml  '<h1>Title</h1>
<p>Hello world</p>
<p>
<ul><li>Hello</li>
<li>World</li></ul>
</p>'.

doc  EruditeXMLParser parse: xml.
(MorphicEruditeDocRenderer on: doc) render edit.

---------------

(EruditeXMLBook titled: 'My book') edit

---------------

(EruditeXMLBook new
	file: (CodePackage installedPackages at: 'EruditeXMLBook') fullFileName asFileEntry parent // 'Examples/xmlbook1.xml')
	open!

!EruditeXMLBook methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:01:26'!
baseDir
	^ file parent! !

!EruditeXMLBook methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:05:34'!
load

	^ self reload! !

!EruditeXMLBook methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:06:09'!
sections

	"lazily load the book when trying to access its sections"
	sections ifEmpty:[self load].
	^ super sections! !

!EruditeXMLBook methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:16:13'!
storerClass

	^ EruditeXMLBookStorer ! !

!EruditeXMLBook methodsFor: 'accessing' stamp: 'MM 3/13/2025 16:01:10'!
file
	"Answer the value of file"

	^ file! !

!EruditeXMLBook methodsFor: 'accessing' stamp: 'MM 3/13/2025 16:01:10'!
file: anObject
	"Set the value of file"

	file := anObject! !

!EruditeXMLBook methodsFor: 'accessing' stamp: 'MM 3/13/2025 16:01:10'!
requirements
	"Answer the value of requirements"

	^ requirements! !

!EruditeXMLBook class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 15:59:28'!
parser

	^ EruditeXMLParser new! !

!EruditeXMLBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:20:46'!
load
	
	| xml loadedBook |
	
	loadedBook := book class new
					file: book file;
					yourself.
	xml := XMLDOMParser parseDocumentFrom: book file readStream.
	xml tagsNamed: #title do: [:elem | loadedBook title: elem contentString].
	"Each include is expected to have a chapter."
	xml tagsNamed: #chapter do: [:elem | | chapterSource chapterXML chapterTitle |
		chapterSource := String streamContents: [:s | elem printOn: s]. 
		chapterXML := XMLDOMParser parseDocumentFrom: chapterSource readStream.
		chapterTitle := chapterXML firstTagNamed: #title.
		chapterTitle 
			ifNil: [self error: 'Chapter with no title']
			ifNotNil: [
				loadedBook addSection: chapterTitle contentString contents: chapterSource]].
	
	^ loadedBook! !

!EruditeDocString methodsFor: 'accessing' stamp: 'MM 6/15/2024 19:27:20'!
contents
	"Answer the value of contents"

	^ contents! !

!EruditeDocString methodsFor: 'accessing' stamp: 'MM 6/15/2024 19:27:20'!
contents: anObject
	"Set the value of contents"

	contents := anObject! !

!EruditeDocString methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 19:29:41'!
accept: aVisitor

	^ aVisitor visitString: self ! !

!EruditeDocString class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 19:27:40'!
contents: aString

	^ self new contents: aString; yourself! !

!EruditeParagraphNode methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 19:24:36'!
accept: aVisitor

	^ aVisitor visitParagraph: self! !

!EruditeParagraphNode methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:45:48'!
initialize

	super initialize.
	
	contents := OrderedCollection new! !

!EruditeParagraphNode methodsFor: 'accessing' stamp: 'MM 6/15/2024 16:45:57'!
contents
	"Answer the value of contents"

	^ contents! !

!EruditeParagraphNode methodsFor: 'accessing' stamp: 'MM 6/15/2024 16:45:57'!
contents: anObject
	"Set the value of contents"

	contents := anObject! !

!EruditeParagraphNode class methodsFor: 'as yet unclassified' stamp: 'MM 6/20/2024 12:21:22'!
contents: nodeContents

	^ self new contents: nodeContents; yourself! !

!EruditeXMLElementParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:52:09'!
parse: anXMLElement using: aParser

	^ self subclassResponsibility ! !

!EruditeXMLElementParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:42:20'!
tag

	^ self subclassResponsibility ! !

!EruditeXMLChapterParser class methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:23:44'!
parse: anXMLElement using: aParser

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		paragraph contents add: (aParser value: xmlElem)].
	
	^ paragraph! !

!EruditeXMLChapterParser class methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:24:06'!
tag

	^ 'chapter'! !

!EruditeXMLClassParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 22:14:08'!
parse: anXMLElement using: aParser

	|className|
	
	className := anXMLElement contents first string.
	^ EruditeDocLink target: className
						type: #class
						label: className! !

!EruditeXMLClassParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 22:11:49'!
tag
	^ 'class'! !

!EruditeXMLDoItParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 22:21:50'!
parse: anXMLElement using: aParser

	|code|
	
	code := anXMLElement contents first string.
	^ EruditeDocCode code: code action: (Dictionary newFromPairs: #(action doIt))! !

!EruditeXMLDoItParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 22:16:48'!
tag
	^ 'doit'! !

!EruditeXMLH1Parser class methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 00:39:02'!
parse: anXMLElement using: aParser

	^ EruditeDocHeading 
		heading: (String streamContents: [:s |
			           s nextPutAll: anXMLElement contents first string;
					nextPut: Character newLineCharacter ])
		level: 1! !

!EruditeXMLH1Parser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:42:04'!
tag

	^ 'h1'! !

!EruditeXMLListItemParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 18:04:20'!
parse: anXMLElement using: aParser

	| li |
	
	li := EruditeDocListItem new.
	
	anXMLElement childrenDo: [:xmlElem |
		li contents add: (aParser value: xmlElem)].
	
	^ li! !

!EruditeXMLListItemParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 18:03:15'!
tag

	^ 'li'! !

!EruditeXMLParagraphParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 18:02:24'!
parse: anXMLElement using: aParser

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		paragraph contents add: (aParser value: xmlElem)].
	
	^ paragraph! !

!EruditeXMLParagraphParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:46:51'!
tag

	^ 'p'! !

!EruditeXMLTitleParser class methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:25:36'!
parse: anXMLElement using: aParser

	^ EruditeDocHeading 
		heading: (String streamContents: [:s |
			           s nextPutAll: anXMLElement contents first string;
					nextPut: Character newLineCharacter ])
		level: 1! !

!EruditeXMLTitleParser class methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:26:00'!
tag

	^ 'title'! !

!EruditeXMLUnorderedListParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 18:02:16'!
parse: anXMLElement using: aParser

	| list |
	
	list := EruditeDocList new.
	
	anXMLElement childrenDo: [:xmlElem | |listItem|
		listItem := aParser value: xmlElem.
		self assert: [listItem isKindOf: EruditeDocListItem] description: 'Should be a list item'		.
		list items add: listItem].
	
	^ list! !

!EruditeXMLUnorderedListParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:56:30'!
tag
	^ 'ul'! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:22:19'!
initialize

	mode := #strict! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:22:13'!
initialize: aStream

	stream := aStream
	! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 15:56:05'!
parse

	^ EruditeDocument new
		parser: self;
		yourself! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 16:21:40'!
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
		contents add: (self parseElement: xmlElem)].
	
	^ doc! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 20:54:32'!
parseElement: anXMLElement

	|tag|
	
	(anXMLElement isKindOf: XMLStringNode) ifTrue:[
		^ EruditeDocString contents: anXMLElement string].
	
	tag := anXMLElement tag.
	
	^ (self parserFor: tag) 
		parse: anXMLElement
		using: [:elem | self parseElement: elem]! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 3/12/2025 19:02:00'!
parserAt: xmlTag

	^ self parsers 
			detect: [:parserClass | parserClass tag sameAs: xmlTag]
			ifNone: [self parserNotFound: 'No parser for element: ', xmlTag]! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 20:54:46'!
parserFor: tag

	^ self parserAt:tag! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 3/12/2025 19:03:04'!
parserNotFound: aString

	mode caseOf: {
		[ #strict ] -> [ self error: aString ].
		[ #lenient ] -> [ Transcript show: aString; cr]
	}! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:01:31'!
parsers

	^ self class parsers! !

!EruditeXMLParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:40:06'!
parse: aString

	^ self new parse: aString! !

!EruditeXMLParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:02:39'!
parsers

	^ EruditeXMLElementParser subclasses! !

!EruditeXMLDOMParser methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:41:33'!
startElement: elementName attributeList: attributeList
	| newElement |
	newElement := EruditeXMLElement named: elementName attributes: attributeList.
	self incremental
		ifFalse: [self stack isEmpty
			ifFalse: [self top addElement: newElement]].
	self push: newElement! !

!EruditeXMLDOMParser methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:41:38'!
startElement: localName namespaceURI: namespaceUri namespace: namespace attributeList: attributeList
	| newElement |
	
	newElement := EruditeXMLElement named: localName namespace: namespace uri: namespaceUri attributes: attributeList.
	self incremental
		ifFalse: [self stack isEmpty
			ifFalse: [self top addElement: newElement]].
	self push: newElement! !

!EruditeXMLElement methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:45:00'!
addContent: content

	super addContent: content.
	children addLast: content! !

!EruditeXMLElement methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:44:55'!
addElement: element

	super addElement: element.
	children addLast: element! !

!EruditeXMLElement methodsFor: 'as yet unclassified' stamp: 'MM 6/23/2024 18:52:04'!
attributeAt: aSymbol ifPresent: aBlock

	| value |
	
	value := self attributeAt: aSymbol.
	^ value ifNotNil: [aBlock value: value]! !

!EruditeXMLElement methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:40:25'!
children

	^ children! !

!EruditeXMLElement methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:40:39'!
childrenDo: aBlock

	self children do: aBlock! !

!EruditeXMLElement methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:40:15'!
initialize

	super initialize.
	
	children := OrderedCollection new.! !

!EruditeXMLElement class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:46:35'!
named: aString attributes: attributeList
	^ self new
		name: aString;
		setAttributes: attributeList.! !

!EruditeXMLElement class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:47:30'!
named: aString namespace: ns uri: uri attributes: attributeList
	^ self new
		name: aString;
		
			namespace: ns
			uri: uri;
		setAttributes: attributeList.! !

!EruditeXMLElement class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:48:41'!
new

	^ self basicNew initialize! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeXMLBook' stamp: 'MM 6/20/2024 18:47:28'!
visitParagraph: aParagraph

	aParagraph contents do: [:elem |
		elem accept: self].
	
	stream nextPut: Character newLineCharacter asString.
	stream nextPut: Character newLineCharacter asString.
	
	! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeXMLBook' stamp: 'MM 6/15/2024 19:36:32'!
visitString: aStringNode

	stream nextPut: (Text string: aStringNode contents)! !
