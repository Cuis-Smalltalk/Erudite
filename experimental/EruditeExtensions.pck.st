'From Cuis 6.0 [latest update: #5235] on 17 June 2022 at 9:17:13 am'!
'Description '!
!provides: 'EruditeExtensions' 1 7!
!requires: 'Erudite' 1 190 nil!
!requires: 'OSProcess' 1 23 nil!
!requires: 'MethodAdvisers' 1 15 nil!
!requires: 'Cryptography-DigitalSignatures' 1 14 nil!
!requires: 'Graphics-Files-Additional' 1 24 nil!
SystemOrganization addCategory: 'EruditeExtensions'!


!classDefinition: #EruditeUMLNode category: 'EruditeExtensions'!
DocNode subclass: #EruditeUMLNode
	instanceVariableNames: 'script'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeExtensions'!
!classDefinition: 'EruditeUMLNode class' category: 'EruditeExtensions'!
EruditeUMLNode class
	instanceVariableNames: ''!

!classDefinition: #EruditeExtension category: 'EruditeExtensions'!
Object subclass: #EruditeExtension
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeExtensions'!
!classDefinition: 'EruditeExtension class' category: 'EruditeExtensions'!
EruditeExtension class
	instanceVariableNames: ''!

!classDefinition: #UMLEruditeExtension category: 'EruditeExtensions'!
EruditeExtension subclass: #UMLEruditeExtension
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeExtensions'!
!classDefinition: 'UMLEruditeExtension class' category: 'EruditeExtensions'!
UMLEruditeExtension class
	instanceVariableNames: ''!


!EruditeUMLNode methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 22:01:45'!
accept: aVisitor

	^ aVisitor visitUML: self! !

!EruditeUMLNode methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:46:26'!
data

	|pngPath|
	pngPath := '/tmp/erudite-uml-', self dataKey, '.png'.

	pngPath asFileEntry exists ifFalse: [
			| inputPath cmdStatus |
			
			inputPath := '/tmp/erudite-uml-', self dataKey, '.plantuml'.

			inputPath asFileEntry fileContents: script.

			cmdStatus _ OSProcess waitForCommand:				'plantuml ', inputPath.
			cmdStatus succeeded ifFalse: [		self error: 'Error running PlantUML command']].
	^ EruditeForm fromFileNamed: pngPath! !

!EruditeUMLNode methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:44:20'!
dataKey

	^ (((SecureHashAlgorithm new)
			initialize;
			hashMessage: script)
				printStringBase: 16) asLowercase! !

!EruditeUMLNode methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:43:45'!
initialize: plantUMLScript

	script _ plantUMLScript! !

!EruditeUMLNode class methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:43:27'!
with: plantUMLScript

	^ self new initialize: plantUMLScript! !

!UMLEruditeExtension methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:37:37'!
install

	self installGrammarExtension.! !

!UMLEruditeExtension methodsFor: 'as yet unclassified' stamp: 'MM 6/17/2022 09:16:52'!
installGrammarExtension

	EruditeMarkupGrammar around: #markup
		do: [:receiver :nextMethod |			nextMethod value / self umlParser]! !

!UMLEruditeExtension methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:40:41'!
umlGrammar

	^ ('@startuml' asParser flatten,
	'@enduml' asParser negate plus flatten,
	'@enduml' asParser flatten) flatten! !

!UMLEruditeExtension methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:52:51'!
umlParser

	^ self umlGrammar ==> [:script | 		EruditeUMLNode with: script]! !

!UMLEruditeExtension class methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 21:37:24'!
initialize

	self new install! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions' stamp: 'MM 6/16/2022 22:07:20'!
visitUML: anUMLNode

	|form imageMorph |
	
	form _ [document getNodeData: anUMLNode]
				on: Error
				do: [:e | ^ stream nextPut: e printString].
	
	imageMorph _ ImageMorph new
					image: form.
							
	stream nextPut: (Text streamContents: [:s | imageMorph printOn: s])! !
UMLEruditeExtension initialize!
