'From Cuis 6.0 [latest update: #5399] on 29 July 2022 at 8:42:14 pm'!
'Description '!
!provides: 'EruditeExtensions' 1 35!
!requires: 'MethodAdvisers' 1 15 nil!
!requires: 'Cryptography-DigitalSignatures' 1 14 nil!
!requires: 'OSProcess' 1 23 nil!
!requires: 'AnimatedGIF' 1 1 nil!
!requires: 'Erudite' 1 204 nil!
!requires: 'Graphics-Files-Additional' 1 24 nil!
SystemOrganization addCategory: 'EruditeExtensions'!
SystemOrganization addCategory: 'EruditeExtensions-Books'!


!classDefinition: #EruditeExtensionsManual category: 'EruditeExtensions-Books'!
EruditeBook subclass: #EruditeExtensionsManual
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeExtensions-Books'!
!classDefinition: 'EruditeExtensionsManual class' category: 'EruditeExtensions-Books'!
EruditeExtensionsManual class
	instanceVariableNames: ''!

!classDefinition: #EruditeFormulaNode category: 'EruditeExtensions'!
DocNode subclass: #EruditeFormulaNode
	instanceVariableNames: 'formula'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeExtensions'!
!classDefinition: 'EruditeFormulaNode class' category: 'EruditeExtensions'!
EruditeFormulaNode class
	instanceVariableNames: ''!

!classDefinition: #EruditeHTMLNode category: 'EruditeExtensions'!
DocNode subclass: #EruditeHTMLNode
	instanceVariableNames: 'script'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeExtensions'!
!classDefinition: 'EruditeHTMLNode class' category: 'EruditeExtensions'!
EruditeHTMLNode class
	instanceVariableNames: ''!

!classDefinition: #EruditePlotNode category: 'EruditeExtensions'!
DocNode subclass: #EruditePlotNode
	instanceVariableNames: 'script'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeExtensions'!
!classDefinition: 'EruditePlotNode class' category: 'EruditeExtensions'!
EruditePlotNode class
	instanceVariableNames: ''!

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

!classDefinition: #FormulaEruditeExtension category: 'EruditeExtensions'!
EruditeExtension subclass: #FormulaEruditeExtension
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeExtensions'!
!classDefinition: 'FormulaEruditeExtension class' category: 'EruditeExtensions'!
FormulaEruditeExtension class
	instanceVariableNames: ''!

!classDefinition: #HTMLEruditeExtension category: 'EruditeExtensions'!
EruditeExtension subclass: #HTMLEruditeExtension
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeExtensions'!
!classDefinition: 'HTMLEruditeExtension class' category: 'EruditeExtensions'!
HTMLEruditeExtension class
	instanceVariableNames: ''!

!classDefinition: #PlotEruditeExtension category: 'EruditeExtensions'!
EruditeExtension subclass: #PlotEruditeExtension
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeExtensions'!
!classDefinition: 'PlotEruditeExtension class' category: 'EruditeExtensions'!
PlotEruditeExtension class
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


!EruditeExtensionsManual methodsFor: 'as yet unclassified' stamp: 'AS 7/29/2022 20:40:49'!
initialize
    super initialize.
    title _ 'EruditeExtensions Manual'.
        self addSection: self section_Requirements.
        self addSection: self section_UML.
        self addSection: self section_HTML.
        self addSection: self section_Formulas.
        self addSection: self section_Plots.
        self addSection: self section_DarkMode.
! !

