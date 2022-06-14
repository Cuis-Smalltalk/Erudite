'From Cuis 6.0 [latest update: #5171] on 14 June 2022 at 4:35:54 pm'!
'Description '!
!provides: 'EruditeMath' 1 22!
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

!classDefinition: #DocPlot category: 'EruditeMath'!
DocNode subclass: #DocPlot
	instanceVariableNames: 'script'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeMath'!
!classDefinition: 'DocPlot class' category: 'EruditeMath'!
DocPlot class
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

!EruditeMathMarkupParser methodsFor: 'as yet unclassified' stamp: 'AS 6/13/2022 22:56:00'!
plot

	^ super plot ==> [:res |
		(DocPlot new)
			script: res second;
			yourself]! !

!EruditeMathManual methodsFor: 'as yet unclassified' stamp: 'AS 6/14/2022 16:32:03'!
LatexMath
^(EruditeBookSection basicNew title: 'Latex Math'; document: ((EruditeDocument contents: '!!!! Latex Math

Latex math is enclosed between dollar signs:

```$x^2 + y^2$```

The formulas are converted to images and then displayed.

**IMPORTANT: this feature requires** {https://www.mersenneforum.org/mimetex.html::url|mimeTeX} **and** {https://imagemagick.org::url|ImageMagick}**. If those are not installed, there will be an error.**

Example:

$x^2 + y^2$') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeMathManual methodsFor: 'as yet unclassified' stamp: 'AS 6/14/2022 16:32:03'!
NewMathBook
^(EruditeBookSection basicNew title: 'New Math Book'; document: ((EruditeDocument contents: '!!!! Creating a New Math Book

To create a new book with support for EruditeMath syntax, first create a regular new Erudite book and save it.

Then go to the book''s class in the Browser and add a [[[parser]]] method on the class side that returns a new {EruditeMathMarkupParser::class} object.

For example, this is what {EruditeMathManual class>>parser::method} looks like:

{EruditeMathManual class>>parser::method}[embed]') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeMathManual methodsFor: 'as yet unclassified' stamp: 'AS 6/14/2022 16:32:03'!
Plots
^(EruditeBookSection basicNew title: 'Plots'; document: ((EruditeDocument contents: '!!!! Plots

Plotting with gnuplot is supported. Insert the gnuplot script between ```<plot></plot>``` tags:

```<plot>
plot cos(x)
</plot>```

**IMPORTANT: this feature requires** {http://www.gnuplot.info::url|gnuplot} **and** {https://imagemagick.org::url|ImageMagick}**. If those are not installed, there will be an error.**

A small preamble that sets the output to a png file is prepended to the script. The png file is then inserted in the document as a regular image.

Example:

<plot>
plot cos(x)
</plot>') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeMathManual methodsFor: 'as yet unclassified' stamp: 'AS 6/14/2022 16:32:03'!
SystemRequirements
^(EruditeBookSection basicNew title: 'System Requirements'; document: ((EruditeDocument contents: '!!!! System Requirements

EruditeMath requires some external programs. Which external programs are required for a feature is documented in the feature''s section of this manual.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeMathManual methodsFor: 'as yet unclassified' stamp: 'AS 6/14/2022 16:32:03'!
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

!DocPlot methodsFor: 'as yet unclassified' stamp: 'AS 6/13/2022 21:30:31'!
accept: aVisitor

	^ aVisitor visitPlot: self! !

!DocPlot methodsFor: 'accessing' stamp: 'AS 6/13/2022 21:40:10'!
script

	^ script! !

!DocPlot methodsFor: 'accessing' stamp: 'AS 6/13/2022 21:40:23'!
script: aString

	script _ aString! !

!DirectoryEntry class methodsFor: '*EruditeMath' stamp: 'AS 6/13/2022 19:55:00'!
tempDirectory

	|thisOS|
	
	thisOS _ ThisOSProcess thisOSProcess.
	
	^ thisOS class caseOf: {
		[UnixProcess] -> [((thisOS environmentAt: 'TMPDIR')
			ifNil: ['/tmp']) asDirectoryEntry].
		[WindowsProcess] -> [(thisOS environmentAt: 'TEMP') asDirectoryEntry].
		[MacProcess] -> [((thisOS environmentAt: 'TMPDIR')
			ifNil: ['/tmp']) asDirectoryEntry].
	}! !

!Theme class methodsFor: '*EruditeMath' stamp: 'AS 6/14/2022 08:38:31'!
currentDarkModeId

	^ self isDark ifTrue: [ self darkModeId ] ifFalse: [ self lightModeId ]! !

!Theme class methodsFor: '*EruditeMath' stamp: 'AS 6/14/2022 08:37:30'!
darkModeId

	^ #dark! !

!Theme class methodsFor: '*EruditeMath' stamp: 'AS 6/13/2022 17:41:50'!
isDark

	" If the text color is light, assume we are in dark mode"
	^ Theme current text luminance > 0.5! !

!Theme class methodsFor: '*EruditeMath' stamp: 'AS 6/14/2022 08:38:03'!
isLight

	^ self isDark not! !

!Theme class methodsFor: '*EruditeMath' stamp: 'AS 6/14/2022 08:39:05'!
lightModeId

	^ #light! !

!OSProcess class methodsFor: '*EruditeMath' stamp: 'AS 6/14/2022 08:53:45'!
convertLightImage: lightImageFilePath toDarkImage: darkImageFilePath

	self waitForCommand:
		'convert -grayscale Rec709Luminance -negate ', lightImageFilePath, ' ', darkImageFilePath! !

!LatexEruditeDocRenderer methodsFor: '*EruditeMath' stamp: 'MM 6/12/2022 10:27:59'!
visitMath: aDocMath

	^ stream
		nextPutAll: '$';
		nextPutAll: aDocMath formula;
		nextPutAll: '$'! !

!LatexEruditeDocRenderer methodsFor: '*EruditeMath' stamp: 'AS 6/13/2022 23:09:07'!
visitPlot: aDocPlot

	| plotId texPath |
	plotId := (((SecureHashAlgorithm new)
		initialize;
		hashMessage: aDocPlot script)
			printStringBase: 16) asLowercase.

	texPath := DirectoryEntry tempDirectory //
		('erudite-plot-', plotId, '.tex').

	texPath exists ifFalse: [
		| gpPath gpScript |
		gpScript := 'set term tex', String lf,
			'set output "', texPath pathName, '"', String lf,
			aDocPlot script.
		
		gpPath := DirectoryEntry tempDirectory //
			('erudite-plot-', plotId, '-tex.gp').
		
		gpPath fileContents: gpScript.
		
		OSProcess waitForCommand: 'gnuplot ', gpPath pathName
	].

	^ stream nextPutAll: texPath textContents! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeMath' stamp: 'AS 6/14/2022 16:21:25'!
visitMath: aDocMath

	| formulaId formulaKey |
	formulaId := 'erudite-formula-', (((SecureHashAlgorithm new)
		initialize;
		hashMessage: aDocMath formula)
			printStringBase: 16) asLowercase.
	
	formulaKey := formulaId, Theme currentDarkModeId.
	
	document imageAt: formulaKey ifAbsent: [
		| darkPngPath lightGifPath lightPngPath |
		darkPngPath := DirectoryEntry tempDirectory //
			(formulaId, Theme darkModeId, '.png').
		lightGifPath := DirectoryEntry tempDirectory //
			(formulaId, Theme lightModeId, '.gif').
		lightPngPath := DirectoryEntry tempDirectory //
			(formulaId, Theme lightModeId, '.png').
		
		lightGifPath exists ifFalse: [
			OSProcess waitForCommand:
				'mimetex -e ', lightGifPath pathName, ' "', aDocMath formula, '"'
		].
		
		lightPngPath exists ifFalse: [
			OSProcess waitForCommand:
				'convert ', lightGifPath pathName,' ', lightPngPath pathName
		].
		
		document imageAt: formulaId, Theme lightModeId put:
			(EruditeForm fromFileNamed: lightPngPath pathName).
		
		darkPngPath exists ifFalse: [
			OSProcess convertLightImage: lightPngPath pathName
				toDarkImage: darkPngPath pathName
		].
		
		document imageAt: formulaId, Theme darkModeId put:
			(EruditeForm fromFileNamed: darkPngPath pathName)
	].

	^ (DocLink target: formulaKey type: #image label: aDocMath formula)
		accept: self.! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeMath' stamp: 'AS 6/14/2022 16:24:27'!
visitPlot: aDocPlot

	| plotId plotKey |
	plotId := 'erudite-plot-', (((SecureHashAlgorithm new)
		initialize;
		hashMessage: aDocPlot script)
			printStringBase: 16) asLowercase.
	
	plotKey := plotId, Theme currentDarkModeId.
	
	document imageAt: plotKey ifAbsent: [
		| darkImagePath gpPath lightImagePath |
		darkImagePath := DirectoryEntry tempDirectory //
			(plotId, Theme darkModeId, '.png').
		lightImagePath := DirectoryEntry tempDirectory //
			(plotId, Theme lightModeId, '.png').
		gpPath := (lightImagePath pathName, '.gp') asFileEntry.	

		gpPath exists ifFalse: [
			| gpScript |
			gpScript := 'set term png \', String lf,
				String tab, 'transparent truecolor', String lf,
				'set output "', lightImagePath pathName, '"', String lf,
				aDocPlot script.
			gpPath fileContents: gpScript
		].
		
		lightImagePath exists ifFalse: [
			OSProcess waitForCommand: 'gnuplot ', gpPath pathName
		].
		
		document imageAt: plotId, Theme lightModeId put:
			(EruditeForm fromFileNamed: lightImagePath pathName).
		
		darkImagePath exists ifFalse: [
			OSProcess convertLightImage: lightImagePath pathName
				toDarkImage: darkImagePath pathName
		].
		
		document imageAt: plotId, Theme darkModeId put:
			(EruditeForm fromFileNamed: darkImagePath pathName)
	].

	^ (DocLink target: plotKey type: #image label: aDocPlot script)
		accept: self.! !
