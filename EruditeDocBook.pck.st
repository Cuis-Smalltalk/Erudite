'From Cuis7.3 [latest update: #7070] on 17 March 2025 at 11:32:08 am'!
'Description DocBook support for Erudite.

DocBook validation: https://wiki.archlinux.org/title/DocBook
DocBook guide: https://tdg.docbook.org/tdg/5.2/'!
!provides: 'EruditeDocBook' 1 31!
!requires: 'Erudite' 1 270 nil!
!requires: 'EruditeXMLBook' 1 14 nil!
!requires: 'YAXO' 1 27 nil!
SystemOrganization addCategory: #'EruditeDocBook-Books'!
SystemOrganization addCategory: #EruditeDocBook!


!classDefinition: #DocBookEruditeBook category: #EruditeDocBook!
EruditeBook subclass: #DocBookEruditeBook
	instanceVariableNames: 'file mediaDir imageDir inferLiterals'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'DocBookEruditeBook class' category: #EruditeDocBook!
DocBookEruditeBook class
	instanceVariableNames: ''!

!classDefinition: #DocBookTheDefinitiveGuideBook category: #EruditeDocBook!
DocBookEruditeBook subclass: #DocBookTheDefinitiveGuideBook
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'DocBookTheDefinitiveGuideBook class' category: #EruditeDocBook!
DocBookTheDefinitiveGuideBook class
	instanceVariableNames: ''!

!classDefinition: #TheCuisBook category: #'EruditeDocBook-Books'!
DocBookEruditeBook subclass: #TheCuisBook
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook-Books'!
!classDefinition: 'TheCuisBook class' category: #'EruditeDocBook-Books'!
TheCuisBook class
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
	instanceVariableNames: 'stream sectionLevel book inferLiterals'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'EruditeDocBookParser class' category: #EruditeDocBook!
EruditeDocBookParser class
	instanceVariableNames: ''!

!classDefinition: #DocBookSmalltalkStyler category: #EruditeDocBook!
SHTextStylerST80 subclass: #DocBookSmalltalkStyler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'DocBookSmalltalkStyler class' category: #EruditeDocBook!
DocBookSmalltalkStyler class
	instanceVariableNames: ''!


!DocBookEruditeBook commentStamp: 'MM 6/18/2024 21:15:44' prior: 0!
(DocBookEruditeBook titled: 'My book') edit!

!DocBookEruditeBookStorer commentStamp: 'MM 6/20/2024 13:56:45' prior: 0!
| bookFile |

bookFile  (CodePackage installedPackages at: 'EruditeDocBook') fullFileName asFileEntry parent // 'DocBook/defguide5/src/guide.xml'.

DocBookEruditeBook new
	file: bookFile;
	load;
	open.
	
---------------

| bookFile |

bookFile _  (CodePackage installedPackages at: 'EruditeDocBook') fullFileName asFileEntry parent // 'DocBook/TheCuisBook/book.xml'.
DocBookEruditeBook new
	file: bookFile;
	load;
	open.

!

!EruditeDocBookParser commentStamp: 'MM 3/17/2025 11:09:51' prior: 0!
Instance variables:
- inferLiterals <Boolean>: When enabled, <literal> elements are tried to be inferred. If they contain a reference to a Smalltalk class or selector. It is disabled by default.
                                           Syntax is: Capitalized names parsed as references to classes, #selectors, and Class>>method:!

!DocBookEruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 6/20/2024 22:03:44'!
baseDir

	^ file parent! !

!DocBookEruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 3/17/2025 09:56:36'!
inferLiterals

	^ inferLiterals! !

!DocBookEruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 3/17/2025 09:56:50'!
inferLiterals: aBoolean

	inferLiterals := aBoolean! !

!DocBookEruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 3/17/2025 09:57:10'!
initialize
	super initialize.
	inferLiterals := false! !

!DocBookEruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 6/20/2024 16:08:52'!
load

	^ self reload! !

!DocBookEruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 6/24/2024 15:26:18'!
parser

	^ EruditeDocBookParser new
		book: self;
		inferLiterals: self inferLiterals;
		yourself! !

!DocBookEruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 6/20/2024 16:09:37'!
sections

	"lazily load the book when trying to access its sections"
	sections ifEmpty:[self load].
	^ super sections! !

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

!DocBookEruditeBook methodsFor: 'accessing' stamp: 'MM 6/20/2024 22:04:16'!
imageDir
	"Answer the value of imageDir"

	^ imageDir ifNil: [self mediaDir]! !

!DocBookEruditeBook methodsFor: 'accessing' stamp: 'MM 6/20/2024 22:03:57'!
imageDir: anObject
	"Set the value of imageDir"

	imageDir := anObject! !