!EruditeExtensionsManual methodsFor: 'as yet unclassified' stamp: 'AS 7/29/2022 20:40:50'!
section_DarkMode
^(EruditeBookSection basicNew title: 'Dark Mode'; document: ((EruditeDocument contents: '!!!! Dark Mode

UML, HTML, Formulas, and Plots support a dark-mode style rendering when you are using a dark theme.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeExtensionsManual methodsFor: 'as yet unclassified' stamp: 'AS 7/29/2022 20:40:50'!
section_Formulas
^(EruditeBookSection basicNew title: 'Formulas'; document: ((EruditeDocument contents: '!!!! Formulas

Formulas is enclosed between dollar signs:

```$x^2 + y^2$```

The formulas follow Latex syntax. They are converted to images and then displayed.

!!!!!! Example

$x^2 + y^2$') data: ((Dictionary new) add: ('erudite-formula-ec88764d14d565e8c68aa2804ff42cfc08c65eea'->(EruditeForm fromBase64String:'iVBORw0KGgoAAAANSUhEUgAAAEAAAAAVCAYAAAD2KuiaAAABNklEQVR4XuVYQRKDIAzs63yB
H/ADPsm7r/Du3fdsGwecmqImQISOmWEckcZlJbvQV2osy4LPZWvuvqowwzjP85pwmqY1obvC
9VcRphi7rkPbtrtEfd+DWi0EWGP0yyrUX0vcizHEuBBk0VWRLSgxvaBmAiIxygUnQmBwtygG
MX7bBQ3wg1k7tZpIi0GkpalynWL0D2nSZBVOJTlTMJi8dgVgGAY1ARKM22S5d0q+CEtsWQK4
+A1iMYLXibSexnFEYk2rCHDvwxGeHBilQubVVKIVR+PQNA3OniuENtSvwZilnq01QLPM4w8O
gUSomYDc55BdIqkmlCKA8NEyj93f/6g/JfIO4PuMS0JNAMdHuzuJa12elUMboBv0ACmYj1zh
nyIJvK//RxJQyLXKksU160mTz/7/3htCis/YCG5x/AAAAABJRU5ErkJggg==')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeExtensionsManual methodsFor: 'as yet unclassified' stamp: 'AS 7/29/2022 20:40:50'!
section_HTML
^(EruditeBookSection basicNew title: 'HTML'; document: ((EruditeDocument contents: '!!!! HTML

Rendering HTML is supported through wkhtmltoimage. Insert the html between ```<html> and </html>``` tags:

```<html>
<style>
  table, th, tr, td {
      border:1px solid
  }
</style>

<table>
  <tr><td>Hello</td><td>World</td>
  </table>
</html>```

The rendered output is saved as a png file which is then inserted in the document as a regular image.

!!!!!! Example

<html>
<style>
  table, th, tr, td {
      border:1px solid
  }
</style>

<table>
  <tr><td>Hello</td>
<td>World</td>
  </table>
</html>') data: ((Dictionary new) add: ('9f99fc0c5d5ed7d5b085f1f16d77bfacacc2590d'->(EruditeForm fromBase64String:'iVBORw0KGgoAAAANSUhEUgAABAAAAAAuCAYAAAC29GvWAAAE/0lEQVR4XuXdv4rUQBwH8FR2
2ln6ANcL1lsEO+18gq1EOPAJ7gGEbawW38FOuMLWNxBsLa/zOrszgQzMjjOZ7L8j2c8HBsLc
ZuZ36X7fTbJN8PXVr5eNz+fz+Xw+n8/n8/l8Pp/P5/P5fD6fz+fz+Xw+n8/n8/l8Pp/P5/P5
fD6fz+fz+Xw+n8/n8/l8Pp/P5/P5fD6fz+fz+Xw+n8/n8/l8Pp/P5/P5fD6fz+fz+Xw+n8/n
8/l8Pp/P5/P5fD6fz+fz+Xy+mgd/nG34fD6fz+fz+Xw+n883qwDA519Xn8/n8/l8Pp/P5/P5
jarPv64+n8/n8/l8Pp/P57ukRnWut9Av8bZ/PwDw+Xw+n8/n8/l8Pt+sAwC/Lqtmn8/n8/l8
Pp/P5/P5AYBflx8A+Hw+n8/n8/l8Pp/PDwD8ZtoPAHw+n8/n8/l8Pp/P5wcAfgDg8/l8Pp/P
5/P5fD7feRzCDwDsmn0+n8/n8/l8Pp/Ph0ib1ifd+N7svtl+Pfz9Opm/raz9tBu/h/Pj41PU
9bcbr0dqverGn2HuZzeeHXBtajWHPdZ+AODz+Xw+n8/n8/l8vqUFAE3U7N9340Wl6a01z/2a
H6Lj9ZF1bYfmf1WZC7X+OLL5L9XcZkIHPwDw+Xw+n8/n8/l8Pt/FBAD7fJMfhwVTg4NaXbl1
Smu3e+xXq3/K3/0AwOfz+Xw+n8/n8/l8fgBwogAgPApwm5lLb/X/lKnfDwB8Pp/P5/P5fD6f
z+cHAAcGAOnz+ZsJAUB6Ttq8jzXTaW2hpvgxgH7uS3Le2J6hvo/DWvfDWmkAsG123zngPwLg
8/l8Pp/P5/P5fL7FBwAPIyNu5L9FjXep6Y+PQyO+SRrzuCEfa6bDWpuo1tC4h7m2EFLk9nwb
/V9xsJCGFtukxq0fAPh8Pp/P5/P5fD6f7xICgCl3ALSFgGAzEgC0mbX3vZ0+NOPPu/F5aMrj
Bj29/b+2Z+3dAv3xXbP7okH/EQCfz+fz+Xw+n8/n8z2qY5wiACj9zF6pwc6tHdbdVOpqon37
W/7fd+MmmXvT/H/7f23PWgCQO98PAHw+n8/n8/l8Pp/PtxinCABynxsLAMJdA+uRdWvNdOm5
/3QuDgzG9qwFAG1mXT8A8Pl8Pp/P5/P5fD7fxQYApZf5xXcB9M3y2CMA4Zx4/etm+jsAgvSZ
/Nw6TVJnac9aABDCgrF3BPgBgM/n8/l8Pp/P5/P5FhMApG/Kj781T18MGH6KLzTH8Xw8139z
fhcdr5rjfgUgbtDfZeZuCp8v7ZnWv87Uv8p8Lr1GfgDg8/l8Pp/P5/P5fL7FBAB+XVbNPp/P
5/P5fD6fz+fzAwC/Lj8A8Pl8Pp/P5/P5fD6fHwD4zbQfAPh8Pp/P5/P5fD6fzw8A/ADA5/P5
fD6fz+fz+Xy+0zgFPwCwa/b5fD6fz+fz+Xw+H8IPAPwAwOfz+Xw+n8/n8/l8YAAwpzHXuqbW
7PP5fD6fz+fz+Xw+3ywDAJ9/XX0+n8/n8/l8Pp/P5zeqPv+6+nw+n8/n8/l8Pp9vyY2qP877
OIDP5/P5fD6fz+fz+Xw+n8/n8/l8Pp/P5/P5fD6fz+fz+Xw+n8/n8/lYPp/P5/P5fD6fz+fz
+Xw+n8/n8/l8Pp/P5/P5fD6fz+fz+Xw+n8/n8/l8Pp/P5/P5fD6fz+fz+Xw+n8/n8/l8Pp/P
5/P5fD6fz+fz+Xw+n8/n8/ke2z8m5ebFDxKACgAAAABJRU5ErkJggg==')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeExtensionsManual methodsFor: 'as yet unclassified' stamp: 'AS 7/29/2022 20:40:50'!
section_Plots
^(EruditeBookSection basicNew title: 'Plots'; document: ((EruditeDocument contents: '!!!! Plots

Plotting with gnuplot is supported. Insert the gnuplot script between ```@startplot and @endplot``` tags:

```@startplot
plot cos(x)
@endplot```

The plot is saved as a png file which is then inserted in the document as a regular image. If the reader of the book has gnuplot installed, they can also launch an interactive gnuplot window by clicking on the //[interact]// button.

!!!!!! Example

@startplot
plot cos(x)
@endplot') data: ((Dictionary new) add: ('erudite-plot-2147160b73b9abd116eea12a564b0bd1bd690aa6'->(EruditeForm fromBase64String:'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
yAAAAABJRU5ErkJggg==')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeExtensionsManual methodsFor: 'as yet unclassified' stamp: 'AS 7/29/2022 20:40:49'!
section_Requirements
^(EruditeBookSection basicNew title: 'Requirements'; document: ((EruditeDocument contents: '!!!! Requirements

Reading EruditeExtensions books only requires that the EruditeExtensions package is installed. However, creating EruditeExtensions books additionally requires some external programs:

- UML requires {https://plantuml.com::url|PlantUML}
- HTML requires {https://wkhtmltopdf.org::url|wkhtmltopdf}
- Formulas require {https://www.mersenneforum.org/mimetex.html::url|mimeTeX}
- Plots require ImageMagick and {http://www.gnuplot.info ::url|gnuplot}

Unless otherwise noted, the external programs should be on your OS''s executable path.

!!!!!! Configuration of External Programs

!!!!!!!! PlantUML

If the environment variable PLANTUML is defined, EruditeExtensions will use it as the plantuml command. The default command is ''plantuml''.

!!!!!!!! wkhtmltopdf

If the environment variable WKHTMLTOIMAGE is defined, EruditeExtensions will use it as the wkhtmltoimage command. The default command is ''wkhtmltoimage''.

!!!!!!!! mimeTeX

If the environment variable MIMETEX is defined, EruditeExtensions will use it as the mimeTeX command. The default command is ''mimetex''.

!!!!!!!! gnuplot

If the environment variable GNUPLOT is defined, EruditeExtensions will use it as the gnuplot command. The default command is ''gnuplot''.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeExtensionsManual methodsFor: 'as yet unclassified' stamp: 'AS 7/29/2022 20:40:49'!
section_UML
^(EruditeBookSection basicNew title: 'UML'; document: ((EruditeDocument contents: '!!!! EruditeUML

EruditeUML is a syntax extension for embedding UML diagrams using PlantUML.

Just insert PlantUML code, like:
```
@startuml
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response

Alice -> Bob: Another authentication Request
Alice <-- Bob: another authentication Response
@enduml
```
@startuml
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response

Alice -> Bob: Another authentication Request
Alice <-- Bob: another authentication Response
@enduml

!!!!!! More examples

@startuml
class foo
foo --> bar : normal
foo --> bar1 #line:red;line.bold;text:red  : red bold
foo --> bar2 #green;line.dashed;text:green : green dashed
foo --> bar3 #blue;line.dotted;text:blue   : blue dotted
@enduml

@startuml
scale 350 width
[*] --> NotShooting

state NotShooting {
  [*] --> Idle
  Idle --> Configuring : EvConfig
  Configuring --> Idle : EvConfig
}

state Configuring {
  [*] --> NewValueSelection
  NewValueSelection --> NewValuePreview : EvNewValue
  NewValuePreview --> NewValueSelection : EvNewValueRejected
  NewValuePreview --> NewValueSelection : EvNewValueSaved

  state NewValuePreview {
     State1 -> State2
  }

}
@enduml') data: ((Dictionary new) add: ('b71e9adfae0dfb0acca8f439774285f52670b840'->(EruditeForm fromBase64String:'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
6dNAGHiAjwqPM7jz8a+gZE378tuf3/789WliYdcKfE6JSYmS+ttUmTZ3ujy9oahuUgCC+ddW
lqoQIYwmY+Ah0j4qswiLWe3Lb39++/PXpwWEXRvBxchvbm6uZGRkqPAebdVvGAdxnwgRMkIe
Y7MJi9nsy29/fvvz16dFhN1MxYzCwm9/fvvzCzt/ffILO7+w8Nuf3/78ws4v7PzCzt8Q+e3P
b39+YecXdv6Gzd8Q+e3Pb39+YTensJeUlMjChQstUdatW2c4YbGSffntz29//vo0Rn3y99j5
exj89ue3P3+Pnd8Vw9+w+Rsiv/357c8v7PzCzt+w+Rsiv/357c9fn/zCzi8s/MLCb39+Yeev
T35h5xcWfvvz259f2Pnrk1/Y+Rsiv/357c8v7PzCzt+w+Rsiv/357c8v7Pxx7PxxvPxxt/z2
57c/f33yx7Hz9xj5e4z89ufvsfPXp8/irT5NI+yhKt4MEQmsaF9++/Pbn78+I1+f/MLO3xD5
7c9vf35h5xd2/obN3xD57c9vf35h5xd2A5UlS5bwN0R++/Pbn1/YLV2fusI+b948Sxnh6NGj
huqxWM2+/Pbntz9/fRqjPnWFfdu2bfLKK69YxgjTp09X6xgaBSvZl9/+/Pbnr0/j1GeUL2Ot
WLFC3RXMXPC4gr9GbNRWsC+//fntz1+fxqrPKOGHH3744cdS8As7P/zwww+/sPPDDz/88MMv
7Pzwww8//PALOz/88MMPP8Hx/7fGbMSVbYdcAAAAAElFTkSuQmCC')); add: ('dba2905531256f9ebf116f41123f91f40a6e51e9'->(EruditeForm fromBase64String:'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')); add: ('e0d0496fd1642d336f1b3aa512c0cf9857421890'->(EruditeForm fromBase64String:'iVBORw0KGgoAAAANSUhEUgAAAV0AAAJmCAYAAAD/3VNEAABTjklEQVR4XuWda7BU1Zmw+cEP
qkyVqTJVIvE2qASvo2OcCSnKMiUpmQoRRxKNYxINZkxKUybGoKioEECQ0ZiQBCYQQVEQ44VS
xkuBMVLBIOIE4o0RE3WUwGhGo4kmpEy5v+9Z873nW2z6nNPdp7tPdz9P1YLT3fu69l7Pfve7
1957SFH48ePHj59WMcRfBX78+PHjl64fP378+KXrx48fP3780vXjx48fv3T9tD87d+4sVq9e
XSxcuLD47ne/W9xyyy3F+vXri127dvkrx48fv3T9NIqXX365+MpXvlIcdthhxciRI/coH//4
x4tFixYVf/3rX/2V5cePX7p+BgIyPeqooyrKtlwmTZqUomE/fvz4peunDubNm1eVbPNy4okn
Fq+//rq/8vz48UvXTy2sW7eu13RCf+XCCy/0V6AfP37p+qkWLoyRp61HuFEeeOABf0X68eOX
rp9qWL58+YCES5kwYYK/Iv348UvXTzWcccYZA5Yu5de//rW/Mv348UvXT38cf/zxDZHumjVr
/JXpx49fun76oxHCpdx1113+yvTjxy9dP/1x+OGHN0S6q1at8lemHz9+6frpj09+8pMNke7j
jz/ur0w/fvzS9dMf06ZNG7BwiZb9z2Tw48cvXT9V8Pzzz9d9Y0SU6dOn+yvSjx+/dP1Uy+WX
X163cOn94L8V2I8fv3T91MC7775bjB8/vi7p/vSnP/VXoB8/fun6qZVXX3013VlWSx6Xu9n8
+PHjl66fOuEZuTywvL8cL3J+9tln/RXmx49fun4aATla3hhx7rnnFp/4xCfSIxwnTpxYfPOb
30zpBP8DzP348UvXTxMZPny4vxL8+PFL149fun78+KXrxy9dP378+KXrxy9dP3780vXjl64f
P3780vXjl64fP37p+vFL148fv3T9+KXrx48fv3T9+KXrx49fun780vXjx49fun780vXjxy9d
P37p+vHjl64fv3T9+PHjl64fv3T9+PFL149fun78+PFL149fun78+KXrxy9dP378+KXrxy9d
P3780vXjl64fP37p+vFL148fP37p+vFL148fv3T9+KXrx48fv3T9+KXrx08wiPil6yfhl64f
P37p+vFL148fv3T9+KXrx48fv3T9+KXrx49fun780vXjx49fun780vXjxy9dP37p+vHjl64f
v3T9+PHjl64fv3T9+PFL149fun78+PFL149fun78+KXrxy9dP3780vXjl64fP3780vXjl64f
P37p+vFL148fP37p+vFL148fv3T9tBuvvPJKv9LdsmWLv6L8+PFL108jWLVqVfHII4/0Kl1+
K//ux48fv3T91MmuXbuSZFevXr2HdHfs2JH+Zhg/fvz4peunQUyYMCHJdc2aNT3Sfe+994r9
99+/OOCAA/wV5MePX7p+Gskbb7yRRHvwwQcn8fL31Vdfnf5fsmSJv4L8+PFL10+j+ed//udi
xIgRxciRI5NsP/KRjxSHHnqoP7Xgx49fun6awdatW5NkSScgXcpnP/tZf8X48eOXrp9mcdJJ
J/UId/To0cW///u/F378+GkeQ/xV4IauYYcddliS7vHHH58upvnx48cvXT9N5LjjjkvSveCC
C/yV4cePX7p+ms2iRYt26z7mx48fv3T9NJG4WWLFihXF3Llzi1mzZvlLDeXb3/52KitXrize
eust/w7lxy9dP73Dcxiuueaa4lvf+lbx2GOPFa+//nrx9ttv+0sdZfPmzemgdeWVVxa/+c1v
/DuXH790/fx/3n///WLhwoXFv/7rvxbbt2/3S7OBhfpEvqRtqGc/fvzS9Qu3uO6664q1a9f6
JdnEsm7dumLGjBnFX/7yF/9O58cvXbtwN23a5BdjC8pzzz2XxOuPeP34pSuFlII/wm19xEuq
wY8fv3RlcNGMHK5fhK0v5Hj9F9f8+KUrg14K/otmg3dxjV4Nfvz4pSvhnXfeqTvKveiii9Lj
HsvfT58+vXjooYf6HX/btm27fWacSZMmFWPHji0mTpxYTJs2LUXh8RvTbYb48uWYP39+sXz5
8paKl/r39+P145euhHvuuad44okn6pLFgQceWAwbNmyPi29Ic8GCBf2Kbu+9995NuHyeOnVq
ce+99xbLli0rjj766CRfnvHL9JhuM4SbL8dgSJd+vHfccYd/Z/RL148BeiwgtXqly3N3eUZD
Po2ydB999NEk1XwYPg8ZMqR4+umn0/dnn312ceaZZ+42faLcGCak+9prr6Vx169fv8fyxG8b
NmyouLyVluPhhx/ebTlefPHFnuiaR1zGdwzHK4sqzS/G5f96xcuda3780vUjYPbs2XWLAune
eOONxahRo4opU6bsIV3kx4PQkSlSZbiQ5QknnJBkx7BEm6QOEDgRX6WDANNjfkyDcfbdd980
zfidXgD8xnf8Pm7cuB55IkN+41VE5eXgu3w5+J1oO9aPSJuIm+Xda6+9eoROdMq68TspkZiO
X7p+/NL10yc8I2Ag0kWGRIGkGUJIIV0iYPK+MfzFF1+c5BUizCWFaCdPnpymw+n++PHj0zQi
uuTvoUOH9kSTRK2MjyhJb/Ab38W0mDfz4/OYMWOK888/f7ccam/LUZZuTIPCMsX6MFwuffLP
A5Eu28GPX7p+/NKtSrpxUS3SDEgXsSGhiDYpCJTvOG0vyy4Kp/JErUgyIlvGYz7IM4aL8fmf
eRGNli9OEYnGPPN0RF/LUZYu+eX4je9DtMzv7rvv7vkN8ful68cvXT8tky5yRXKICenyPxIq
pwpClGXZceEMCebDIkfmgYTLF9Jy6TKvXMh5OiKGIx1QzXKUpXv//fdXlC7rmgu5t4OIX7p+
/NL10xTpUpAQp/nkW+kFsM8+++wmLdIQpA7iolMuKU7387xwlCOOOKJf6SJs5sWFrTyVQZ6V
efEbw+RRaW/LUa10yVPHcBS6zvml68cvXT8tlS7lnHPOSfLhe/KccYqOvEgVRG6VNALDzZkz
J0XJ/I6wkRrjcoGOHCoX1yK90Jt0kSfTRoRMh2G56BU5XpaD6ZAO4HfSIOXl4EIef1crXQ4g
zIM0RkTVfun68UvXT1OlSx63fBME0Sbije+JAOlJgDARbJ5u4DMSi1N/JEm0y/AUZBkph/LN
ESFI/o/0BtEt8yHCRYr5cvW1HAieaZH3zfvpsn55H2S+5/c8cufiH68z4jcuAvql68cvXT9N
k665INo8yh/ozRt+6frxS9cvXX/po5AyIS9MH11K9DH2S7cROPFLV4JfuvUXcs2kGEiL5Bfx
/NL145euH79027z4pevHL12/dP3FL10/fun68UvXL10/fun68UvXX/zS9eOXrp9qoE/tDTfc
4C+DXM4991z/zuiXrh8D3FHlx78d/Pil68ff2P3bwY9fun78jd2Pfzv48UvXj7+x+7eDH790
/fgbux//dvDjl64ff2P3bwc/fun68Td2/3bwbwe/dP34G7sf/3bw45euH39j928HP37p+vE3
dj/+7eDHL10//sbu3w5+/NL142/sfvzbwY9fuv7G7se/Hfz4pevH39j928GPX7p+/I3dj387
+PFL14+2sT///PPFtGnTik9+8pPF4YcfXowcObI49thj01t6lyxZkh4S7t8OfvzS9eNv7APk
3XffLS6//PLisMMOS6LtrfzDP/xD8dOf/tS/Hfz4peunP5pPpzb2N998sxg/fnyfsi2XmTNn
tu36+KXrxy9dCZ3Y2P/6178WEyZMqEm4URYuXOjfDn780vXjb+y18IMf/KAu4VJIRZAD9m8H
P37p+vE39ip4/fXXey6W1Vu+8IUv+LeDH790/fgbezWQHhiIcKP8+te/9m8HP37p+vE39v7g
VeWNkO5dd93l3w5+/NL142/s/fGJT3yiIdL97ne/698OfvzS9eNv7P1x4okn+qXrxy9dP37p
toqJEyc2RLq33HKLfzv48UvXj7+x98eUKVMaIt3169f7t4Mfv3T9+Bt7fyDLgQr34x//eLFr
1y7/dvDjl64ff2OvhnrvRouyaNEi/3bw45euH39jr5Znn3227hskePIYtxH7t4Mfv3T9+Bt7
Daxevbrfp4uVCz0fdu7c6d8OfvzS9eNv7PWwbt264vjjj69KuBdeeGHbCtcvXT9+6fql2zHw
iEce2XjUUUdVlC35X6Ji/3bw45euH39jbyD0RvjlL3+ZBDt8+PBizZo1bfd8Bb90/fil66cr
GzvS9W8HP37p+vE3dr90/dL145euX7p+6fq3gx+/dP34G7tfun780vXjl65fuv7t4McvXT/+
xu6Xrh+/dP34G7tfurXQhtvBT4vxS1dCNzZ2v3T9+KXrx9/Y/dL1S9ePX7p+/NL1bwc/fun6
8Td2v3T9+KXrxy9dv3T928GPX7p+/I3dL10/fun68Td2v3T928GPX7p+/NL1bwc/fun68Td2
v3T90vXjl65fun7p+reDH790/fgbu1+6fvzS9eOXrl+6/u3gxy9dP37p+reDH790/fgbu1+6
fun68UvXL12/dP3bwY9fun78jd0vXT9+6frxS9cvXf928OOXrh9/Y/dL149fun78jd0vXb90
/fil68cvXf928OOXrh9/Y/dL1y9dv3T9+KXrl65/O/jxS9ePv7H7pevHL93upqvxS9e/Hfy0
B37pSvBL178d/Pil68ff2P3S9eOXrh+/dP3S9W8HP37p+vE3dr90/fil68ff2P3S9W8HP37p
+vFL178d/Pil68ff2P3S9UvXj1+6fun6pevfDn780vXjb+x+6frxS9ePX7p+6fq3gx+/dP34
pevfDn780vXjb+x+6fql68cvXb90/dL1bwc/fun68Td2v3T9+KXrxy/dzpPuO++8498OfvzS
9eNv7I3gySefLHbs2NGrdNetW1c8+OCD/u3gxy9dP/7G3gh27dqVJDt//vw9pItw+dsf6frx
S9ePv7E3kEsuuSTJ9aKLLuqRcAh39OjR/u3gxy9dP/7G3kjefvvtJNeRI0cW48aNS7I9+OCD
i/322y/J178d/Pil68ff2BvMddddl8R71FFHJemOGDGi+Lu/+7vivffe828HP37p+vE39mZF
uwiX8jd/8zcdtW5+6frxS9cv3Y5j1qxZxUEHHZSk+/d///d79Grwbwc/fun68Tf2Bke7o0aN
StL9p3/6p6KT6G07+PHgl66Ebmvsl112WZLuqlWr/NvBj1+6fvyNvRro9vXAAw8UN9xwQzF3
7tyayowZM5J0Z86cWfU4s2fPLq699trinnvuGbQ+vX7p+vFL1y/dQZEtoiU3+4tf/KJ44403
Usqg1rJx48a6xtu8eXPqBXH11VcX//Vf/+WXrh+/dP10b2N/7rnnissvv7x46qmn6hJmI8v2
7dtTBLxkyRK/dP34peun+xr7888/X9x44411R7bNKtxYQeqhFX19/dL145euX7ot4a233ioW
LFjQVrLNCxE44vVL149fun66orFPmzat2LlzZ9tKNyLepUuX+qXrxy9dP53d2O+4445i7dq1
bS3cKFxge+WVV/zS9eOXrp/ObezXXHNNRwg3Lq6xvH7p+vFL109HNvaXXnopnbJ3inQpdGdr
Vj9ev3T9+KXrl25TWblyZV39aadPn55Kpd/Gjh1bbNu2Lf09adKkYv369Q2V7pYtW5p2p5tf
un780vVLt6nMmzevri5iZ599diqVfhsyZEjx9NNPp78PPPDA4v777294tDtnzhy/dP34peun
8xo7t93WI72ydJctW1YsWrQoXeTqS7pbt25Nwz788MMD6g/Mcvul68cvXT866fLYxhNOOKEY
M2ZM+nz00Uf3Kl3WkbdKMBwpiN4i5Wp7Mfil68cvXT866fIiSh7j+Nprr6XvH3rooYrS5XkK
/M3/fE+Ui6jvvvtuv3T9+KXrxy/daqV7wQUXFBdffPFuv+2zzz57SJeLbvw9derUnoJ0zznn
HL90/fil68cv3WqlO3ny5GLKlCm7/YZcy9JFskTEuXQpy5cv90vXj1+6fvzSrSW9wJt/43su
pA0bNmwP6XLxjAg40hAULrz50wt+/NL145duDdJFsvvuu296WDlypV/u0KFD95Bu5HDPPPPM
9Jn1Zbx6+/D6pevHL10/KumSFojUAN3Azj///CRhnuNAH1pkHP1pQ8CIl0dHRi6YbmP+3gt+
/NL145duhzz4xi9dP37p+vFL1y9dP37p+vFL1y9dv3T9VEvbSddPc/BL1y9dP+2BX7p+6fql
65euH790/fil65euH790/filWzNf+tKX0kPBO62cd955fun68UvXjz/S9Ue6fvzS9eOXrl+6
fun68UvXj1+6fun68UvXj1+6fun6d0a/dP34peuXrl+6fvzS9eOXrl+6fvzS9eOXrl+6fun6
8UvXj1+6fun68UvXj1+6fun6pevHL12/dP3S9UvXj1+6frpVurzZoROly3L7pevHL10/HdfY
r7/++vQanU4S7h/+8Idi7ty5fun68UvXT+c1dt7G+9hjj3WUdHnn2urVq/3S9eOXrp/Oa+w7
duxIr0LvJOkSne/atcsvXT9+6frpzMY+derUjkkxPPPMM8X8+fO7cjv48UvXj0S6Tz75ZLFs
2bKOkC4HCP73S9ePX7p+Orqx33rrrcV//Md/tLVwb7rpphTpdvN28OOXrh+JdOHmm29uS/GS
+qB+uOBn2A5+/NL1I5FuRLykGtolx7t27driyiuvLF577TXVdvDjl66fLm7syI0SkOMld/rj
H/84RZetFvBTTz1V3HbbbcUVV1xR3H777cV77733vwvWAvzS9eOXroTBaOwIjpsMhg8fXrzz
zjt7/E53snvuuSe9CJLh6i2jRo2qaXii7RdffFGzHfz4peunyxt7yPbwww8vDj744OK0005r
6vzGjBmTomX/dvDjl64fVWNHtjzgBtkeeuihKcI98sgjizVr1jR1vqeffnqxdetW/3bw45eu
H0djR7azZs1Kp/kHHXRQkm0UpNusu7uCr371q8Ujjzzil64fv3T9dHdjJ0/LLb65ZMvls5/9
bNPXbcaMGWk5/NL145euH11jpyfApz71qSTc/fffv7jvvvuaPk96IsyePdu/Hfz4pevH19g5
1WdeSJd0Qyu6Y5EzvvDCC/3bwY9fun5cjZ1T/C984QtJtEh3/PjxLVk3+v1yMc2/Hfz4petH
09i5yWHs2LHpohog3RUrVrRk3cgtn3TSSf7t4McvXT+Oxs5NDieccELxwgsv9HzX2w0RzYL5
+6Xrxy9dP13f2OPC2YMPPrjb91//+tdbun6dcoOEX7p+/NL1S3dA8PyCSj0HVq1a1dL1O+OM
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
dPNeGuSgEXGt0uUMgnlGZEykHcP78UvXTxeAiPI8ay7dyNPmJZcVoiX/SKSXR5PIieHIixL9
RgRI9MdnLlQRzSElrszXKl1gmRkmLsBVI11SCyHdSutWlltcGMvTIcyH9eI31pODCiBmvv/M
Zz6T6o7foxdGLdIF8r+sF/Mi1eCXrl+6frqIK664IkVqjQaZUirdGBG/1QsyK0ec5FSrke7c
uXMHvG7R4yLv4lX+rd4bQiKPnNdVpCn8+KXrpwvgeQuddmssETNRIBFh5JQj4uxPupdccklb
rxsRM+vG+hD5EjmXL6z58UvXTwdT6SJap4iXvCmpByLDatYB6XbCG4HJf5OyibvkBnqrsR+/
dP20CVys4clbFkij+F/D7scvXT+DKiFyuha4BdgvXT9+6foZNLiodNttt/ml68ePX7p+WgEC
WrdunV+6fvz4peunFZDPLd/+2+3SPeuss/wb3o9fun4GhxNOOEH1okaeplbp7js/fvzS9dN0
kC3SNUF/ZL90/fil62dQoLsYTxczwUsp/dL145eun0HBeFEJ6Z588sn+je+nVlqCX7pdTm8P
uulmkK4tpeKnc/BLt8vhaVumPrp+6frxS9fPoMKDXx555BG/dP348UvXTyvgma88wNwvXT9+
/NL10wK4MQIJmXj77bfTU9X8+PFL10/LGTNmTPHGG2/o1tv/kkc/fun6GRQOOugg5XrzeiE/
fvzS9eOXj3+9/fil66ebOeKII7p+HSs9zKeSdLmgaHoGhR+/dP20mF27dimu4i9atKhYs2ZN
n9Ll0Zbz58/37xR+/NL10zx27NihkC4HFyR76623VpTuPffckz5TH378+KXrp2mY+qvSNS4X
b0iXG0P4+5RTTvHvEH780vXjl26joG8ucqWsWLEi/f/www/3fMfvfvz4pevHL90GwnMmuHC4
3377JdHSV5dy7bXX+ncGP37p+vFLtxnR7rHHHtsT3VJGjRrlj3L9+KXrpzVYLqSVo92//du/
TcL98Ic/XFxzzTX+HcGPX7p+WodNukS1Rx55ZJLuIYcc4o9y/fil66e1IB4b1113XZLupZde
6t8B/HSHdN99993ivvvuSzv37Nmzi1mzZvlLmxbkY1vnq6++Oq03//v3AX9pdPn2t7+dyh13
3FG89dZbzZXun/70pyRaZvj4448Xv//979Ppm7/4S7uV5557zl8P/tLUwm3l+HDatGnpDdQN
l+7TTz9dTJ06tXj22Wf9Fe4v/uIv/vL/yvbt24u5c+cWixcvLt5///3GSJeogZcbvvnmm/5K
9hd/8Rd/qVB4vgdZgL/85S8Dk+7//M//FAsWLPBXqr/4i7/4SxVpLcTbV8Tbp3QZkXzFzp07
/RXqKsXb/uIv/lJXIeIl1VCXdFeuXFmsXbvWX5H+4i/+4i81FHK8v/nNb2qTLlEuXW78Fegv
/uIv/lJb4eLalVdeWZt06QJx8803+yvQX/zFX/yljsIt6ZX68fYqXR6Pt3HjRn/l+Uuf5bXX
XkudxMn9U3icYqOmvX79+tRNkTc+PPTQQ+lzo5e/WdP1F3/ZvHlzStFWLV1yEry62195/tJb
oe82T/E67rjjiosvvriYMmVKsffeexeTJ08e8LR5WM9ee+1VnHPOOel1PBdddFExZ86chq9D
s6brL/5CoSdD1dLldjd/pflLX4WH6SDb/OBM1Igs77///gELfciQIf569he/dP3FXyikEYYO
HZrexFv+DeHG9/yNnBHoiBEj0k02MdykSZOKmTNnpkh52LBhaThOyRiXYRnnwAMPLJYtW7Zb
RIrYibCZ/9ixY4vzzz+/57dy5MpyjhkzZre/J06cmKbNsuXD8xvLc/TRR/dMm2sbEXlzgOH7
WA+Wzb8v+EtfBY/6pesvDSnTp0/vkVlvZdu2bSndQHqAz5s2bUpR8N13350+IzXERVSL1JAw
6YRKke7ZZ5+d8rv8zThcpMgj6/gtHy6kH3Lkb6TJsm/YsCHNszxdhItoKSwfeWp+Q7IcFELC
48aN80fi/uKXrr+0riCj/qTLnYyIK/8OwRFphnTzqDQfvjfpPvroo0nkeUqDHHK10mVcLv71
JvPly5fvtqz8zt/jx49PEXceQful6y9+6fpLywrRa1l+eV43HpAU0qokVv7PbzGvRroMUz6t
5/tqpVsetyzdPBedL3/5N3/O2V/80vWXlhZOs3u7YEaOlgiWU/JKkS5phHqlS4RJ/re3aJW/
6UURv9GdrRHSJZ2QLyvD+aXrL37p+ktLC2LNRYWIzzzzzPQdL8Xkc6WcbpzC1yNd/uYiGhfP
GIZpIeH4jQthvBE45n/SSSc1RLpLlixJv5MLZr5xcdC/H/iLX7r+0tLCjQtIEAFxkQrJIaU8
9xmCQsBIMVISRLx5npS/IwqmB0MuyLyXAfIm8uR3pEi+NcTJtMkZsywjR45My1fuvdBbP11+
y2/u4Ht+j88sO+vKxTb+9kvXX/zS9ZeuL0SwdN3Kv0O6zb7BgQNCLuR77703RdT+beIvfun6
S9cXcsakMUhHkGbYd999K/YXbmQhPx39c+Nvol3/9vAXv3T9pesL/WsRbvRmiL6zzS7ke+nj
S/E/r8Ff/NL1F3/xF3/xS9df/MVf/MUvXb90/cVf/MVf/NL1F3/xF38RS/fLX/5y8cMf/tBf
/MVf/MVf6iz/8i//Ur10eYqTHz9+/Pipn0oe9UvXjx8/bUVRdM8/fun68ePHj1+6fvz48eOX
rl+6fvz48eOXrh8/fvz4pevHjx8/fvzS9ePHjx+/dP348ePHL12/dDuTl19+Ob1GhkcN8l4w
/ufVOM8//7y/cvz48UvXT6N49dVXi6985SvFYYcdll5JU6lwGzfD+fHjxy9dPwNg5cqVxVFH
HdWrbPPCcA888IC/0vz48UvXTz3w5tu+otveil+8fvz4peunRsjfVhvhlsvxxx9fvP766/5K
9OPHL10/1XLWWWfVJdwovErcjx8/fun6qYJf/vKXAxIuhbQE0bIfP3780vXTD3PmzBmwdCl0
L/Pjx49fun76ge5hjZAu/Xj9+PHjl66ffhhoPjcKN1D48ePHL10//XDuuec2RLrTpk3zV6Yf
P37p+umPmTNnNkS6Cxcu9FemHz9+6frpj5/+9KcNkS69IPz48eOXrp8qOPHEEwck3DPOOMNf
iX78+KXrp1rWrVtX1y3A0Uf32Wef9VeiHz9+6fqphXr76/K4Rz9+/Pil66cfKjFv3ryaIl4u
nv31r38t/Pjx03r80u0SnnrqqWL8+PF9ypbfN23a5K8sP3780vXTKB5//PF0lxkPLB8+fHj6
n8/kf/348eOXrp8mgnT9+PHjl64fv3T9+PFL1y9dv3T9+PHjl64fv3T9+PFL149fun78+PFL
149fun78+KXrxy9dP378+KXrl64fP3780vXjl64fP37p+qXrl64fP3780vXjl64fP37p+vFL
148fP37p+qXrx48fv3T9+KXrx49fun7p+qXrx48fv3T9+KXrx49fun780vXjx49fun780vXj
xy9dP37p+vHjxy9dv3T9+PHjl64fv3T9tCV+GoJful2MX7p+/Pil68cvXT9+/NL1S7fz2bp1
a1XS3bJlS/Hee+/5K8yPH790/QyERYsWFWvWrOlTuuvWrSvmz5/vryw/fvzS9TNQdu3alSR7
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
xEs55phjenpi+KXrl64fv3T90m2CdIEUwze/+c2UL/3whz+c5PvFL34xpSD4zS9dv3T9+KXr
l26VJaLYWgvyjb8Rsl+6fvz4peuXbgN7L5DfPeSQQ4pDDz00iXa//fZLPQR4W4Q/0vVL149f
un7pNlC6cUFt//33T7L9x3/8x/RKd39O1y9dP37pNly69AvlmbrdWli/vli9enVPGoHnJfDi
yTLnnntuV9fReeed55euH790/ZFu67qMnXjiianPcW/4I12/dP34peuX7gClu2XLltQ9rJq3
4fql65euH790/dIdoHSruRPNL12/dP34peuXbpN6L/il65euH790/dL1S9cvXT9+6fql65eu
X7p+/Pil65euX7p+6frxS9cvXb90/dL148cvXb90/dL1S9ePX7p+6fqlO1jl2muv9UvXj1+6
rZIut4FW+y6tTiwIc6DMmzevq+uIA69fun780m2RdO+5557iscce60qZ8MbdFStWDLg+77zz
zq6to1/96lfp+RN+6frxS7dF0uU9ZosXL+5Kodxyyy1p/QbK9u3bix/96EddWUfsK7t27fJL
149fuq2SLkydOrXrTp9ZnyuuuKJhdXrppZd2XR099dRTxfe+972G709+/Pil2w9PPvlkxVee
d3K56aab0no1iieeeKK4+eabu6qOLrvssj3eB+eXrh+/dFsgXbj11luTpLolglu6dGnD6xXp
btq0qSvqaNGiRel1983an/z48Uu3ChBVp0sF4V5//fVFs/jxj39cWx29/XZb/U+KhH6569ev
L6rFL10/rUQlXSDNwAWoTstfsrwIsRkRbhkiXubTaXXE+97I31d6O4Zfun780h0k6QKRHPk+
rtjTVaqd5UK3MAR4+eWXp+VuFeR4p0yZ0vZ1RORP6ojtedttt9X0HGG/dP34pVslN954Y12N
qwxdpeijys0B3GQwa9astiksD3dSIRKWc7B49dVXi5/85CfplL2d6ifqiAPStm3bivfff7/u
dezv5gk/fvTSveuuu4pnnnnGv/X8DJgXXnihWLlypb8i/Pil2xe898vfUPw0AvajF1980V8R
fvzS7Y9GPHPAj5+rrrrKXwl+/NKtBlIMXODx46de2H/8Z0x+/NKtAW6Dfeedd/xb0U/NcCF2
xowZDbkg68ePRrp0GZo/f75/K/qpGXrANOJhQX78qKQLW7duLRYsWOCPWPxUDTfH+FNTfvzS
HaB4uSDivwrtpy/YP0hJ+bsb+vFLtwHwzFROGVnGLVu2+CNfPz3QF5d9g1SU/xqAn8Gm0s04
vUq3UXeCNVu+Dz74YI+A/cVb2LkpvDmivweZ+/HTltL13wnmx48fPwM761q1alX10vXfCebH
jx8/9dNbimtIXyP57wTz48ePn9qhiyt9wyvRp3T9d4L58ePHT+1wnam3HlZD+hvZfyeYHz9+
/FQPrwqjf3hvDKkmTPbfCebHjx8//cO1sP7SskOqmZD/TjA/fvz46T/CRbj9ZQaGVDtB/51g
fvz48VM5G0AOt6+UQl3SBf+dYH78+PHzvxCAknqllwJphWoZUs/M/HeC+Yu/+Etry78W7fJ/
3P1I7656OhkM8R+v/Pjx46d1+KXrx48fP37p+vHjx49fun78+PHjZ4D8H0yGNLswrj4CAAAA
AElFTkSuQmCC')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeFormulaNode methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:15:20'!
accept: aVisitor

	^ aVisitor visitFormula: self! !

!EruditeFormulaNode methodsFor: 'as yet unclassified' stamp: 'AS 7/29/2022 20:19:15'!
data

	| formulaId gifPath |
	formulaId := self dataKey.
	gifPath := DirectoryEntry tempDirectory // (formulaId, '.gif').
	
	gifPath exists ifFalse: [
		OSProcess mimetex: '-e ', gifPath pathName, ' "', self formula, '"'
	].

	^ EruditeForm fromFileNamed: gifPath pathName! !

!EruditeFormulaNode methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:12:57'!
dataKey

	^ 'erudite-formula-', (((SecureHashAlgorithm new)
		initialize;
		hashMessage: self formula)
			printStringBase: 16) asLowercase! !

!EruditeFormulaNode methodsFor: 'accessing' stamp: 'AS 7/26/2022 13:11:33'!
formula
	"Answer the value of formula"

	^ formula! !

!EruditeFormulaNode methodsFor: 'accessing' stamp: 'AS 7/26/2022 13:11:42'!
formula: anObject
	"Set the value of formula"

	formula := anObject! !

!EruditeHTMLNode methodsFor: 'as yet unclassified' stamp: 'MM 7/25/2022 10:19:27'!
accept: aVisitor

	^ aVisitor visitHTML: self! !

!EruditeHTMLNode methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 19:57:03'!
data

	| inputPath pngPath|
	inputPath := DirectoryEntry tempDirectory //
		('erudite-html-', self dataKey, '.html').
	inputPath exists ifFalse: [ inputPath fileContents: script ].

	pngPath := DirectoryEntry tempDirectory //
		('erudite-html-', self dataKey, '.png').
	pngPath exists ifFalse: [
		| cmdStatus |
		cmdStatus _ OSProcess wkhtmltoimage: '--transparent ', inputPath pathName, ' ', pngPath pathName.
		cmdStatus succeeded ifFalse: [		self error: 'Error running wkhtmltoimage command']].

	^ EruditeForm fromFileNamed: pngPath pathName! !

!EruditeHTMLNode methodsFor: 'as yet unclassified' stamp: 'MM 7/25/2022 10:19:18'!
dataKey

	^ (((SecureHashAlgorithm new)
			initialize;
			hashMessage: script)
				printStringBase: 16) asLowercase! !

!EruditeHTMLNode methodsFor: 'as yet unclassified' stamp: 'MM 7/25/2022 10:22:03'!
initialize: htmlScript

	script _ htmlScript! !

!EruditeHTMLNode class methodsFor: 'as yet unclassified' stamp: 'MM 7/25/2022 10:26:23'!
with: htmlScript

	^ self new initialize: htmlScript! !

!EruditePlotNode methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:27:06'!
accept: aVisitor

	^ aVisitor visitPlot: self! !

!EruditePlotNode methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 19:51:07'!
data

	| plotId pngPath |
	plotId := self dataKey.
	
	pngPath := DirectoryEntry tempDirectory // (plotId, '.png').
	pngPath exists ifFalse: [
		| gpPath |
		gpPath := (plotId, '.gp') asFileEntry.	
		gpPath exists ifFalse: [
			| gpScript |
			gpScript := 'set term png \', String lf,
				String tab, 'transparent truecolor', String lf,
				'set output ''', pngPath pathName, '''', String lf,
				self script.
			gpPath fileContents: gpScript
		].

		OSProcess gnuplot: gpPath pathName
	].

	^ EruditeForm fromFileNamed: pngPath pathName! !

!EruditePlotNode methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:26:51'!
dataKey

	^ 'erudite-plot-', (((SecureHashAlgorithm new)
		initialize;
		hashMessage: self script)
			printStringBase: 16) asLowercase! !

!EruditePlotNode methodsFor: 'accessing' stamp: 'AS 7/26/2022 13:26:33'!
script

	^ script! !

!EruditePlotNode methodsFor: 'accessing' stamp: 'AS 7/26/2022 13:26:39'!
script: aString

	script _ aString! !

!EruditeUMLNode methodsFor: 'as yet unclassified' stamp: 'MM 6/16/2022 22:01:45'!
accept: aVisitor

	^ aVisitor visitUML: self! !

!EruditeUMLNode methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 11:51:45'!
data

	| inputPath pngPath|
	inputPath := DirectoryEntry tempDirectory //
		('erudite-uml-', self dataKey, '.plantuml').
	inputPath exists ifFalse: [ inputPath fileContents: script ].

	pngPath := DirectoryEntry tempDirectory //
		('erudite-uml-', self dataKey, '.png').
	pngPath exists ifFalse: [
		| cmdStatus |
		cmdStatus _ OSProcess plantuml: inputPath pathName.
		cmdStatus succeeded ifFalse: [		self error: 'Error running PlantUML command']].

	^ EruditeForm fromFileNamed: pngPath pathName! !

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

!FormulaEruditeExtension methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:07:48'!
formulaGrammar

	^ ($$ asParser min: 1 max: 1) flatten,
	   ($$ asParser min: 1 max: 1) negate plus flatten,
	   ($$ asParser min: 1 max: 1) flatten! !

!FormulaEruditeExtension methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:09:17'!
formulaParser

	^ self formulaGrammar ==> [:res |
		(EruditeFormulaNode new)
			formula: res second;
			yourself]! !

!FormulaEruditeExtension methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:10:53'!
install

	self installGrammarExtension.! !

!FormulaEruditeExtension methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:10:40'!
installGrammarExtension

	EruditeMarkupGrammar around: #markup
		do: [:receiver :nextMethod |			nextMethod value / self formulaParser]! !

!FormulaEruditeExtension class methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:06:34'!
initialize

	self new install! !

!HTMLEruditeExtension methodsFor: 'as yet unclassified' stamp: 'MM 7/25/2022 10:18:34'!
htmlGrammar

	^ ('<html>' asParser flatten,
	'</html>' asParser negate plus flatten,
	'</html>' asParser flatten) flatten! !

!HTMLEruditeExtension methodsFor: 'as yet unclassified' stamp: 'MM 7/25/2022 10:26:36'!
htmlParser

	^ self htmlGrammar ==> [:script | 		EruditeHTMLNode with: script]! !

!HTMLEruditeExtension methodsFor: 'as yet unclassified' stamp: 'MM 7/25/2022 10:17:52'!
install

	self installGrammarExtension.! !

!HTMLEruditeExtension methodsFor: 'as yet unclassified' stamp: 'MM 7/25/2022 10:18:44'!
installGrammarExtension

	EruditeMarkupGrammar around: #markup
		do: [:receiver :nextMethod |			nextMethod value / self htmlParser]! !

!HTMLEruditeExtension class methodsFor: 'as yet unclassified' stamp: 'MM 7/25/2022 10:17:52'!
initialize

	self new install! !

!PlotEruditeExtension methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:30:05'!
install

	self installGrammarExtension.! !

!PlotEruditeExtension methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:29:48'!
installGrammarExtension

	EruditeMarkupGrammar around: #markup
		do: [:receiver :nextMethod |			nextMethod value / self plotParser]! !

!PlotEruditeExtension methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:28:56'!
plotGrammar

	^ '@startplot' asParser flatten,
		'@endplot' asParser negate plus flatten,
		'@endplot' asParser flatten! !

!PlotEruditeExtension methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:29:27'!
plotParser

	^ self plotGrammar ==> [:res |
		(EruditePlotNode new)
			script: res second;
			yourself]! !

!PlotEruditeExtension class methodsFor: 'as yet unclassified' stamp: 'AS 7/26/2022 13:30:18'!
initialize

	self new install! !

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

!Theme class methodsFor: '*EruditeExtensions' stamp: 'AS 7/26/2022 13:22:59'!
isDark

	" If the text color is light, assume we are in dark mode"
	^ Theme current text luminance > 0.5! !

!OSProcess class methodsFor: '*EruditeExtensions' stamp: 'AS 7/26/2022 13:31:54'!
gnuplot: aString

	self waitForCommand:
		(self gnuplotCommand, ' ', aString) withBlanksTrimmed! !

!OSProcess class methodsFor: '*EruditeExtensions' stamp: 'AS 7/26/2022 13:31:49'!
gnuplotCommand
	
	^ ThisOSProcess thisOSProcess environment
		at: 'GNUPLOT' ifAbsent: ['gnuplot'].! !

!OSProcess class methodsFor: '*EruditeExtensions' stamp: 'AS 7/26/2022 13:19:01'!
mimetex: aString

	self waitForCommand:
		(self mimetexCommand, ' ', aString) withBlanksTrimmed! !

!OSProcess class methodsFor: '*EruditeExtensions' stamp: 'AS 7/26/2022 13:18:54'!
mimetexCommand
	
	^ ThisOSProcess thisOSProcess environment
		at: 'MIMETEX' ifAbsent: ['mimetex']! !

!OSProcess class methodsFor: '*EruditeExtensions' stamp: 'AS 7/26/2022 11:49:15'!
plantuml: aString

	^ self waitForCommand:
		(self plantumlCommand, ' ', aString) withBlanksTrimmed! !

!OSProcess class methodsFor: '*EruditeExtensions' stamp: 'AS 7/26/2022 11:49:08'!
plantumlCommand
	
	^ ThisOSProcess thisOSProcess environment
		at: 'PLANTUML' ifAbsent: ['plantuml'].! !

!OSProcess class methodsFor: '*EruditeExtensions' stamp: 'AS 7/26/2022 11:49:49'!
wkhtmltoimage: aString

	^ self waitForCommand:
		(self wkhtmltoimageCommand, ' ', aString) withBlanksTrimmed! !

!OSProcess class methodsFor: '*EruditeExtensions' stamp: 'AS 7/26/2022 11:50:12'!
wkhtmltoimageCommand
	
	^ ThisOSProcess thisOSProcess environment
		at: 'WKHTMLTOIMAGE' ifAbsent: ['wkhtmltoimage'].! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions-private' stamp: 'AS 7/29/2022 16:29:16'!
applyDarkTheme: aForm
	| whiteBgForm |
	whiteBgForm _ (Form extent: aForm extent depth: 32) fillWhite.
	whiteBgForm
		copy: whiteBgForm boundingBox
		from: 0@0
		in: aForm
		rule: Form blend.
		
	^ (whiteBgForm asGrayForm reverse asFormOfDepth: 32)
		mapColor: Color black to: Color transparent! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions-private' stamp: 'AS 7/27/2022 16:21:28'!
launchInteractivePlot: aPlotNode
	| gpPath |
	gpPath _ DirectoryEntry tempDirectory // (aPlotNode dataKey, '-interact.gp').
	gpPath exists ifFalse: [ gpPath fileContents: aPlotNode script ].
	OSProcess gnuplot: '-p ', gpPath pathName! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions-private' stamp: 'AS 7/27/2022 19:12:36'!
plotInteractButton: aPlotNode
	^ Text
		string: '[interact]'
		attributes: {
			TextEmphasis underlined.
			BlockTextAction do: [:anObject |
				self launchInteractivePlot: aPlotNode]
		}! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions-private' stamp: 'AS 7/27/2022 17:09:25'!
renderPlotInteractButton: aPlotNode
	stream
		nextPut: String lf;
		nextPut: (self plotInteractButton: aPlotNode)! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions-private' stamp: 'AS 7/27/2022 19:10:14'!
renderTextImage: aNode
	"A text image is an image that should be darkened under a dark theme"
	
	| form |
	form _ [document getNodeData: aNode]
		on: Error
		do: [:e | ^ stream nextPut: e printString].
		
	self renderTextImageForm: form! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions-private' stamp: 'AS 7/27/2022 19:13:34'!
renderTextImageForm: aForm

	stream nextPut:
		(Text streamContents:
			[:s | (self textImageMorph: aForm) printOn: s])! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions-private' stamp: 'AS 7/27/2022 19:02:10'!
textImageMorph: aForm

	^ ImageMorph new image:
		(Theme isDark
			ifTrue: [ self applyDarkTheme: aForm ]
			ifFalse: [ aForm ])! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions' stamp: 'AS 7/27/2022 17:07:30'!
visitFormula: aFormulaNode

	self renderTextImage: aFormulaNode! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions' stamp: 'AS 7/27/2022 17:07:20'!
visitHTML: anHTMLNode

	self renderTextImage: anHTMLNode! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions' stamp: 'AS 7/27/2022 17:09:25'!
visitPlot: aPlotNode

	self renderTextImage: aPlotNode.
	self renderPlotInteractButton: aPlotNode! !

!MorphicEruditeDocRenderer methodsFor: '*EruditeExtensions' stamp: 'AS 7/27/2022 17:07:00'!
visitUML: anUMLNode

	self renderTextImage: anUMLNode! !
FormulaEruditeExtension initialize!
HTMLEruditeExtension initialize!
PlotEruditeExtension initialize!
UMLEruditeExtension initialize!
