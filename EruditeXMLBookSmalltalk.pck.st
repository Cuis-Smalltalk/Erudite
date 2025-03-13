'From Cuis7.3 [latest update: #7066] on 13 March 2025 at 7:25:38 pm'!
'Description '!
!provides: 'EruditeXMLBookSmalltalk' 1 1!
!requires: 'EruditeXMLBook' 1 21 nil!
SystemOrganization addCategory: #EruditeXMLBookSmalltalk!


!classDefinition: #EruditeXMLClassParser category: #EruditeXMLBookSmalltalk!
EruditeXMLElementParser subclass: #EruditeXMLClassParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBookSmalltalk'!
!classDefinition: 'EruditeXMLClassParser class' category: #EruditeXMLBookSmalltalk!
EruditeXMLClassParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLDoItParser category: #EruditeXMLBookSmalltalk!
EruditeXMLElementParser subclass: #EruditeXMLDoItParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBookSmalltalk'!
!classDefinition: 'EruditeXMLDoItParser class' category: #EruditeXMLBookSmalltalk!
EruditeXMLDoItParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeXMLSmalltalkCodeParser category: #EruditeXMLBookSmalltalk!
EruditeXMLElementParser subclass: #EruditeXMLSmalltalkCodeParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBookSmalltalk'!
!classDefinition: 'EruditeXMLSmalltalkCodeParser class' category: #EruditeXMLBookSmalltalk!
EruditeXMLSmalltalkCodeParser class
	instanceVariableNames: ''!


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

!EruditeXMLSmalltalkCodeParser class methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 19:25:29'!
parse: anXMLElement using: aParser

	|code|
	
	code := anXMLElement contents first string.
	^ EruditeDocCode code: code! !

!EruditeXMLSmalltalkCodeParser class methodsFor: 'as yet unclassified' stamp: 'MM 3/13/2025 19:25:17'!
tag
	^ 'smalltalk'! !
