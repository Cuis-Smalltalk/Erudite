'From Cuis 6.0 [latest update: #5234] on 12 June 2022 at 10:18:54 am'!
'Description '!
!provides: 'EruditeMath' 1 1!
!requires: 'Erudite' 1 178 nil!
!requires: 'Cryptography-DigitalSignatures' 1 14 nil!
!requires: 'OSProcess' 1 23 nil!
SystemOrganization addCategory: 'EruditeMath'!


!classDefinition: #EruditeMathMarkupGrammar category: 'EruditeMath'!
EruditeMarkupParser subclass: #EruditeMathMarkupGrammar
	instanceVariableNames: 'plot math'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeMath'!
!classDefinition: 'EruditeMathMarkupGrammar class' category: 'EruditeMath'!
EruditeMathMarkupGrammar class
	instanceVariableNames: ''!

!classDefinition: #EruditeMathMarkupParser category: 'EruditeMath'!
EruditeMathMarkupGrammar subclass: #EruditeMathMarkupParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeMath'!
!classDefinition: 'EruditeMathMarkupParser class' category: 'EruditeMath'!
EruditeMathMarkupParser class
	instanceVariableNames: ''!

!classDefinition: #MyMathBook category: 'EruditeMath'!
EruditeBook subclass: #MyMathBook
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeMath'!
!classDefinition: 'MyMathBook class' category: 'EruditeMath'!
MyMathBook class
	instanceVariableNames: ''!

!classDefinition: #DocMath category: 'EruditeMath'!
DocNode subclass: #DocMath
	instanceVariableNames: 'formula'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeMath'!
!classDefinition: 'DocMath class' category: 'EruditeMath'!
DocMath class
	instanceVariableNames: ''!


!EruditeMathMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 6/12/2022 10:10:47'!
markup
	^ super markup / plot / math! !

!EruditeMathMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 6/12/2022 10:10:57'!
math

	^ ($$ asParser min: 1 max: 1) flatten,
	   ($$ asParser min: 1 max: 1) negate plus flatten,
	   ($$ asParser min: 1 max: 1) flatten! !

!EruditeMathMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 6/11/2022 19:13:00'!
plot

	^ '<plot>' asParser flatten,
		'</plot>' asParser negate plus flatten,
		'</plot>' asParser flatten! !

!EruditeMathMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 6/12/2022 10:11:41'!
math

	^ super math ==> [:res |
		(DocMath new)
			formula: res second;
			yourself]! !

!EruditeMathMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 6/11/2022 19:46:35'!
plot
	^ super plot ==> [:res |
		| script plotId pngPath |
		script := res second.
		plotId := (((SecureHashAlgorithm new)
			initialize;
			hashMessage: script)
				printStringBase: 16) asLowercase.
		pngPath := '/tmp/erudite-plot-', plotId, '.png'.

		pngPath asFileEntry exists ifFalse: [
			| gpPath gpScript proc |
			gpScript := 'set term png', String lf,
				'set output "', pngPath, '"', String lf,
				script.
			gpPath := pngPath, '.gp'.

			gpPath asFileEntry fileContents: gpScript.

			proc := ThisOSProcess thisOSProcess command:
				'gnuplot ', gpPath.
			[proc isComplete] whileFalse: [(Delay forMilliseconds: 10) wait]
		].

		DocLink target: pngPath type: #image label: script
	]! !

