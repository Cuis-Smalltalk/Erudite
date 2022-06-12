'From Cuis 6.0 [latest update: #5171] on 12 June 2022 at 8:24:21 pm'!
'Description '!
!provides: 'EruditeMath' 1 8!
!requires: 'Erudite' 1 179 nil!
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

!classDefinition: #EruditeMathManual category: 'EruditeMath'!
EruditeBook subclass: #EruditeMathManual
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeMath'!
!classDefinition: 'EruditeMathManual class' category: 'EruditeMath'!
EruditeMathManual class
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

!EruditeMathMarkupParser methodsFor: 'as yet unclassified' stamp: 'AS 6/12/2022 20:22:26'!
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
			gpScript := 'set term png \', String lf,
				String tab, 'transparent truecolor', String lf,
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

!EruditeMathManual methodsFor: 'as yet unclassified' stamp: 'AS 6/12/2022 19:33:25'!
LatexMath
^(EruditeBookSection basicNew title: 'Latex Math'; document: ((EruditeDocument contents: '!!!! Latex Math

Latex math is enclosed between dollar signs:

```$x^2 + y^2$```

The formulas are converted to images and then displayed.

**IMPORTANT: this feature requires** {https://www.mersenneforum.org/mimetex.html::url|mimeTeX} **and** {https://imagemagick.org::url|ImageMagick}**. If those are not installed, there will be an error.**

Example:

$x^2 + y^2$') images: ((Dictionary new) add: ('/tmp/erudite-formula-ec88764d14d565e8c68aa2804ff42cfc08c65eea.png'->(EruditeForm fromBase64String:'iVBORw0KGgoAAAANSUhEUgAAAEAAAAAVCAYAAAD2KuiaAAABXklEQVR4XuVYQQ6EIAzkdb7A
D/gBn+TdV3j37nu6GRM2ikVaCspmD40RYRhGOhUdETkyxLZt5Jz7Bu7JiFk67jiagNd13QGX
ZdkBccU92ltZfIqjCXwYBur7/rTYcRwJ0YoAKY4mcL+luPZWBEhxfERxCcm3dkVxcABjgpYF
OHKsYjhaE3xSgJBjtFygg+98jFSpySmDGgGOHLVYHMfLQywapQIuGb7NGLhl8VoB0HeaJrUA
MY6ngX6xYe2UvJGTqsotrRXgbgzXfseRHegFkObTPM9kyWmtAJiPG8PxTnGMTiIxMvSDm4Y+
Eau7sei6ju6eS42Wa09xLJ7PtT1As81FWGKzqFiqSgiQew4RpYDUE94SAPywzXPOIKz7A8hX
AN9WMyVyBAj54etOUrUuWOFZmfsAqu0HWgFCzrGqkJ0Cb5zYLON9/v+lAOav0NZ+X0nECj3L
kqI/J0Dpf5AfEL+5pSfJ82wAAAAASUVORK5CYII=')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeMathManual methodsFor: 'as yet unclassified' stamp: 'AS 6/12/2022 19:33:25'!
NewMathBook
^(EruditeBookSection basicNew title: 'New Math Book'; document: ((EruditeDocument contents: '!!!! Creating a New Math Book

To create a new book with support for EruditeMath syntax, first create a regular new Erudite book and save it.

Then go to the book''s class in the Browser and add a [[[parser]]] method on the class side that returns a new {EruditeMathMarkupParser::class} object.

For example, this is what {EruditeMathManual class>>parser::method} looks like:

{EruditeMathManual class>>parser::method}[embed]') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeMathManual methodsFor: 'as yet unclassified' stamp: 'AS 6/12/2022 19:33:25'!
Plots
^(EruditeBookSection basicNew title: 'Plots'; document: ((EruditeDocument contents: '!!!! Plots

Plotting with gnuplot is supported. Insert the gnuplot script between ```<plot></plot>``` tags:

```<plot>
plot cos(x)
</plot>```

**IMPORTANT: this feature requires** {http://www.gnuplot.info::url|gnuplot}**. If it is not installed, there will be an error.**

A small preamble that sets the output to a png file is prepended to the script. The png file is then inserted in the document as a regular image.

Example:

<plot>
plot cos(x)
</plot>') images: ((Dictionary new) add: ('/tmp/erudite-plot-2147160b73b9abd116eea12a564b0bd1bd690aa6.png'->(EruditeForm fromBase64String:'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')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeMathManual methodsFor: 'as yet unclassified' stamp: 'AS 6/12/2022 19:33:25'!
SystemRequirements
^(EruditeBookSection basicNew title: 'System Requirements'; document: ((EruditeDocument contents: '!!!! System Requirements

EruditeMath requires some external programs and assumes the user is running a Unix system. Which external programs are required for a feature is documented in the feature''s section of this manual.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeMathManual methodsFor: 'as yet unclassified' stamp: 'AS 6/12/2022 19:33:25'!
initialize
    super initialize.
    title _ 'EruditeMath Manual'.
        self addSection: self SystemRequirements.
        self addSection: self NewMathBook.
        self addSection: self LatexMath.
        self addSection: self Plots.
! !

!EruditeMathManual class methodsFor: 'as yet unclassified' stamp: 'MM 6/11/2022 19:33:43'!
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

!LatexEruditeDocRenderer methodsFor: '*EruditeMath' stamp: 'MM 6/12/2022 10:27:59'!
visitMath: aDocMath

	^ stream
		nextPutAll: '$';
		nextPutAll: aDocMath formula;
		nextPutAll: '$'! !

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
