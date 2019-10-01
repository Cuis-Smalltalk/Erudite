'From Cuis 5.0 of 7 November 2016 [latest update: #3665] on 16 March 2019 at 2:58:19 pm'!
'Description A package that provides the possibility to bind a parser to a variable name (symbol).

The binding can be used via #withBindingsDo: message (~=>).

Example:

number _ #digit asParser plus flatten ==> [:x | x asNumber].

sum _ number bind, ''+'' asParser trim, number bind ~=> [:x :y | x + y].'!
!provides: 'PetitParserBinding' 1 3!
!requires: 'PetitParser' 1 2 nil!
SystemOrganization addCategory: #PetitParserBinding!


!classDefinition: #PPBoundActionParser category: #PetitParserBinding!
PPActionParser subclass: #PPBoundActionParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PetitParserBinding'!
!classDefinition: 'PPBoundActionParser class' category: #PetitParserBinding!
PPBoundActionParser class
	instanceVariableNames: ''!

!classDefinition: #PPBindParser category: #PetitParserBinding!
PPDelegateParser subclass: #PPBindParser
	instanceVariableNames: 'binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PetitParserBinding'!
!classDefinition: 'PPBindParser class' category: #PetitParserBinding!
PPBindParser class
	instanceVariableNames: ''!

!classDefinition: #PPBoundParserResult category: #PetitParserBinding!
Object subclass: #PPBoundParserResult
	instanceVariableNames: 'binding value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PetitParserBinding'!
!classDefinition: 'PPBoundParserResult class' category: #PetitParserBinding!
PPBoundParserResult class
	instanceVariableNames: ''!


!PPBindParser commentStamp: '<historical>' prior: 0!
Bind a parser to a variable name (symbol).

The binding can be used via #withBindingsDo: message (~=>).

Example:

number _ #digit asParser plus flatten ==> [:x | x asNumber].

sum _ number bind, '+' asParser trim, number bind ~=> [:x :y | x + y].

sum parse: '22 + 434'.

!

!PPBindParser methodsFor: 'as yet unclassified' stamp: 'MM 10/30/2018 18:31'!
binding
	^ binding! !

!PPBoundParserResult methodsFor: 'accessing' stamp: 'MM 10/30/2018 18:58'!
binding

	^ binding
! !

!PPBoundActionParser methodsFor: 'as yet unclassified' stamp: 'MM 10/30/2018 18:59'!
parseOn: aStream
	| element |
	
	^ (element := parser parseOn: aStream) isPetitFailure
		ifFalse: [  |bound|
			bound _ element select: [:el | el isKindOf: PPBoundParserResult ].
			block valueWithArguments: (bound collect: [:b | b value])]
		ifTrue: [ element ]! !

!PPBindParser methodsFor: 'as yet unclassified' stamp: 'MM 10/30/2018 18:31'!
binding: aSymbol

	binding _ aSymbol! !

!PPBindParser methodsFor: 'as yet unclassified' stamp: 'MM 10/30/2018 19:48'!
parseOn: aStream

	|position element|
	
	position _ aStream position.
	element _ parser parseOn: aStream.
	element isPetitFailure ifTrue: [
		aStream position: position.
		^ element].
	
	^ PPBoundParserResult new 
			binding: binding;
			value: element;
			yourself! !

!PPBindParser class methodsFor: 'as yet unclassified' stamp: 'MM 3/16/2019 14:05:31'!
on: aParser binding: aSymbol

	^ (self on: aParser) binding: aSymbol; yourself! !

!PPBoundParserResult methodsFor: 'accessing' stamp: 'MM 10/30/2018 18:56'!
value

	^ value! !

!PPBoundParserResult methodsFor: 'accessing' stamp: 'MM 10/30/2018 18:56'!
value: anObject
	"Set the value of value"

	value _ anObject! !

!PPBoundParserResult methodsFor: 'as yet unclassified' stamp: 'MM 10/30/2018 18:58'!
binding: aSymbol
	binding _ aSymbol! !

!PPBoundParserResult class methodsFor: 'as yet unclassified' stamp: 'MM 10/30/2018 18:57'!
on: anObject
	^ self new value: anObject; yourself! !

!PPParser methodsFor: '*PetitParserBinding' stamp: 'MM 3/16/2019 14:57:37'!
~=> aBlock
	^ self withBindingsDo: aBlock! !

!PPParser methodsFor: '*PetitParserBinding' stamp: 'MM 3/16/2019 14:56:56'!
bind

	^ PPBindParser on: self! !

!PPParser methodsFor: '*PetitParserBinding' stamp: 'MM 3/16/2019 14:57:53'!
withBindingsDo: aBlock

	"Answer a new parser that performs aBlock on the bounded elements on success."

	^ PPBoundActionParser on: self block: aBlock! !
