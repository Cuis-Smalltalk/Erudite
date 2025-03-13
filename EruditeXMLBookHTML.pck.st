'From Cuis7.3 [latest update: #7066] on 13 March 2025 at 7:19:50 pm'!
'Description '!
!provides: 'EruditeXMLBookHTML' 1 0!
!requires: 'EruditeXMLBook' 1 20 nil!
SystemOrganization addCategory: #EruditeXMLBookHTML!


!classDefinition: #EruditeXMLHTMLHeading1Parser category: #EruditeXMLBookHTML!
EruditeXMLElementParser subclass: #EruditeXMLHTMLHeading1Parser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBookHTML'!
!classDefinition: 'EruditeXMLHTMLHeading1Parser class' category: #EruditeXMLBookHTML!
EruditeXMLHTMLHeading1Parser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLHTMLListItemParser category: #EruditeXMLBookHTML!
EruditeXMLElementParser subclass: #EruditeXMLHTMLListItemParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBookHTML'!
!classDefinition: 'EruditeXMLHTMLListItemParser class' category: #EruditeXMLBookHTML!
EruditeXMLHTMLListItemParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLHTMLParagraphParser category: #EruditeXMLBookHTML!
EruditeXMLElementParser subclass: #EruditeXMLHTMLParagraphParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBookHTML'!
!classDefinition: 'EruditeXMLHTMLParagraphParser class' category: #EruditeXMLBookHTML!
EruditeXMLHTMLParagraphParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLHTMLUnorderedListParser category: #EruditeXMLBookHTML!
EruditeXMLElementParser subclass: #EruditeXMLHTMLUnorderedListParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBookHTML'!
!classDefinition: 'EruditeXMLHTMLUnorderedListParser class' category: #EruditeXMLBookHTML!
EruditeXMLHTMLUnorderedListParser class
	instanceVariableNames: ''!


!EruditeXMLHTMLHeading1Parser class methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2024 00:39:02'!
parse: anXMLElement using: aParser

	^ EruditeDocHeading 
		heading: (String streamContents: [:s |
			           s nextPutAll: anXMLElement contents first string;
					nextPut: Character newLineCharacter ])
		level: 1! !

!EruditeXMLHTMLHeading1Parser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:42:04'!
tag

	^ 'h1'! !

!EruditeXMLHTMLListItemParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 18:04:20'!
parse: anXMLElement using: aParser

	| li |
	
	li := EruditeDocListItem new.
	
	anXMLElement childrenDo: [:xmlElem |
		li contents add: (aParser value: xmlElem)].
	
	^ li! !

!EruditeXMLHTMLListItemParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 18:03:15'!
tag

	^ 'li'! !

!EruditeXMLHTMLParagraphParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 18:02:24'!
parse: anXMLElement using: aParser

	| paragraph |
	
	paragraph := EruditeParagraphNode new.
	
	anXMLElement childrenDo: [:xmlElem |
		paragraph contents add: (aParser value: xmlElem)].
	
	^ paragraph! !

!EruditeXMLHTMLParagraphParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 16:46:51'!
tag

	^ 'p'! !

!EruditeXMLHTMLUnorderedListParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 18:02:16'!
parse: anXMLElement using: aParser

	| list |
	
	list := EruditeDocList new.
	
	anXMLElement childrenDo: [:xmlElem | |listItem|
		listItem := aParser value: xmlElem.
		self assert: [listItem isKindOf: EruditeDocListItem] description: 'Should be a list item'		.
		list items add: listItem].
	
	^ list! !

!EruditeXMLHTMLUnorderedListParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 17:56:30'!
tag
	^ 'ul'! !