!DocBookEruditeBook methodsFor: 'accessing' stamp: 'MM 6/20/2024 22:04:31'!
mediaDir
	"Answer the value of mediaDir"

	^ mediaDir ifNil: [self baseDir]! !

!DocBookEruditeBook methodsFor: 'accessing' stamp: 'MM 6/20/2024 22:03:57'!
mediaDir: anObject
	"Set the value of mediaDir"

	mediaDir := anObject! !

!DocBookTheDefinitiveGuideBook methodsFor: 'as yet unclassified' stamp: 'MM 6/20/2024 16:11:43'!
initialize

	super initialize.
	
	self title: 'DocBook 5.2: The Definitive Guide'.
	self file: ((CodePackage installedPackages at: 'EruditeDocBook') fullFileName asFileEntry parent // 'DocBook/defguide5/src/guide.xml').
	! !

!TheCuisBook methodsFor: 'as yet unclassified' stamp: 'MM 6/24/2024 15:26:36'!
inferLiterals

	^ true! !

!TheCuisBook methodsFor: 'as yet unclassified' stamp: 'MM 6/24/2024 15:25:53'!
initialize

	| baseDir |
	
	super initialize.
	
	self title: 'The Cuis Book'.
	baseDir := (CodePackage installedPackages at: 'EruditeDocBook') fullFileName asFileEntry parent.
	self file:  (baseDir // 'DocBook/TheCuisBook/book.xml').
	self imageDir: (baseDir / 'DocBook/TheCuisBook/img')
	! !

!DocBookEruditeBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 3/17/2025 11:25:06'!
load

	| xml loadedBook |
	
	"Only the format of one file per chapter is supported for now..."
	
	loadedBook := book class new
					file: book file;
					yourself.
	book file ifNil: [^loadedBook].
	xml := XMLDOMParser parseDocumentFrom: book file readStream.
	xml tagsNamed: #title do: [:elem | loadedBook title: elem contentString].
	"Each include is expected to have a chapter."
	xml tagsNamed: #xi:include do: [:elem | | chapterFilePath chapterXML chapterTitle |
		chapterFilePath := book file parent // (elem attributeAt: #href).
		chapterXML := XMLDOMParser parseDocumentFrom: chapterFilePath readStream.
		chapterTitle := chapterXML firstTagNamed: #title.
		chapterTitle ifNotNil: [
			loadedBook addSection: chapterTitle contentString contents: chapterFilePath textContents]].
	
	^ loadedBook
	! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/20/2024 22:16:11'!
addContent: aDocNode

	doc contents add: aDocNode.
	
	^ aDocNode! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/20/2024 22:54:48'!
book: aBook

	book := aBook! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/24/2024 15:11:39'!
inferLiterals: aBoolean

	inferLiterals  := aBoolean
	! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/24/2024 15:11:48'!
initialize

	super initialize.
	sectionLevel := 1.
	inferLiterals := false.! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 21:18:10'!
initialize: aStream

	stream := aStream
	! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 20:58:46'!
parse

	^ EruditeDocument new
		parser: self;
		yourself! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/20/2024 22:25:52'!
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
			self assert: (parsedElem isKindOf: EruditeDocNode).
			contents add: parsedElem]].
	
	^ doc! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/20/2024 22:42:33'!
parseChildrenOf: anXMLElement

	| node |
	
	node := EruditeCompositeDocNode new.
	
	anXMLElement childrenDo: [:xmlElem | 
		(self parseElement: xmlElem) ifNotNil: [:docNode |
			self assert: (docNode isKindOf: EruditeDocNode).
			node children add: docNode]].
	
	^ node! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/21/2024 08:42:12'!
parseElement: anXMLElement
	
	(anXMLElement isKindOf: XMLStringNode) ifTrue:[
		^ EruditeDocString contents: anXMLElement string withBlanksCondensed ].
	
	(anXMLElement isKindOf: XMLElement)
		ifFalse: [^EruditeDocString contents: ''].
	
	^ (self parserFor: anXMLElement tag) 
		ifNotNil: [:selector |
			self perform: selector with: anXMLElement]
		ifNil: [
			"We didn't find a parser for the element, so parse the element children 'blindly'"
			self parseChildrenOf: anXMLElement ]! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/24/2024 13:49:57'!
