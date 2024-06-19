'From Cuis7.1 [latest update: #6469] on 19 June 2024 at 8:38:30 am'!
'Description '!
!provides: 'EruditeDocBook' 1 1!
SystemOrganization addCategory: #EruditeDocBook!


!classDefinition: #DocBookEruditeBook category: #EruditeDocBook!
EruditeBook subclass: #DocBookEruditeBook
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'DocBookEruditeBook class' category: #EruditeDocBook!
DocBookEruditeBook class
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

!DocBookEruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 21:05:58'!
parser

	^ EruditeDocBookParser new! !

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

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/19/2024 08:34:06'!
parseElement: anXMLElement

	|tag|
	
	(anXMLElement isKindOf: XMLStringNode) ifTrue:[
		^ EruditeDocString contents: anXMLElement string].
	
	tag := anXMLElement tag.
	
	^ (self parserFor: tag) ifNotNil: [:selector |
		self perform: selector with: anXMLElement]! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/19/2024 08:34:42'!
parsePara: anXMLElement

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/19/2024 08:35:29'!
parseSection: anXMLElement

	| paragraph |
	
	self sectionLevel: self sectionLevel + 1.
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		(self parseElement: xmlElem) ifNotNil: [:parsedElem |
			paragraph contents add: parsedElem]].
	
	^ paragraph! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 6/19/2024 08:38:03'!
parseTitle: anXMLElement

	^ EruditeDocHeading 
		heading: (String streamContents: [:s |
			           s nextPutAll: anXMLElement contents first string;
					nextPut: Character newLineCharacter ])
		level: self sectionLevel ! !

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

!EruditeDocBookParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 20:58:46'!
parse: aString

	^ self new parse: aString! !