!MyMathBook methodsFor: 'as yet unclassified' stamp: 'MM 6/12/2022 10:17:51'!
Intro
^(EruditeBookSection basicNew title: 'Intro'; document: ((EruditeDocument contents: '!!!! My math book

<plot>
plot sin(x)
</plot>

$x^2+y^2$
') images: ((Dictionary new) add: ('/tmp/erudite-plot-ea659a68332d07df52e242741687764a9abf024d.png'->(EruditeForm fromBase64String:'iVBORw0KGgoAAAANSUhEUgAAAoAAAAHgCAMAAAACDyzWAAADAFBMVEUAAAAAAAD///9/f3/l
AAAVsBoDQ98A/////xTCAHgfHx8/Pz9fX1+fn5+/v7/f398HBwcPDw8XFxcnJycvLy83NzdH
R0dPT09XV1dnZ2dvb293d3eHh4ePj4+Xl5enp6evr6+3t7fHx8fPz8/X19fn5+fv7+/39/cA
AAAAMwAAZgAAmQAAzAAA/wAAADMAMzMAZjMAmTMAzDMA/zMAAGYAM2YAZmYAmWYAzGYA/2YA
AJkAM5kAZpkAmZkAzJkA/5kAAMwAM8wAZswAmcwAzMwA/8wAAP8AM/8AZv8Amf8AzP8A//8z
AAAzMwAzZgAzmQAzzAAz/wAzADMzMzMzZjMzmTMzzDMz/zMzAGYzM2YzZmYzmWYzzGYz/2Yz
AJkzM5kzZpkzmZkzzJkz/5kzAMwzM8wzZswzmcwzzMwz/8wzAP8zM/8zZv8zmf8zzP8z//9m
AABmMwBmZgBmmQBmzABm/wBmADNmMzNmZjNmmTNmzDNm/zNmAGZmM2ZmZmZmmWZmzGZm/2Zm
AJlmM5lmZplmmZlmzJlm/5lmAMxmM8xmZsxmmcxmzMxm/8xmAP9mM/9mZv9mmf9mzP9m//+Z
AACZMwCZZgCZmQCZzACZ/wCZADOZMzOZZjOZmTOZzDOZ/zOZAGaZM2aZZmaZmWaZzGaZ/2aZ
AJmZM5mZZpmZmZmZzJmZ/5mZAMyZM8yZZsyZmcyZzMyZ/8yZAP+ZM/+ZZv+Zmf+ZzP+Z///M
AADMMwDMZgDMmQDMzADM/wDMADPMMzPMZjPMmTPMzDPM/zPMAGbMM2bMZmbMmWbMzGbM/2bM
AJnMM5nMZpnMmZnMzJnM/5nMAMzMM8zMZszMmczMzMzM/8zMAP/MM//MZv/Mmf/MzP/M////
AAD/MwD/ZgD/mQD/zAD//wD/ADP/MzP/ZjP/mTP/zDP//zP/AGb/M2b/Zmb/mWb/zGb//2b/
AJn/M5n/Zpn/mZn/zJn//5n/AMz/M8z/Zsz/mcz/zMz//8z/AP//M///Zv//mf//zP/////A
vQAOAAASBElEQVR4XuXdCZbavBKGYWkd3o/WIU/730I8AI3ABAOSqkpvnXvSyf3T6EvVg83U
luMXv/jFL37xi1/84he/+MUvfvGLX/ziF7/4xS9+8Ytf/OIXv/jFL37Rq/cdvwn8kqo4TnyA
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')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!MyMathBook methodsFor: 'as yet unclassified' stamp: 'MM 6/12/2022 10:17:51'!
initialize
    super initialize.
    title _ 'MyMathBook'.
        self addSection: self Intro.
! !

!MyMathBook class methodsFor: 'as yet unclassified' stamp: 'MM 6/11/2022 19:33:43'!
parser
	^ EruditeMathMarkupParser new! !

!DocMath methodsFor: 'accessing' stamp: 'MM 6/12/2022 10:11:51'!
formula
	"Answer the value of formula"

	^ formula! !

!DocMath methodsFor: 'accessing' stamp: 'MM 6/12/2022 10:11:51'!
formula: anObject
	"Set the value of formula"

	formula := anObject! !

!DocMath methodsFor: 'as yet unclassified' stamp: 'MM 6/12/2022 10:16:32'!
accept: aVisitor

	^ aVisitor visitMath: self! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeMath' stamp: 'MM 6/12/2022 10:15:36'!
visitMath: aDocMath

	| formulaId pngPath |
	formulaId := (((SecureHashAlgorithm new)
		initialize;
		hashMessage: aDocMath formula)
			printStringBase: 16) asLowercase.
	pngPath := '/tmp/erudite-formula-', formulaId, '.png'.

	(document imageAt: pngPath) isNil ifTrue: [
		| gifPath proc |
		gifPath := '/tmp/erudite-formula-', formulaId, '.gif'.
		proc := ThisOSProcess thisOSProcess command:
			'mimetex -e ', gifPath,
			' "', aDocMath formula, '"',
			' && convert ', gifPath,' ', pngPath.
		[proc isComplete] whileFalse: [(Delay forMilliseconds: 10) wait]
	].

	^ (DocLink target: pngPath type: #image label: aDocMath formula)
		accept: self.! !