parserFor: xmlTag
	| parserSelector |
	parserSelector := ('parse' , xmlTag capitalized , ':') asSymbol.
	^ (self respondsTo: parserSelector)
		ifTrue: [ parserSelector ]
		ifFalse:
			[Transcript
				show: '[EruditeDocBookParser] - No parser for: ' , xmlTag;
				cr.
			nil ].! !

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

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 19:01:36'!
parseAnchor: anXMLElement

	"do nothing"
	
	^ nil! !

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

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 19:05:25'!
parseCommand: anXMLElement

	^ EruditeStyledText 
		text: (String streamContents: [:s |
				s space;
					nextPutAll: anXMLElement contentString;
					space])
		style: TextColor blue! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/22/2024 12:21:18'!
parseEmphasis: anXMLElement

	|style|
	
	style := TextEmphasis italic.
	
	(anXMLElement attributeAt: #role) = 'bold' ifTrue: [
		style := TextEmphasis bold].
	
	(anXMLElement attributeAt: #role) = 'strong' ifTrue: [
		style := TextEmphasis bold].

	^ EruditeStyledText 
		text: (String streamContents: [:s |
				s space;
					nextPutAll: anXMLElement contentString;
					space])
		style: style! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 23:18:58'!
parseImagedata: anXMLElement

	| imagePath |
	
	imagePath := 	book imageDir // (anXMLElement attributeAt: #fileref).
	
	imagePath exists 
		ifFalse: [
			Transcript show: '[EruditeDocBookParser] - fileref does not exist: ', imagePath asString; cr].
	
	^ EruditeDocLink target: imagePath asString
						type: #image
						label: imagePath asString! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 22:43:48'!
parseImageobject: anXMLElement

	^ self parseChildrenOf: anXMLElement! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 12:01:21'!
parseIndexterm: anXMLElement

	"TODO
	Do nothing for now"
	
	^ nil! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/21/2024 08:51:50'!
parseInfo: anXMLElement

	"render nothing.
	<info> elements contain metadata.
	See: https://tdg.docbook.org/tdg/5.2/info"
	
	^ self parseChildrenOf: anXMLElement! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 22:36:41'!
parseInlinemediaobject: anXMLElement

	^ self parseChildrenOf: anXMLElement! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/22/2024 20:39:07'!
parseItemizedlist: anXMLElement

	| list composite |
	
	"We use a composite because the list can contain nodes other than list items."
	
	list := EruditeDocList new.
	composite := EruditeCompositeDocNode new.
	
	anXMLElement childrenDo: [:xmlElem | 
		(self parseElement: xmlElem) ifNotNil: [:docNode |
			(docNode isKindOf: EruditeDocListItem) 
				ifTrue: [	list items add: docNode]
				ifFalse: [composite children add: docNode]]].
			
	^ composite children 
		ifEmpty: [list]
		ifNotEmpty: [composite children addFirst: list. composite]! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/24/2024 14:06:54'!
