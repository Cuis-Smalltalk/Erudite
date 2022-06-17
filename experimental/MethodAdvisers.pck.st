'From Cuis 6.0 [latest update: #5235] on 16 June 2022 at 10:09:17 pm'!
'Description '!
!provides: 'MethodAdvisers' 1 14!
SystemOrganization addCategory: 'MethodAdvisers-Tests'!
SystemOrganization addCategory: 'MethodAdvisers'!


!classDefinition: #MethodAdvisersTests category: 'MethodAdvisers-Tests'!
TestCase subclass: #MethodAdvisersTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MethodAdvisers-Tests'!
!classDefinition: 'MethodAdvisersTests class' category: 'MethodAdvisers-Tests'!
MethodAdvisersTests class
	instanceVariableNames: ''!

!classDefinition: #MethodAdviserSubject category: 'MethodAdvisers-Tests'!
Object subclass: #MethodAdviserSubject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MethodAdvisers-Tests'!
!classDefinition: 'MethodAdviserSubject class' category: 'MethodAdvisers-Tests'!
MethodAdviserSubject class
	instanceVariableNames: ''!

!classDefinition: #AdvisedMethod category: 'MethodAdvisers'!
Object subclass: #AdvisedMethod
	instanceVariableNames: 'before after around compiledMethod methodClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MethodAdvisers'!
!classDefinition: 'AdvisedMethod class' category: 'MethodAdvisers'!
AdvisedMethod class
	instanceVariableNames: ''!


!AdvisedMethod commentStamp: 'MM 6/16/2022 22:09:07' prior: 0!
I use the Objects as Method Wrappers facility provided by the VM to wrap compiled methods.
My entry point is my #run:with:in: method, which will be executed by the VM when I install myself in the target class's method dictionary.

Examples:

MethodAdviserSubject after: #test1 do: [Transcript show: 'After test1'].

MethodAdviserSubject new test1.

MethodAdviserSubject removeAllAdvice .

MethodAdviserSubject new test1.

MethodAdviserSubject after: #test1 do: [Transcript show: 'After test1'].
MethodAdviserSubject after: #test1 do: [Transcript show: 'After test1 again'].
MethodAdviserSubject new test1.

MethodAdviserSubject removeAllAdvice .

MethodAdviserSubject before: #test1 do: [Transcript show: 'Before test1'].
MethodAdviserSubject after: #test1 do: [Transcript show: 'After test1'].
MethodAdviserSubject new test1.

MethodAdviserSubject removeAllAdvice .
MethodAdviserSubject around: #test1 do: [:nextMethod |
	Transcript show: 'Start around'.
	nextMethod value.
	Transcript show: 'End around'.
	'wrapped test1'].
MethodAdviserSubject new test1!

!MethodAdviserSubject methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:13:04'!
test1
	Transcript show: 'test1'.
	^ 'test1'! !

!AdvisedMethod methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 20:33:32'!
afterDo: aBlock
	after addLast: aBlock! !

!AdvisedMethod methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 19:53:58'!
aroundDo: aBlock
	around add: aBlock! !

!AdvisedMethod methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 20:33:43'!
beforeDo: aBlock
	before addFirst: aBlock! !

!AdvisedMethod methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:06:51'!
doesNotUnderstand: aMessage
		
	^ aMessage sendTo: compiledMethod! !

!AdvisedMethod methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:19:43'!
evaluate: aroundList around: aBlock with: arguments

	^ aroundList isEmpty 
		ifTrue: [	aBlock value]
		ifFalse: [	|args|
			args _ arguments, {[self evaluate: aroundList allButFirst around: aBlock with: arguments]}.
			aroundList first valueWithArguments: args]! !

!AdvisedMethod methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 20:31:46'!
initialize: aClass selector: aSelector

	methodClass _ aClass.
	compiledMethod _ aClass compiledMethodAt: aSelector.
	after _ OrderedCollection new.
	before _ OrderedCollection new.
	around _ OrderedCollection new.! !

!AdvisedMethod methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 19:59:33'!
install
	
	methodClass
		addSelectorSilently: compiledMethod selector
		withMethod: self! !

!AdvisedMethod methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 20:51:55'!
run: aSelector with: arguments in: aReceiver 

	"Main entry point"
	
	| result |
	
	"Evaluate before blocks"
	
	before do: [:aBlock | aBlock valueWithArguments: arguments]. 
	
	result _ self evaluate: around 
				around: [	compiledMethod
							valueWithReceiver: aReceiver
							arguments: arguments]
				with: arguments.
	
	after do: [:aBlock | aBlock valueWithArguments: arguments].
	
	^ result! !

!AdvisedMethod methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 20:52:29'!
uninstall
	
	methodClass
		addSelectorSilently: compiledMethod selector
		withMethod: compiledMethod! !

!AdvisedMethod class methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 20:26:48'!
ensureOn: aClass selector: aSelector

	| compiledMethod |
	
	compiledMethod _ aClass compiledMethodAt: aSelector.
	compiledMethod class isCompiledMethodClass
		ifTrue: ["The compiled method is unwrapped"
			^ (self on: aClass selector: aSelector)
				install;
				yourself]
		ifFalse: ["We assume this is an AdvicedMethod"
			^ compiledMethod]! !

!AdvisedMethod class methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 19:52:21'!
on: aCompiledMethod

	self assert: aCompiledMethod class isCompiledMethodClass! !

!AdvisedMethod class methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 20:00:46'!
on: aClass selector: aSelector

	^ self new initialize: aClass selector: aSelector! !

!AdvisedMethod class methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 20:53:45'!
uninstallFrom: aClass selector: aSelector

	| compiledMethod |
	
	compiledMethod _ aClass compiledMethodAt: aSelector.
	compiledMethod class isCompiledMethodClass
		ifTrue: [self error: 'No AdvisedMethod installed.']
		ifFalse: [compiledMethod uninstall]! !

!Behavior methodsFor: '*MethodAdvisers' stamp: 'MM 6/16/2022 20:26:59'!
after: aSelector do: aBlock
	
	|methodAdviser|
	
	methodAdviser _ AdvisedMethod ensureOn: self selector: aSelector.
	
	methodAdviser afterDo: aBlock! !

!Behavior methodsFor: '*MethodAdvisers' stamp: 'MM 6/16/2022 20:34:12'!
around: aSelector do: aBlock
	
	|methodAdviser|
	
	methodAdviser _ AdvisedMethod ensureOn: self selector: aSelector.
	
	methodAdviser aroundDo: aBlock! !

!Behavior methodsFor: '*MethodAdvisers' stamp: 'MM 6/16/2022 20:34:03'!
before: aSelector do: aBlock
	
	|methodAdviser|
	
	methodAdviser _ AdvisedMethod ensureOn: self selector: aSelector.
	
	methodAdviser beforeDo: aBlock! !

!Behavior methodsFor: '*MethodAdvisers' stamp: 'MM 6/16/2022 21:23:20'!
removeAdviceFrom: aSelector
	
	| compiledMethod |
	
	compiledMethod _ self compiledMethodAt: aSelector.
	(compiledMethod isKindOf: AdvisedMethod) 
		ifTrue: [compiledMethod uninstall]! !

!Behavior methodsFor: '*MethodAdvisers' stamp: 'MM 6/16/2022 21:04:48'!
removeAllAdvice

	methodDict values do: [:compiledMethod |
		compiledMethod class isCompiledMethodClass ifFalse: [
			(compiledMethod isKindOf: AdvisedMethod) ifTrue: [
				compiledMethod uninstall]]]! !
