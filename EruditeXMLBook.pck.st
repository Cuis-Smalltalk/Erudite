'From Cuis7.1 [latest update: #6469] on 15 June 2024 at 7:55:20 pm'!
'Description '!
!provides: 'EruditeXMLBook' 1 7!
!requires: 'Erudite' 1 252 nil!
!requires: 'YAXO' 1 27 nil!
SystemOrganization addCategory: #EruditeXMLBook!


!classDefinition: #XMLEruditeBook category: #EruditeXMLBook!
EruditeBook subclass: #XMLEruditeBook
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBook'!
!classDefinition: 'XMLEruditeBook class' category: #EruditeXMLBook!
XMLEruditeBook class
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
	instanceVariableNames: 'stream'
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


!XMLEruditeBook commentStamp: '<historical>' prior: 0!
|xml doc|

xml  '<h1>Title</h1>
<p>Hello world</p>
<p>
<ul><li>Hello</li>
<li>World</li></ul>
</p>'.

doc  EruditeXMLParser parse: xml.
(MorphicEruditeDocRenderer on: doc) render edit.!

!XMLEruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 15:59:28'!
parser

	^ EruditeXMLParser new! !

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

!EruditeXMLElementParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:52:09'!
parse: anXMLElement using: aParser

	^ self subclassResponsibility ! !

!EruditeXMLElementParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:42:20'!
tag

	^ self subclassResponsibility ! !

!EruditeXMLH1Parser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 19:46:28'!
parse: anXMLElement using: aParser

	^ EruditeDocHeading 
		heading: anXMLElement contents first string
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

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 15:43:59'!
initialize: aStream

	stream := aStream.! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 15:56:05'!
parse

	^ EruditeDocument new
		parser: self;
		yourself! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:54:37'!
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

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 19:28:55'!
parseElement: anXMLElement

	|tag|
	
	(anXMLElement isKindOf: XMLStringNode) ifTrue:[
		^ EruditeDocString contents: anXMLElement string].
	
	tag := anXMLElement tag.
	
	^ (self parserAt: tag) 
		parse: anXMLElement
		using: [:elem | self parseElement: elem]! !

!EruditeXMLParser methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:05:13'!
parserAt: xmlTag

	^ self parsers 
			detect: [:parserClass | parserClass tag sameAs: xmlTag]
			ifNone: [self error: 'No parser for element: ', xmlTag]! !

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

!MorphicEruditeDocRenderer methodsFor: '*EruditeXMLBook' stamp: 'MM 6/15/2024 19:51:03'!
visitParagraph: aParagraph

	stream nextPut: Character cr asString.
	stream nextPut: Character cr asString.
	
	aParagraph contents do: [:elem |
		elem accept: self].
	
	! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeXMLBook' stamp: 'MM 6/15/2024 19:36:32'!
visitString: aStringNode

	stream nextPut: (Text string: aStringNode contents)! !
