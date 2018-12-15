'From Cuis 5.0 of 7 November 2016 [latest update: #3525] on 15 December 2018 at 2:16:31 pm'!
'Description Please enter a description for this package'!
!provides: 'PetitParser-Binding' 1 0!
SystemOrganization addCategory: #'PetitParser-Binding'!


!classDefinition: #PPBoundParserResult category: #'PetitParser-Binding'!
Object subclass: #PPBoundParserResult
	instanceVariableNames: 'binding value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PetitParser-Binding'!
!classDefinition: 'PPBoundParserResult class' category: #'PetitParser-Binding'!
PPBoundParserResult class
	instanceVariableNames: ''!

!classDefinition: #PPBindParser category: #'PetitParser-Binding'!
PPDelegateParser subclass: #PPBindParser
	instanceVariableNames: 'binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PetitParser-Binding'!
!classDefinition: 'PPBindParser class' category: #'PetitParser-Binding'!
PPBindParser class
	instanceVariableNames: ''!

!classDefinition: #PPBoundActionParser category: #'PetitParser-Binding'!
PPActionParser subclass: #PPBoundActionParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PetitParser-Binding'!
!classDefinition: 'PPBoundActionParser class' category: #'PetitParser-Binding'!
PPBoundActionParser class
	instanceVariableNames: ''!


!PPBindParser commentStamp: '<historical>' prior: 0!
Bind a parser to a variable name (symbol).

The binding can be used via #withBindingsDo: message (~=>).

Example:

number _ #digit asParser plus flatten ==> [:x | x asNumber].

sum _ number bind, '+' asParser trim, number bind ~=> [:x :y | x + y].

sum parse: '22 + 434'.

!

!PPBoundParserResult methodsFor: 'accessing' stamp: 'MM 10/30/2018 18:58'!
binding

	^ binding
! !

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

!PPBindParser methodsFor: 'as yet unclassified' stamp: 'MM 10/30/2018 18:31'!
binding
	^ binding! !

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

!PPBindParser class methodsFor: 'as yet unclassified' stamp: 'MM 10/30/2018 18:30'!
on: aParser binding: aSymbol

	^ (self on: aParser) binding: aSymbol; yourself! !

!PPBoundActionParser methodsFor: 'as yet unclassified' stamp: 'MM 10/30/2018 18:59'!
parseOn: aStream
	| element |
	
	^ (element := parser parseOn: aStream) isPetitFailure
		ifFalse: [  |bound|
			bound _ element select: [:el | el isKindOf: PPBoundParserResult ].
			block valueWithArguments: (bound collect: [:b | b value])]
		ifTrue: [ element ]! !

!PPParser methodsFor: '*PetitParser-Binding' stamp: 'MM 10/30/2018 18:45'!
~=> aBlock
	^ self withBindingsDo: aBlock! !

!PPParser methodsFor: '*PetitParser-Binding' stamp: 'MM 10/30/2018 18:47'!
bind

	^ PPBindParser on: self! !

!PPParser methodsFor: '*PetitParser-Binding' stamp: 'MM 10/30/2018 18:47'!
bind: aSymbol

	^ PPBindParser on: self binding: aSymbol! !

!PPParser methodsFor: '*PetitParser-Binding' stamp: 'MM 10/30/2018 18:44'!
withBindingsDo: aBlock

	"Answer a new parser that performs aBlock on the bounded elements on success."

	^ PPBoundActionParser on: self block: aBlock
	! !