parseLink: anXMLElement
	
	| label type target |
	
	label := String streamContents: 				[ :s | 	
				s space;
					nextPutAll: anXMLElement contentString;
					space ].
	type := (anXMLElement attributeAt: #erudite:type			)
			ifNotNil: [:val | val asSymbol]
			ifNil: [(anXMLElement attributeAt: #xlink:href) 
					ifNotNil: [#url]].
	target := (anXMLElement attributeAt: #xlink:href)
				ifNotNil: [:val | val]
				ifNil: [anXMLElement contentString].
	
	^ type 
		ifNotNil: [EruditeDocLink 			target: target type: type label: label]
		ifNil: (EruditeStyledText
				text: label
				styles:
					(Array
						with: TextColor blue
						with: TextEmphasis underlined))! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/22/2024 12:30:30'!
parseListitem: anXMLElement

	| node |
	
	node := EruditeDocListItem new.
	
	anXMLElement childrenDo: [:xmlElem | 
		(self parseElement: xmlElem) ifNotNil: [:docNode |
			self assert: (docNode isKindOf: EruditeDocNode ).
			node contents add: docNode]].
	
	^ node! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 3/17/2025 11:20:51'!
parseLiteral: anXMLElement

	| text target type |
	
	target := anXMLElement contentString.
	
	inferLiterals ifTrue: [
		(target allSatisfy: [:char | char isSeparator not]) "no blanks"
			ifTrue: [
				(target includesSubString: '>>') ifTrue: [ "infer as method"
					type := #method].
				target first = $# ifTrue: [ "infer as selector"
					type := #selector].
				type ifNil: [(target first isUppercase and: [
							Smalltalk includesKey: target asSymbol])
								ifTrue: [ "infer as class reference"
									type := #class]]]].
	
	text := String streamContents: [:s |
					s space;
				   	nextPutAll: anXMLElement contentString;
				   	space].

	^ (anXMLElement attributeAt: 'erudite:type')
		ifNotNil: [:declaredType | 	EruditeDocLink target: target type: declaredType asSymbol label: text]
		ifNil: [
			type ifNotNil: [EruditeDocLink target: target type: type label: text]
				ifNil: [ EruditeStyledText text: text style: TextColor blue]]! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/21/2024 08:34:25'!
parseMediaobject: anXMLElement

	^ EruditeParagraphNode contents: (Array with: (self parseChildrenOf: anXMLElement))! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 3/12/2025 18:50:10'!
parseOrderedlist: anXMLElement

    | node |
    
    node := EruditeDocList new.
    node listType: #ordered. 

    anXMLElement childrenDo: [:xmlElem |
        (self parseElement: xmlElem) ifNotNil: [:docNode |
            self assert: (docNode isKindOf: EruditeDocListItem ).
            node items add: docNode]].
    
    ^ node! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/19/2024 08:34:42'!
parsePara: anXMLElement

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 22:38:52'!
parsePhrase: anXMLElement

	^ self parseChildrenOf: anXMLElement! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/19/2024 09:43:22'!
parsePreface: anXMLElement

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/23/2024 19:03:07'!
parseProgramlisting: anXMLElement

	^ EruditeParagraphNode 
	      contents: (Array with: ((EruditeDocCode code: anXMLElement contentString)
								sourceLanguage: (anXMLElement attributeAt: #language);
								evaluate: false;
								yourself))
	
! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/21/2024 08:54:54'!
parsePubdate: anXMLElement

	^ nil! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/21/2024 08:55:01'!
parseReleaseinfo: anXMLElement

	^ nil! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/23/2024 22:02:39'!
parseScreen: anXMLElement

	| action |
	
	action := (anXMLElement attributeAt: #erudite:action) ifNotNil: [:value |
				{#action ->  value} asDictionary].

	^ EruditeParagraphNode 
	      contents: (Array with: ((EruditeDocCode code: anXMLElement contentString)
								sourceLanguage: (anXMLElement attributeAt: #language);
								action: action;
								evaluate: false;
								yourself))
	
! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 14:02:23'!
parseSect1: anXMLElement
	
	^ self parseSection: anXMLElement level: 1! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 14:02:29'!
parseSect2: anXMLElement
	
	^ self parseSection: anXMLElement level: 2! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 14:02:34'!
parseSect3: anXMLElement
	
	^ self parseSection: anXMLElement level: 3! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 14:02:39'!
parseSect4: anXMLElement
	
	^ self parseSection: anXMLElement level: 4! !

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

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 14:02:07'!
parseSection: anXMLElement level: level

	| paragraph |
	
	self sectionLevel: level.
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	self sectionLevel: level.
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 18:48:49'!
parseTitle: anXMLElement

	^ EruditeDocHeading 
		heading: (String streamContents: [:s |
			           s nextPutAll: anXMLElement contents first string;
					newLine; newLine ])
		level: self sectionLevel ! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/24/2024 14:09:57'!
parseUlink: anXMLElement
	
	| label target |
	
	label := String streamContents: 				[ :s | 	
				s space;
					nextPutAll: anXMLElement contentString;
					space ].
	target := anXMLElement attributeAt: #url.
	
	^ EruditeDocLink 			target: target type: #url label: label! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/20/2024 19:07:30'!
parseUserinput: anXMLElement

	^ EruditeStyledText 
		text: (String streamContents: [:s |
				s space;
					nextPutAll: anXMLElement contentString;
					space])
		styles: (Array with: TextColor black 
					with: (TextBackgroundColor color: Color lightGray)) ! !

!EruditeDocBookParser methodsFor: 'parsers' stamp: 'MM 6/22/2024 15:29:36'!
parseVariablelist: anXMLElement

	| node |
	
	node := EruditeDocList new.
	
	anXMLElement tagsNamed: #varlistentry do: [:entry | 
		| listitem |
		
		listitem := self parseElement: (entry firstTagNamed: #listitem).
		entry tagsNamed: #term do: [:term | 
			listitem contents addFirst: 
				(EruditeStyledText 
					text: term contentString
					styles: (Array with: (TextBackgroundColor color: Color veryLightGray )
										 with: TextColor white))].
		node items add: listitem].			
	
	^ node! !

!EruditeDocBookParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 20:58:46'!
parse: aString

	^ self new parse: aString! !

!DocBookSmalltalkStyler class methodsFor: 'as yet unclassified' stamp: 'MM 6/23/2024 18:41:15'!
defaultStyleTable

	"TODO: customize style table"

	^ super defaultStyleTable ! !
