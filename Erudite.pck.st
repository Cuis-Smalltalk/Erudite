'From Cuis 5.0 [latest update: #4528] on 6 March 2021 at 5:28:35 pm'!
'Description Documenter and Literate Programming system for Cuis Smalltalk.

Author: Mariano Montone (marianomontone@gmail.com)'!
!provides: 'Erudite' 1 150!
!requires: 'PetitParserBinding' 1 0 nil!
!requires: 'PetitParser' 1 2 nil!
!requires: 'SqueakCompatibility' 1 29 nil!
!requires: 'Graphics-Files-Additional' 1 22 nil!
SystemOrganization addCategory: #'Erudite-Books'!
SystemOrganization addCategory: #'Erudite-Core'!
SystemOrganization addCategory: #'Erudite-Latex'!
SystemOrganization addCategory: #'Erudite-Morphic'!
SystemOrganization addCategory: #'Erudite-Parser'!
SystemOrganization addCategory: #'Erudite-Test'!


!classDefinition: #EruditePluggableTextModel category: #'Erudite-Morphic'!
PluggableTextModel subclass: #EruditePluggableTextModel
	instanceVariableNames: 'editing sourceGetter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditePluggableTextModel class' category: #'Erudite-Morphic'!
EruditePluggableTextModel class
	instanceVariableNames: ''!

!classDefinition: #EruditeSmalltalkTextModel category: #'Erudite-Morphic'!
TextModel subclass: #EruditeSmalltalkTextModel
	instanceVariableNames: 'styler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeSmalltalkTextModel class' category: #'Erudite-Morphic'!
EruditeSmalltalkTextModel class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookExplorer category: #'Erudite-Morphic'!
AbstractHierarchicalList subclass: #EruditeBookExplorer
	instanceVariableNames: 'book'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeBookExplorer class' category: #'Erudite-Morphic'!
EruditeBookExplorer class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocEditor category: #'Erudite-Morphic'!
TextEditor subclass: #EruditeDocEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeDocEditor class' category: #'Erudite-Morphic'!
EruditeDocEditor class
	instanceVariableNames: 'menu2'!

!classDefinition: #EruditeTextURL category: #'Erudite-Morphic'!
TextURL subclass: #EruditeTextURL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeTextURL class' category: #'Erudite-Morphic'!
EruditeTextURL class
	instanceVariableNames: ''!

!classDefinition: #BlockTextAction category: #'Erudite-Morphic'!
TextAction subclass: #BlockTextAction
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'BlockTextAction class' category: #'Erudite-Morphic'!
BlockTextAction class
	instanceVariableNames: ''!

!classDefinition: #EruditeForm category: #'Erudite-Morphic'!
Form subclass: #EruditeForm
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeForm class' category: #'Erudite-Morphic'!
EruditeForm class
	instanceVariableNames: ''!

!classDefinition: #InnerEruditeDocMorph category: #'Erudite-Morphic'!
InnerTextMorph subclass: #InnerEruditeDocMorph
	instanceVariableNames: 'editing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'InnerEruditeDocMorph class' category: #'Erudite-Morphic'!
InnerEruditeDocMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocEditorMorph category: #'Erudite-Morphic'!
TextModelMorph subclass: #EruditeDocEditorMorph
	instanceVariableNames: 'acceptContentsOnChange'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeDocEditorMorph class' category: #'Erudite-Morphic'!
EruditeDocEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocViewerMorph category: #'Erudite-Morphic'!
TextModelMorph subclass: #EruditeDocViewerMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeDocViewerMorph class' category: #'Erudite-Morphic'!
EruditeDocViewerMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeClassCommentMorph category: #'Erudite-Morphic'!
EruditeDocViewerMorph subclass: #EruditeClassCommentMorph
	instanceVariableNames: 'separator separatorHeight proportionalHeight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeClassCommentMorph class' category: #'Erudite-Morphic'!
EruditeClassCommentMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookReaderMorph category: #'Erudite-Morphic'!
SystemWindow subclass: #EruditeBookReaderMorph
	instanceVariableNames: 'explorerMorph eruditeViewerMorph explorer currentSection viewSources styledDocuments sourcesChanged bindings'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeBookReaderMorph class' category: #'Erudite-Morphic'!
EruditeBookReaderMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookEditorMorph category: #'Erudite-Morphic'!
EruditeBookReaderMorph subclass: #EruditeBookEditorMorph
	instanceVariableNames: 'sourceMorph liveEditing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeBookEditorMorph class' category: #'Erudite-Morphic'!
EruditeBookEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocEditorWindow category: #'Erudite-Morphic'!
SystemWindow subclass: #EruditeDocEditorWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeDocEditorWindow class' category: #'Erudite-Morphic'!
EruditeDocEditorWindow class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookSectionExplorerWrapper category: #'Erudite-Core'!
ListItemWrapper subclass: #EruditeBookSectionExplorerWrapper
	instanceVariableNames: 'section'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeBookSectionExplorerWrapper class' category: #'Erudite-Core'!
EruditeBookSectionExplorerWrapper class
	instanceVariableNames: ''!

!classDefinition: #EruditeMarkupGrammarTest category: #'Erudite-Test'!
TestCase subclass: #EruditeMarkupGrammarTest
	instanceVariableNames: 'parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Test'!
!classDefinition: 'EruditeMarkupGrammarTest class' category: #'Erudite-Test'!
EruditeMarkupGrammarTest class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkEruditeGrammarTest category: #'Erudite-Test'!
TestCase subclass: #SmalltalkEruditeGrammarTest
	instanceVariableNames: 'parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Test'!
!classDefinition: 'SmalltalkEruditeGrammarTest class' category: #'Erudite-Test'!
SmalltalkEruditeGrammarTest class
	instanceVariableNames: ''!

!classDefinition: #EruditeMarkupAutoCompleter category: #'Erudite-Parser'!
AutoCompleter subclass: #EruditeMarkupAutoCompleter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeMarkupAutoCompleter class' category: #'Erudite-Parser'!
EruditeMarkupAutoCompleter class
	instanceVariableNames: ''!

!classDefinition: #ClassMethodCommentTextStyler category: #'Erudite-Parser'!
SHTextStylerST80 subclass: #ClassMethodCommentTextStyler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'ClassMethodCommentTextStyler class' category: #'Erudite-Parser'!
ClassMethodCommentTextStyler class
	instanceVariableNames: ''!

!classDefinition: #ClassCommentTextStyler category: #'Erudite-Parser'!
SHTextStyler subclass: #ClassCommentTextStyler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'ClassCommentTextStyler class' category: #'Erudite-Parser'!
ClassCommentTextStyler class
	instanceVariableNames: ''!

!classDefinition: #SHTextStylerClassComment category: #'Erudite-Parser'!
SHTextStyler subclass: #SHTextStylerClassComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'SHTextStylerClassComment class' category: #'Erudite-Parser'!
SHTextStylerClassComment class
	instanceVariableNames: ''!

!classDefinition: #EruditeMarkupGrammar category: #'Erudite-Parser'!
PPCompositeParser subclass: #EruditeMarkupGrammar
	instanceVariableNames: 'heading4 heading3 heading2 heading1 heading markup unformatted erudite codeAction code bold italic plainText linkOptions linkOptionsList linkOption falseLinkOption trueLinkOption assignLinkOption link buttonCodeAction simpleCodeAction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeMarkupGrammar class' category: #'Erudite-Parser'!
EruditeMarkupGrammar class
	instanceVariableNames: ''!

!classDefinition: #EruditeMarkupParser category: #'Erudite-Parser'!
EruditeMarkupGrammar subclass: #EruditeMarkupParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeMarkupParser class' category: #'Erudite-Parser'!
EruditeMarkupParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeMarkupTextStyler category: #'Erudite-Parser'!
EruditeMarkupGrammar subclass: #EruditeMarkupTextStyler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeMarkupTextStyler class' category: #'Erudite-Parser'!
EruditeMarkupTextStyler class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkEruditeGrammar category: #'Erudite-Parser'!
PPCompositeParser subclass: #SmalltalkEruditeGrammar
	instanceVariableNames: 'smalltalkClass smalltalkClassMethod smalltalkClassMethodName smalltalkSelector text erudite smalltalkClassName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'SmalltalkEruditeGrammar class' category: #'Erudite-Parser'!
SmalltalkEruditeGrammar class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkEruditeParser category: #'Erudite-Parser'!
SmalltalkEruditeGrammar subclass: #SmalltalkEruditeParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'SmalltalkEruditeParser class' category: #'Erudite-Parser'!
SmalltalkEruditeParser class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkEruditeStyler category: #'Erudite-Parser'!
SmalltalkEruditeGrammar subclass: #SmalltalkEruditeStyler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'SmalltalkEruditeStyler class' category: #'Erudite-Parser'!
SmalltalkEruditeStyler class
	instanceVariableNames: ''!

!classDefinition: #EruditeBook category: #'Erudite-Core'!
Object subclass: #EruditeBook
	instanceVariableNames: 'title sections storageMethod author'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeBook class' category: #'Erudite-Core'!
EruditeBook class
	instanceVariableNames: ''!

!classDefinition: #CuisManual category: #'Erudite-Books'!
EruditeBook subclass: #CuisManual
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Books'!
!classDefinition: 'CuisManual class' category: #'Erudite-Books'!
CuisManual class
	instanceVariableNames: ''!

!classDefinition: #EruditeManual category: #'Erudite-Books'!
EruditeBook subclass: #EruditeManual
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Books'!
!classDefinition: 'EruditeManual class' category: #'Erudite-Books'!
EruditeManual class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookSection category: #'Erudite-Core'!
Object subclass: #EruditeBookSection
	instanceVariableNames: 'title parent subsections document'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeBookSection class' category: #'Erudite-Core'!
EruditeBookSection class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocument category: #'Erudite-Core'!
Object subclass: #EruditeDocument
	instanceVariableNames: 'contents images'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeDocument class' category: #'Erudite-Core'!
EruditeDocument class
	instanceVariableNames: ''!

!classDefinition: #EruditeSystem category: #'Erudite-Core'!
Object subclass: #EruditeSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeSystem class' category: #'Erudite-Core'!
EruditeSystem class
	instanceVariableNames: ''!

!classDefinition: #LatexEruditeDocRenderer category: #'Erudite-Latex'!
Object subclass: #LatexEruditeDocRenderer
	instanceVariableNames: 'stream requestor highlightSyntax book documentClass texFilePath'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Latex'!
!classDefinition: 'LatexEruditeDocRenderer class' category: #'Erudite-Latex'!
LatexEruditeDocRenderer class
	instanceVariableNames: ''!

!classDefinition: #DocLinkRenderer category: #'Erudite-Morphic'!
Object subclass: #DocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'DocLinkRenderer class' category: #'Erudite-Morphic'!
DocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #ClassDocLinkRenderer category: #'Erudite-Morphic'!
DocLinkRenderer subclass: #ClassDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'ClassDocLinkRenderer class' category: #'Erudite-Morphic'!
ClassDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #ImageDocLinkRenderer category: #'Erudite-Morphic'!
DocLinkRenderer subclass: #ImageDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'ImageDocLinkRenderer class' category: #'Erudite-Morphic'!
ImageDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #MessageDocLinkRenderer category: #'Erudite-Morphic'!
DocLinkRenderer subclass: #MessageDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'MessageDocLinkRenderer class' category: #'Erudite-Morphic'!
MessageDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #MethodDocLinkRenderer category: #'Erudite-Morphic'!
DocLinkRenderer subclass: #MethodDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'MethodDocLinkRenderer class' category: #'Erudite-Morphic'!
MethodDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #SectionDocLinkRenderer category: #'Erudite-Morphic'!
DocLinkRenderer subclass: #SectionDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'SectionDocLinkRenderer class' category: #'Erudite-Morphic'!
SectionDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #SelectorDocLinkRenderer category: #'Erudite-Morphic'!
DocLinkRenderer subclass: #SelectorDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'SelectorDocLinkRenderer class' category: #'Erudite-Morphic'!
SelectorDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #UrlDocLinkRenderer category: #'Erudite-Morphic'!
DocLinkRenderer subclass: #UrlDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'UrlDocLinkRenderer class' category: #'Erudite-Morphic'!
UrlDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #MorphicEruditeDocRenderer category: #'Erudite-Morphic'!
Object subclass: #MorphicEruditeDocRenderer
	instanceVariableNames: 'stream document requestor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'MorphicEruditeDocRenderer class' category: #'Erudite-Morphic'!
MorphicEruditeDocRenderer class
	instanceVariableNames: ''!

!classDefinition: #DocNode category: #'Erudite-Parser'!
Object subclass: #DocNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocNode class' category: #'Erudite-Parser'!
DocNode class
	instanceVariableNames: ''!

!classDefinition: #DocActionLink category: #'Erudite-Parser'!
DocNode subclass: #DocActionLink
	instanceVariableNames: 'title action'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocActionLink class' category: #'Erudite-Parser'!
DocActionLink class
	instanceVariableNames: ''!

!classDefinition: #DocCode category: #'Erudite-Parser'!
DocNode subclass: #DocCode
	instanceVariableNames: 'code action'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocCode class' category: #'Erudite-Parser'!
DocCode class
	instanceVariableNames: ''!

!classDefinition: #DocHeading category: #'Erudite-Parser'!
DocNode subclass: #DocHeading
	instanceVariableNames: 'heading level'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocHeading class' category: #'Erudite-Parser'!
DocHeading class
	instanceVariableNames: ''!

!classDefinition: #DocLink category: #'Erudite-Parser'!
DocNode subclass: #DocLink
	instanceVariableNames: 'target type label options'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocLink class' category: #'Erudite-Parser'!
DocLink class
	instanceVariableNames: ''!

!classDefinition: #DocList category: #'Erudite-Parser'!
DocNode subclass: #DocList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocList class' category: #'Erudite-Parser'!
DocList class
	instanceVariableNames: ''!

!classDefinition: #DocUnformatted category: #'Erudite-Parser'!
DocNode subclass: #DocUnformatted
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocUnformatted class' category: #'Erudite-Parser'!
DocUnformatted class
	instanceVariableNames: ''!

!classDefinition: #EruditeStyledText category: #'Erudite-Parser'!
DocNode subclass: #EruditeStyledText
	instanceVariableNames: 'text style'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeStyledText class' category: #'Erudite-Parser'!
EruditeStyledText class
	instanceVariableNames: ''!


!EruditeDocEditor commentStamp: '<historical>' prior: 0!
Tap and hold emulates button2 preference has to be false in order for clicking on links to work properly (avoid opening a context menu).!

!EruditeBookReaderMorph commentStamp: 'MM 3/5/2021 17:31:49' prior: 0!
!!!!!! EruditeBookReaderMorph

This is the {EruditeBook::class} reader.

To open a reader on a Book, send {open::selector} to it:

[[[EruditeManual open]]] doIt.

See {Erudite Manual#Book reader and editor ::section}.!

!EruditeBookEditorMorph commentStamp: 'MM 3/6/2021 17:27:53' prior: 0!
!!!!!! EruditeBookEditorMorph

This is the {EruditeBook::class} editor.

To open an editor on a Book, send {edit::selector} to it:

[[[EruditeManual edit]]] doIt.

See {Erudite Manual#Book reader and editor ::section}.!

!ClassMethodCommentTextStyler commentStamp: '<historical>' prior: 0!
A Smalltalk method styler that also styles comments.!

!EruditeMarkupGrammar commentStamp: '<historical>' prior: 0!
Extensible markup parser for Smalltalk comments and other entities.
Syntax:
- Heading. !!!!heading !!!!!!subheading
- Links. {link}.
   - {target::type|label}[options].
      Examples: 
	{Object::class}
      {name::instVar}[class=SomeClass]
      {name::classVar}[class=SomeClass]
      {Class>>method::method}[browse=senders]
      {Class>>method::method}[browse=implementors]
      {Class>>method::method}
LinkType handlers are registered in the renderer. For example, how to handle class and instVars links.
- Actions. [[code]] action.
  - [[code]] [doIt/exploreIt/inspectIt]. <<-- ends in dot. creates button after code.
  - [[code]] asButton: 'buttonlabel'[ action: inspect]. <-- creates button, code not visible. action is optional. ends in dot
- Code. [[code]]
- Unformatted. ```unformatted```.
- Lists. Start with -.
- **bold** and //italic//.!

!SmalltalkEruditeGrammar commentStamp: '<historical>' prior: 0!
Tries to match particular entities in Smalltalk comments.
1. Match classes. Name starts with uppercase and it is the name of a system class. Ex: Object. Generate a link that browses the class.
2. Match selectors. Starts with #. Generates a link that browses the selector.
The context for the link actions is the class the comment belongs to. That can be used to browse the selector.
3. Match methods. Class>>method format. !

!SmalltalkEruditeParser commentStamp: '<historical>' prior: 0!
A parser of Smalltalk comments into Erudite documents. This parser tries to interpret the different type of references in Smalltalk comments, like classes methods and selectors.!

!EruditeBook commentStamp: '<historical>' prior: 0!
A book with title, sections, documents.!

!EruditeBookSection commentStamp: '<historical>' prior: 0!
A section of a Book.!

!EruditeDocument commentStamp: '<historical>' prior: 0!
An Erudite document. A piece of text meant to be formatted.!

!LatexEruditeDocRenderer commentStamp: '<historical>' prior: 0!
Renders a Book to a Latex file.

Example:

(LatexEruditeDocRenderer on: CuisManual new)
	texFilePath: '/home/marian/src/Cuis/Erudite/CuisManual.tex';
	render.
	
(LatexEruditeDocRenderer on: EruditeManual new)
	texFilePath: '/home/marian/src/Cuis/Erudite/EruditeManual.tex';
	render.

Then process with pdflatex -shell-escape <file.tex>!

!MorphicEruditeDocRenderer commentStamp: '<historical>' prior: 0!
Renders a Document to a TextMorph.

Example:

erudite _ 
SmalltalkEruditeParser parse: 'This is an Object.

Look at Object>>at:

Properties are triggered via #triggerEvent:'.

(MorphicEruditeDocRenderer on: erudite) render edit.!

!EruditeForm methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:46:23'!
storeOn: aStream

	aStream nextPutAll: '(EruditeForm fromBase64String:'.
	self base64String storeOn: aStream.
	aStream nextPut: $).
	
	! !

!EruditeBookReaderMorph methodsFor: 'bindings' stamp: 'MM 12/11/2018 17:20'!
bindingOf: aString

	(bindings includesKey: aString) ifFalse: [
		aString first isUppercase
			ifTrue: [^nil]
			ifFalse: [bindings at: aString put: nil]].
	^bindings associationAt: aString! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 12/4/2018 20:16'!
storeOn: aStream

	aStream nextPutAll: '(';
	              nextPutAll: self class name;
	              nextPutAll: ' basicNew';
	              nextPutAll: ' title: '; store: title;
	              nextPutAll: '; sections: '; store: sections;
			   nextPutAll: '; updateParents; yourself)'! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 20:10'!
storeOn: aStream

	aStream
		nextPutAll: '('; 
	 	nextPutAll: self class name;
		nextPutAll: ' basicNew';
		nextPutAll: ' title: '; store: title;
		nextPutAll: '; document: '; store: document;
		nextPutAll: '; subsections: '; store: subsections;
		nextPutAll: '; yourself)'
		        ! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:15:42'!
storeOn: aStream

	aStream nextPutAll: '((EruditeDocument contents: ';
			nextPutAll: contents asString printString;
			nextPutAll: ') images: '; store: images;
			nextPutAll: '; yourself)'! !

!EruditePluggableTextModel methodsFor: 'accessing' stamp: 'MM 12/13/2018 16:17'!
editing
	"Answer the value of editing"

	^ editing! !

!EruditePluggableTextModel methodsFor: 'accessing' stamp: 'MM 12/13/2018 16:52'!
editing: anObject
	"Set the value of editing"

	editing _ anObject.
	self refetch! !

!EruditePluggableTextModel methodsFor: 'accessing' stamp: 'MM 3/5/2021 17:11:51'!
sourceGetter
	"Answer the value of sourceGetter"

	^ sourceGetter! !

!EruditePluggableTextModel methodsFor: 'accessing' stamp: 'MM 3/5/2021 17:11:51'!
sourceGetter: anObject
	"Set the value of sourceGetter"

	sourceGetter _ anObject! !

!EruditePluggableTextModel methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 16:35'!
editorClass

	^ EruditeDocEditor! !

!EruditePluggableTextModel methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 16:58'!
getActualContents

	|text|
	
	text _ textProvider perform: textGetter.
	^ editing
		 ifTrue: [ text ]
		 ifFalse: [|parsed|
			parsed _ EruditeMarkupParser parse: text.
			MorphicEruditeDocRenderer render: parsed]
	! !

!EruditePluggableTextModel methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 17:12:35'!
initWith: aTextProvider

	super initWith: aTextProvider.
	editing _ true.
	sourceGetter _ nil.! !

!EruditePluggableTextModel methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 16:46'!
refetch
	"Answer true if actualContents was actually fetched."
	textGetter
		ifNil: [
			actualContents ifNil: [
				self actualContents: Text new ].
			^false ]
		ifNotNil: [
			self actualContents: (Text
				initialFont: Preferences standardCodeFont
				stringOrText: self getActualContents).
			self changed: #refetched.
			^true ]! !

!EruditePluggableTextModel methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 17:13:27'!
sourceContents
	^ sourceGetter ifNotNil: [textProvider perform: sourceGetter]
		ifNil: [textProvider perform: textGetter]! !

!EruditeSmalltalkTextModel methodsFor: 'as yet unclassified' stamp: 'MM 12/16/2018 11:01:54'!
classOrMetaClass: aClass

	styler classOrMetaClass: aClass! !

!EruditeSmalltalkTextModel methodsFor: 'as yet unclassified' stamp: 'MM 12/16/2018 11:01:33'!
formatAndStyle

	self formatAndStyleIfNeededWith: styler! !

!EruditeSmalltalkTextModel methodsFor: 'as yet unclassified' stamp: 'MM 12/16/2018 11:02:06'!
initialize
	
	super initialize.
	
	styler _ SHTextStylerST80 new textModel: self.! !

!EruditeSmalltalkTextModel methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 16:18:33'!
shouldStyle: text with: aTextStyler

	^ true! !

!EruditeBookExplorer methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:29'!
explorerList
	^ book sections collect: [ :bookSection |
		EruditeBookSectionExplorerWrapper on: bookSection ].! !

!EruditeBookExplorer methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 19:57'!
initialize: aBook

	book _ aBook.
	! !

!EruditeBookExplorer class methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 13:57'!
on: aBook

	^ self new initialize: aBook! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 17:24:02'!
editEruditeSource

	|sourceModel| 
	
	sourceModel _ EruditePluggableTextModel on: model textProvider.
	
	sourceModel textGetter: #eruditeSources textSetter: #eruditeSources:notifying: selectionGetter: nil.
	
	EruditeDocEditorWindow open: sourceModel label: 'Edit Erudite source'.! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/19/2018 12:54:08'!
getInsertMarkupMenu
	
	| menu |
	menu _ (MenuMorph new defaultTarget: self)
			add: 'Heading' action: #insertHeading;
			add:  'Subheading' action: #insertSubheading;
			addLine;
			add: 'Bold' action: #insertBold;
			add: 'Italics' action: #insertItalics;
			addLine;
			add: 'Link' action: #insertLink;
			add: 'Code' action: #insertCode;
			yourself.
			
	menu popUpInWorld: morph world.! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 3/6/2021 17:16:43'!
getMenu

	|menu|
	
	menu _ super getMenu.
	
	menu addLine;
		   " add: 'Toggle editing' action: #toggleEditing;
		    add: 'Insert markup (i)...' action: #getInsertMarkupMenu."
		add: 'Edit Erudite source' action: #editEruditeSource icon: #textEditorIcon.
		
	^ menu! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/8/2018 12:17'!
insertBold

	self addString: '**text in bold**'.
	self selectFrom: self stopIndex - 'text in bold**' size to: self stopIndex - 3.
	! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/12/2018 19:06'!
insertCode

	self addString: '[[[code]]]'.
	self selectFrom: self stopIndex - 'code]]]' size to: self stopIndex - 4.
	! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/8/2018 11:59'!
insertHeading

	self addString: '!!!! heading'.
	self selectFrom: self stopIndex - 'heading' size to: self stopIndex.
	
	"self afterSelectionInsertAndSelect: '* heading'"
	

	! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/8/2018 12:17'!
insertItalics

	self addString: '//text in italics//'.
	self selectFrom: self stopIndex - 'text in italics//' size to: self stopIndex - 3.
	! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/12/2018 19:09'!
insertLink

	self addString: '{target::type|label}'
	! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/19/2018 12:55:57'!
insertMarkup: aKeyboardEvent

	self getInsertMarkupMenu .
	^ true! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/8/2018 12:00'!
insertSubheading

	self addString: '!!!!!! subheading'.
	self selectFrom: self stopIndex - 'subheading' size to: self stopIndex.! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:26'!
save: aKeyboardEvent

	self acceptContents.
	^ true! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 14:47:44'!
sourceContents
	model sourceContents ! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 16:56'!
toggleEditing
	|editing|
	
	editing _ morph toggleEditing.
	model editing: editing
	! !

!EruditeDocEditor class methodsFor: 'as yet unclassified' stamp: 'MM 12/12/2018 18:57'!
cmdShortcutsSpec
	"
	Editor initialize
	"
	"arranged in QWERTY keyboard order"
	^#(
		#(		$s	#save:								'Save (i.e. accept)')
		#(		$l	#cancelEdits:						'Cancel')
		#(       $i  #insertMarkup:                         'Insert markup')
	)! !

!EruditeTextURL methodsFor: 'as yet unclassified' stamp: 'MM 12/19/2018 16:34:46'!
actOnClickFor: anObject 
	"Copy url to the clipboard and inform."
	
	Clipboard default storeObject: self url.
	self inform: (String streamContents: [:s |
					s nextPutAll: url; newLine;
					   nextPutAll: '(copied to the clipboard)']).
	^true! !

!EruditeTextURL class methodsFor: 'as yet unclassified' stamp: 'MM 12/19/2018 16:38:33'!
url: aString

	^ self new url: aString; yourself! !

!BlockTextAction methodsFor: 'as yet unclassified' stamp: 'MM 11/17/2018 11:59'!
actOnClickFor: anObject
	block value: anObject.
	^ true ! !

!BlockTextAction methodsFor: 'as yet unclassified' stamp: 'MM 11/17/2018 11:58'!
initialize: aBlock

	block _ aBlock! !

!BlockTextAction class methodsFor: 'as yet unclassified' stamp: 'MM 11/17/2018 12:04'!
do: aBlock
	"
	('Some text. ',
	(Text string: '<click here>' attribute: (BlockTextAction do: [:x | TranscriptWindow openTranscript])), 
	' more regular text') edit
	"
	^ self new initialize: aBlock! !

!EruditeForm methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:47:53'!
base64String

	"TODO: how to support other image formats apart from PNG?"
	 ^ ("ImageReadWriter" PNGReadWriter bytesFor: self) base64Encoded.! !

!EruditeForm class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 20:16:23'!
fromBase64String: aString

	|form|
	
	form _ ImageReadWriter formFromStream: aString base64Decoded asByteArray readStream.

	^ form as: EruditeForm! !

!EruditeForm class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 20:16:30'!
fromFileNamed: aString

	^ (super fromFileNamed: aString) as: EruditeForm! !

!InnerEruditeDocMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 16:57'!
initialize

	super initialize.
	editing _ false! !

!InnerEruditeDocMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:51'!
keyStroke: aKeyboardEvent

	super keyStroke: aKeyboardEvent.
	
	owner acceptsContentsOnChange ifTrue: [
		self hasUnacceptedEdits  ifTrue: [
			self acceptContents]]! !

!InnerEruditeDocMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 16:59'!
toggleEditing

	editing _ editing not.
	owner enableEditing: editing.
	^ editing! !

!EruditeDocEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:38'!
acceptContents

	^ self editor acceptContents! !

!EruditeDocEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:30'!
acceptContentsOnChange

	acceptContentsOnChange _ true! !

!EruditeDocEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:33'!
acceptContentsOnChange: aBoolean

	acceptContentsOnChange _ aBoolean! !

!EruditeDocEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:37'!
acceptsContentsOnChange

	^ acceptContentsOnChange ! !

!EruditeDocEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 16:32'!
initialize

	super initialize.
	
	acceptContentsOnChange _ false! !

!EruditeDocEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:30'!
innerMorphClass
	^ InnerEruditeDocMorph.! !

!EruditeDocEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 15:48:54'!
textProvider: aTextProvider textGetter: textGetter textSetter: textSetter selectionGetter: selectionGetter
	| newModel answer |
	answer _ self new.
	newModel _ EruditePluggableTextModel on: aTextProvider.
	newModel textGetter: textGetter textSetter: textSetter selectionGetter: selectionGetter.
	aTextProvider addDependent: newModel.
	answer model: newModel.
	^answer! !

!EruditeDocViewerMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 15:11'!
acceptsContentsOnChange
	^ false! !

!EruditeDocViewerMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:30'!
innerMorphClass
	^ InnerEruditeDocMorph.! !

!EruditeDocViewerMorph methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 15:49:04'!
textProvider: aTextProvider textGetter: textGetter textSetter: textSetter selectionGetter: selectionGetter
	| newModel answer |
	answer _ self new.
	newModel _ EruditePluggableTextModel on: aTextProvider.
	newModel textGetter: textGetter textSetter: textSetter selectionGetter: selectionGetter.
	aTextProvider addDependent: newModel.
	answer model: newModel.
	^answer! !

!EruditeClassCommentMorph methodsFor: 'as yet unclassified' stamp: 'jmv 3/23/2020 19:12:45'!
hidePane

	self hide.
	separator visible ifTrue: [
		proportionalHeight _ self layoutSpec privateProportionalHeight.
		separatorHeight _ separator layoutSpec privateFixedHeight ].
	separator layoutSpec fixedHeight: 0.
	self layoutSpec proportionalHeight: 0.
	separator ifNotNil: [ separator hide ]! !

!EruditeClassCommentMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 17:08'!
separator: aMorph
	separator _ aMorph! !

!EruditeClassCommentMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 17:08'!
showPane

	self show.
	proportionalHeight ifNotNil: [
		self layoutSpec proportionalHeight: proportionalHeight ].
	separator ifNotNil: [
		separatorHeight ifNotNil: [
			separator layoutSpec fixedHeight: separatorHeight ].
		separator show ]! !

!EruditeClassCommentMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 17:08'!
update: anAspect
	super update: anAspect.
	anAspect == #editSelection ifFalse: [ ^self ].
	(model textProvider editSelection == #editClass)
		ifTrue: [ self showPane ]
		ifFalse: [ self hidePane ]! !

!EruditeBookReaderMorph methodsFor: 'bindings' stamp: 'MM 12/11/2018 16:28'!
bindingNamesDo: aBlock

	bindings keysDo: aBlock! !

!EruditeBookReaderMorph methodsFor: 'bindings' stamp: 'MM 12/11/2018 16:28'!
hasBindingOf: aString
	^bindings includesKey: aString! !

!EruditeBookReaderMorph methodsFor: 'bindings' stamp: 'MM 12/11/2018 16:28'!
hasBindingThatBeginsWith: aString 

	bindings keysDo: [ :each |
		(each beginsWith: aString) ifTrue: [ ^true ] ].
	^false! !

!EruditeBookReaderMorph methodsFor: 'bindings' stamp: 'MM 12/11/2018 16:28'!
initializeBindings
	
	bindings _ Dictionary new! !

!EruditeBookReaderMorph methodsFor: 'bindings' stamp: 'MM 12/11/2018 17:29'!
selectionInterval

	"Needed for bindings handling."

	^ 1 to: 1! !

!EruditeBookReaderMorph methodsFor: 'bindings' stamp: 'MM 12/11/2018 17:28'!
text
	"Needed for bindings handling."
	^ ''! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 11:35'!
addSection

	| title |
	
	title _ FillInTheBlankMorph request: 'Section name: '.
	
	title ifNotEmpty: [
		currentSection 
			ifNotNil: [currentSection addSection: title contents: '']
			ifNil: [model addSection: title contents: ''].
		self sectionsChanged]	! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 11:36'!
bookIsUnsaved

	^ sourcesChanged! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'jmv 6/8/2020 10:53:58'!
buildMorphicWindow
	| leftColumn previousButton nextButton navRow |
	layoutMorph beRow.
	leftColumn _ LayoutMorph newColumn.
	explorer _ EruditeBookExplorer on: model.
	explorer addDependent: self.
	explorerMorph _ HierarchicalListMorph
		model: explorer
		listGetter: #explorerList
		indexGetter: #getCurrentSelection
		indexSetter: #noteNewSelection:
		mainView: self
		menuGetter: #explorerMenu
		keystrokeAction: #explorerKey:from:.
	explorerMorph
		autoDeselect: true;
		color: Color white.
	
	leftColumn addMorphUseAll: explorerMorph.
	previousButton _ PluggableButtonMorph
		model: self
		action: #gotoPreviousSection.
	previousButton icon: (Theme current fetch: #('16x16' 'actions' 'go-previous' )).
	nextButton _ PluggableButtonMorph
		model: self
		action: #gotoNextSection.
	nextButton icon: (Theme current fetch: #('16x16' 'actions' 'go-next' )).
	navRow _ LayoutMorph newRow.
	navRow addMorph: previousButton.
	"proportionalWidth: 0.5"
	navRow addMorph: nextButton.
	"proportionalWidth: 0.5"
	navRow axisEdgeWeight: #center.
	leftColumn
		addMorph: navRow
		fixedHeight: 30.
	layoutMorph
		addMorph: leftColumn
		proportionalWidth: 0.25.
	layoutMorph addAdjusterMorph.
	eruditeViewerMorph _ EruditeDocViewerMorph
		textProvider: self
		textGetter: #contents
		textSetter: #contents:notifying:.
	eruditeViewerMorph model when: #gotoSection send: #gotoSectionNamed: to: self.
	eruditeViewerMorph disableEditing.
	
	
	model sections ifNotEmpty: [ 
		explorerMorph expandRoot.
		self gotoSection: model sections first].
	
	layoutMorph addMorphUseAll: eruditeViewerMorph.! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 11:39'!
closeBoxHit

	self bookIsUnsaved 
		ifTrue: [
			(self confirm: 'The book contains unsaved changed. Exit anyway?')
				ifTrue: [^ super closeBoxHit]]
		ifFalse: [^ super closeBoxHit]! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 23:34'!
contents

	^ currentSection 
		ifNotNil: [
			viewSources 
				ifTrue: [currentSection document contents]
				ifFalse: [self getStyledText: currentSection document]]
		ifNil: ['']! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 11:40'!
contents: aString notifying: aRequestor

	viewSources ifTrue: [
		currentSection document contents: aString.
		self invalidateDocumentStyle: currentSection document.
		sourcesChanged _ true].
	^ true
				

	! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 11:39'!
contentsChanged

	self changed: #contents! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 1/22/2019 18:34:01'!
correctFrom: aSmallInteger to: aSmallInteger2 with: aString 
	! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'tsl 9/20/2019 15:15:11'!
drawLabelOn: aCanvas

	| e x0 y0 f w availableW l |
	e _ self titleBarButtonsExtent.
	x0 _  e x * 4 + 24.
	y0 _ 2.
	f _ Preferences windowTitleFont.
	availableW _ extent x - x0.
	l _ labelString.
	w _ f widthOfString: l.
	[ w > availableW ] whileTrue: [
		l _ l squeezedTo: (1.0 * l size * availableW / w) truncated.
		l isEmpty ifTrue: [ ^self ].
		w _ f widthOfString: l ].
	aCanvas
		drawString: l
		at: x0@y0
		font: f
		color: Color white
		embossed: false! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 15:02'!
editBook

	model edit! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:30'!
editorClassFor: textGetter
	"Enable any object to be the textProvider for a PluggableTextModel"
	^ EruditeDocEditor.! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 17:24:07'!
eruditeSources
	^ currentSection document contents! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 17:24:16'!
eruditeSources: aString notifying: aRequestor
	currentSection ifNil: [^ self inform: 'Create or select a book section to edit'].
	currentSection document contents: aString.
	self invalidateDocumentStyle: currentSection document.
	sourcesChanged _ true.
	self contentsChanged.
	^ true! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/2/2018 00:06'!
exploreBook

	model explore! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/18/2018 19:09:56'!
exploreVariables

	bindings explore! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/18/2018 19:11:00'!
explorerMenu

	|menu|
	
	menu _ MenuMorph new defaultTarget: self.
	menu add: 'add section' action: #addSection.
	menu lastItem setIcon: Theme current newIcon.
	menu addLine.
	menu add: 'rename section' action: #renameSection.
	menu lastItem setIcon: Theme current textEditorIcon.
	menu add: 'remove section' action: #removeSection.
	menu lastItem setIcon: Theme current deleteIcon.
	menu addLine.
	menu add: 'move up' action: #moveSectionUp.
	menu add: 'move down' action: #moveSectionDown.
	menu addLine;
		add: 'toggle view sources' action: #toggleViewSources.
	menu lastItem setIcon: Theme current switchIcon.
	menu add: 'explore book' action: #exploreBook.
	menu lastItem setIcon: Theme current exploreIcon.
	menu add: 'explore variables' action: #exploreVariables.
	menu lastItem setIcon: Theme current exploreIcon.
	menu add: 'reset variables'	action: #initializeBindings.
	menu addLine.
	menu add: 'open' action: #openBook.
	menu lastItem setIcon: Theme current openIcon.
	menu add: 'save' action: #saveBook;
		add: 'save as ..' action: #saveBookAs.
	menu lastItem setIcon: Theme current saveAsIcon.
	menu add: 'reload' action: #reloadBook.
	menu lastItem setIcon: Theme current updateIcon.
	menu add: 'refresh' action: #refreshBook.
	menu lastItem setIcon: Theme current changesIcon.
	menu add: 'edit' action: #editBook.
	menu lastItem setIcon: Theme current textEditorIcon.	
	
	^ menu! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/18/2018 00:31:08'!
getStyledText: aDocument
	^ styledDocuments
		at: aDocument
		ifAbsent: [ | erudite text |
			erudite _ EruditeMarkupParser parse: aDocument contents.
			"We transplant the images from document to styledDocument and back. TODO: this is not good!!!! FIX"
			erudite images: aDocument images.
			text _ MorphicEruditeDocRenderer render: erudite notifying: self.
			styledDocuments at: aDocument put: text.
			"TODO: this is not good!!!! FIX"
			aDocument images: erudite images.
			text ].! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/9/2018 22:09'!
gotoNextSection

	currentSection ifNotNil: [
		currentSection nextSection ifNotNil: [:aSection |
			self gotoSection: aSection]]! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/9/2018 22:09'!
gotoPreviousSection

	currentSection ifNotNil: [
		currentSection previousSection ifNotNil: [:aSection |
			self gotoSection: aSection]]! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 00:20'!
gotoSection: aSection

	|highlightMorph|

	currentSection _ aSection.
	
	self contentsChanged.
	
	highlightMorph _ explorerMorph scroller
		findDeepSubmorphThat: [:aMorph | 
			(aMorph complexContents respondsTo: #section) and: [aMorph complexContents section == aSection]]
		ifAbsent: [nil].
		
	highlightMorph ifNotNil: [explorerMorph setSelectedMorph: highlightMorph ]
		 ! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 13:50'!
gotoSectionNamed: aString
	
	|section|
	
	section _ model findSectionNamed: aString
						ifAbsent: [^nil].
						
	self gotoSection: section! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 1/23/2019 14:05:18'!
initialExtent

	^ 600@600! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 23:29'!
invalidateDocumentStyle: aDocument

	styledDocuments removeKey: aDocument ifAbsent: []! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 14:13'!
model: aBook

	aBook ifNotNil: [self setLabel: aBook title].
	
	^ super model: aBook! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 17:52'!
moveSectionDown

	currentSection ifNotNil: [
		|parent after|
		parent _ currentSection parent.
		after _ parent sections after: currentSection ifNone: [^ nil]. 
		parent sections remove: currentSection.
		parent sections add: currentSection after: after.
		self sectionsChanged]! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 17:51'!
moveSectionUp

	currentSection ifNotNil: [
		|parent before|
		parent _ currentSection parent.
		before _ parent sections before: currentSection ifNone: [^ nil]. 
		parent sections remove: currentSection.
		parent sections add: currentSection before: before.
		self sectionsChanged]! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 1/22/2019 18:43:20'!
notify: aString at: aSmallInteger in: aReadStream 
	self inform: aString! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:27'!
openBook
	EruditeBook withBookSelectionDo: [ :book |
		book open ].! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 14:58'!
refreshBook

	styledDocuments _ Dictionary new.
	self contentsChanged! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 12:35'!
reloadBook

	model load.
	currentSection _ nil.
	self sectionsChanged; contentsChanged ! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 15:39'!
removeSection

	currentSection ifNotNil: [
		(self confirm: 'Remove section ', currentSection title, '?') ifTrue: [
			currentSection parent removeSection: currentSection.
			self sectionsChanged; contentsChanged]]! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:02'!
renameSection

	currentSection  ifNotNil: [ | title |
		title _ FillInTheBlankMorph request: 'Section name: ' initialAnswer: currentSection title.
			
		title ifNotEmpty: [
			currentSection title: title.
			self sectionsChanged; contentsChanged]]
		
		! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 11:36'!
saveBook

	model store.
	sourcesChanged _ false! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:04:04'!
saveBookAs

	| title |
	title _ FillInTheBlankMorph request: 'A name for the new book:'.
	
	title ifNotEmpty: [
		|newBook|
		newBook _ model copy.
		newBook title: title.
		newBook store.
		newBook edit.
		model _ newBook.
		currentSection _ nil.
		self sectionsChanged ; contentsChanged ]! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 17:44'!
sectionsChanged
	explorer changed: #explorerList! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 1/22/2019 18:32:46'!
selectFrom: aSmallInteger to: aSmallInteger2 
! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 1/22/2019 18:33:19'!
selectInvisiblyFrom: aSmallInteger to: aSmallInteger2 
! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 15:45:23'!
sourceContents
	^ currentSection document contents! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 16:09:37'!
sourceContents: aString notifying: aRequestor
	currentSection ifNil: [^ self inform: 'Create or select a book section to edit'].
	currentSection document contents: aString.
	self invalidateDocumentStyle: currentSection document.
	sourcesChanged _ true.
	self contentsChanged.
	^ true! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 11:36'!
sourcesChanged

	^ sourcesChanged! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 12:55'!
toggleViewSources

	viewSources _ viewSources not.
	eruditeViewerMorph enableEditing: viewSources.
	self contentsChanged! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:02'!
update: aSymbol

	aSymbol == #getCurrentSelection ifTrue: [
		currentSection _ explorer getCurrentSelection 	ifNotNil: [:sel | sel section].
		self contentsChanged]! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 22:45'!
windowColor

	^ Color pink veryMuchDarker ! !

!EruditeBookReaderMorph methodsFor: 'initialization' stamp: 'MM 1/23/2019 14:03:42'!
initialize

	super initialize.
	
	viewSources _ false.
	styledDocuments _ Dictionary new.
	sourcesChanged _ false.
	self initializeBindings ! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/12/2018 18:56'!
buildMorphicWindow
	super buildMorphicWindow.
	sourceMorph _ EruditeDocEditorMorph
		textProvider: self
		textGetter: #sourceContents
		textSetter: #sourceContents:notifying:.
	sourceMorph acceptContentsOnChange: liveEditing.
	layoutMorph
		addAdjusterAndMorph: sourceMorph
		proportionalWidth: 1.! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 00:50'!
contents

	^ currentSection 
		ifNotNil: [
			self getStyledText: currentSection document]
		ifNil: ['']! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:04'!
contentsChanged

	super contentsChanged.
	self changed: #sourceContents! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 13:43:58'!
explorerMenu

	|menu|
	
	menu _ super explorerMenu.
	
	menu add: 'toggle live editing' action: #toggleLiveEditing.
	menu lastItem setIcon: Theme current switchIcon.
	
	menu addLine.
	menu add: 'export to latex' action: #exportToLatex.
	menu lastItem setIcon: Theme current saveIcon.
	
	^ menu! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 13:48:55'!
exportToLatex
	
	| defaultFilePath |
	
	defaultFilePath _ DirectoryEntry currentDirectory / (model title, '.tex').
	self request: 'Export to:' initialAnswer: defaultFilePath asString do: [:filePath |
		(LatexEruditeDocRenderer on: model)
			texFilePath: filePath;
			render.
		self inform: 'Book exported']! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 1/23/2019 14:06:54'!
initialExtent

	^ RealEstateAgent standardWindowExtent ! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/9/2018 21:21'!
initialize

	super initialize.
	
	viewSources _ true.
	liveEditing _ true! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:27'!
openBook
	EruditeBook withBookSelectionDo: [ :book |
		book edit ].! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 10:59'!
sourceContents

	^ currentSection 
		ifNotNil: [
			currentSection document contents]
		ifNil: ['']! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 19:49'!
sourceContents: aString notifying: aRequestor
	currentSection ifNil: [^ self inform: 'Create or select a book section to edit'].
	currentSection document contents: aString.
	self invalidateDocumentStyle: currentSection document.
	sourcesChanged _ true.
	self contentsChanged.
	^ true
				! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/9/2018 21:22'!
toggleLiveEditing

	liveEditing _ liveEditing not.
	
	sourceMorph acceptContentsOnChange: liveEditing! !

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 00:48'!
toggleViewSources

	viewSources  _ viewSources not.
	
	sourceMorph visible: viewSources! !

!EruditeDocEditorWindow methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 17:01:29'!
buildMorphicWindow

	| sourceMorph |
	
	sourceMorph _ TextModelMorph
		withModel: model.
		
	self layoutMorph addMorphUseAll: sourceMorph.! !

!EruditeBookSectionExplorerWrapper methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 14:09'!
asString
	
	^ section title! !

!EruditeBookSectionExplorerWrapper methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:29'!
contents
	^ section subsections collect: [ :bookSection |
		EruditeBookSectionExplorerWrapper on: bookSection ].! !

!EruditeBookSectionExplorerWrapper methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 13:59'!
initialize: aBookSection

	section _ aBookSection! !

!EruditeBookSectionExplorerWrapper methodsFor: 'accessing' stamp: 'MM 11/30/2018 14:16'!
section
	"Answer the value of section"

	^ section! !

!EruditeBookSectionExplorerWrapper methodsFor: 'accessing' stamp: 'MM 11/30/2018 14:16'!
section: anObject
	"Set the value of section"

	section _ anObject! !

!EruditeBookSectionExplorerWrapper class methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 13:58'!
on: aBookSection

	^ self new initialize: aBookSection! !

!EruditeMarkupGrammarTest methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:21'!
setUp

	parser _ EruditeMarkupGrammar new.! !

!EruditeMarkupGrammarTest methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:22'!
testBold

	self assert: (parser bold parse: '**bold**') isPetitFailure not! !

!EruditeMarkupGrammarTest methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:22'!
testItalic

	self assert: (parser italic parse: '//italic//') isPetitFailure not! !

!EruditeMarkupGrammarTest methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:33'!
testLink

	self assert: (parser link end parse: '{target::type}') isPetitFailure not.
	self assert: (parser link end parse: '{target::type|label}') isPetitFailure not.
	self assert: (parser link end parse: '{target::type|label}[trueOpt]') isPetitFailure not.
	self assert: (parser link end parse: '{target::type|label}[!!falseOpt]') isPetitFailure not.
	self assert: (parser link end parse: '{target::type|label}[opt1=val1, opt2=val2]') isPetitFailure not.! !

!EruditeMarkupGrammarTest methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:23'!
testUnformatted

	self assert: (parser unformatted parse: '```unformatted```') isPetitFailure not! !

!SmalltalkEruditeGrammarTest methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 21:42'!
setUp

	parser _ SmalltalkEruditeGrammar new.! !

!SmalltalkEruditeGrammarTest methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 21:44'!
testSmalltalkClass

	self assert: (parser smalltalkClass parse: 'Object ') isPetitFailure not.
	self assert: (parser smalltalkClass parse: 'NonExistentClass ') isPetitFailure.
	self assert: (parser smalltalkClass parse: 'lowercase ') isPetitFailure.
	! !

!SmalltalkEruditeGrammarTest methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 22:21'!
testSmalltalkClassMethod

	self assert: (parser smalltalkClassMethod parse: 'Object>>someMethod') isPetitFailure not.
	self assert: (parser smalltalkClassMethod parse: 'NonExistentClass>>someMethod') isPetitFailure.
	self assert: (parser smalltalkClassMethod parse: 'Object>>foo:bar:') isPetitFailure not.! !

!SmalltalkEruditeGrammarTest methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 22:13'!
testSmalltalkSelector

	self assert: (parser smalltalkSelector end parse: '#selector') isPetitFailure not.
	self assert: (parser smalltalkSelector end parse: '#selector:') isPetitFailure not.
	self assert: (parser smalltalkSelector end parse: 'selector') isPetitFailure.
	self assert: (parser smalltalkSelector end parse: '#selector::') isPetitFailure.
	self assert: (parser smalltalkSelector end parse: '#selector:foo:') isPetitFailure not.! !

!ClassMethodCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 11:13'!
classAttributesFor: aText

	^ { BlockTextAction
		do: [:x | | class |
				class _ Smalltalk at: aText asString asSymbol.
				SmalltalkEruditeStyler browse: class selector: nil].
		TextColor red }! !

!ClassMethodCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 12:30'!
commentAttributesFor: aSymbol text: aText

	^ aSymbol caseOf: {
		[#class] -> [self classAttributesFor: aText].
		[#method] -> [self methodAttributesFor: aText].
		[#selector] -> [self selectorAttributesFor: aText]
	}! !

!ClassMethodCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 22:12'!
methodAttributesFor: aText

	|classAndMethod|
	
	classAndMethod _ aText asString subStrings: '>>'.
	^{ BlockTextAction
			do: [:x | | class selector |
				class _ Smalltalk at: classAndMethod first asSymbol.
				selector _ classAndMethod second asSymbol.
				SmalltalkEruditeStyler browse: class selector: selector].
		TextColor red}! !

!ClassMethodCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 22:14'!
selectorAttributesFor: aText

	^ {BlockTextAction
			do: [ :x | Smalltalk browseAllImplementorsOf: aText asString allButFirst asSymbol ].
		TextColor red}! !

!ClassMethodCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2019 12:37:54'!
setAttributesFromRanges: ranges

	|comments styler commentRanges aText |
	
	aText _ textModel actualContents.
	
	super setAttributesFromRanges: ranges.
	
	styler _ SmalltalkEruditeStyler.
	comments _ ranges select: [:range | range rangeType == #comment].
	commentRanges _ OrderedCollection new.
	
	comments do: [:commentRange | |commentText |
		commentText _ aText copyFrom: commentRange start to: commentRange end.
		commentRanges addAll: (self shiftRanges: (styler style: commentText) delta: commentRange start - 1)].
	
	commentRanges do: [ :range | |text attributes|
		text _ aText copyFrom: range start to: range end.
		attributes _ self commentAttributesFor: range rangeType text: text.
		attributes do: [:attribute |
			formattedText addAttribute: attribute from: range start to: range end]]! !

!ClassMethodCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 11:21'!
setAttributesIn: aText fromRanges: ranges in: anInterval

	|comments styler commentRanges |
	
	super setAttributesIn: aText fromRanges: ranges in: anInterval.
	
	styler _ SmalltalkEruditeStyler.
	comments _ ranges select: [:range | range rangeType == #comment].
	commentRanges _ OrderedCollection new.
	
	comments do: [:commentRange | |commentText |
		commentText _ aText copyFrom: commentRange start to: commentRange end.
		commentRanges addAll: (self shiftRanges: (styler style: commentText) delta: commentRange start - 1)].
	
	commentRanges do: [ :range | |text attributes|
		text _ aText copyFrom: range start to: range end.
		attributes _ self commentAttributesFor: range rangeType text: text.
		attributes do: [:attribute |
			aText addAttribute: attribute from: range start to: range end]]! !

!ClassMethodCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 11:18'!
shiftRanges: aCollection delta: aNumber

	aCollection do: [:aSHRange |
		aSHRange 
			start: aSHRange start + aNumber;
			end: aSHRange end + aNumber].
	^ aCollection! !

!ClassCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 12:31'!
attributesFor: aSymbol text: aText

	^ aSymbol caseOf: {
		[#class] -> [self classAttributesFor: aText].
		[#method] -> [self methodAttributesFor: aText].
		[#selector] -> [self selectorAttributesFor: aText]
	}! !

!ClassCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 12:31'!
classAttributesFor: aText

	^ { BlockTextAction
		do: [:x | | class |
				class _ Smalltalk at: aText asString asSymbol.
				SmalltalkEruditeStyler browse: class selector: nil].
		TextColor red }! !

!ClassCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 12:40'!
classOrMetaClass: anUndefinedObject 
	! !

!ClassCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 12:31'!
methodAttributesFor: aText

	|classAndMethod|
	
	classAndMethod _ aText asString subStrings: '>>'.
	^{ BlockTextAction
			do: [:x | | class selector |
				class _ Smalltalk at: classAndMethod first asSymbol.
				selector _ classAndMethod second asSymbol.
				SmalltalkEruditeStyler browse: class selector: selector].
		TextColor red}! !

!ClassCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 12:25'!
privateFormatAndConvert! !

!ClassCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 12:27'!
privateStyle

	| ranges |
	
	ranges _ self rangesIn: formattedText.
	ranges ifNotNil: [ self setAttributesIn: formattedText fromRanges: ranges in: nil ]! !

!ClassCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 12:28'!
rangesIn: aText

	^ SmalltalkEruditeStyler style: aText asString! !

!ClassCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 12:31'!
selectorAttributesFor: aText

	^ {BlockTextAction
			do: [ :x | Smalltalk browseAllImplementorsOf: aText asString allButFirst asSymbol ].
		TextColor red}! !

!ClassCommentTextStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 12:30'!
setAttributesIn: aText fromRanges: ranges in: anInterval

	aText removeAttributesThat: [ :attribute | attribute isForShout ].
	ranges do: [ :range | |text|
		text _ aText copyFrom: range start to: range end.
		(self attributesFor: range rangeType text: text) ifNotNil: [ :attributes |
			attributes do: [ :each |
				aText addAttribute: each from: range start to: range end ]]]! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:45'!
assignLinkOption

	^ (#word asParser plus flatten, $= asParser, #word asParser plus flatten) ! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:04'!
bold

	^ ($* asParser min: 2 max: 2) flatten,
	   ($* asParser min: 2 max: 2) negate plus flatten,
	   ($* asParser min: 2 max: 2) flatten! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 12:24'!
buttonCodeAction

	^  (self withButtonAction: 'doItWithButton') /
	(self withButtonAction: 'inspectItWithButton') /
	(self withButtonAction: 'exploreItWithButton') /
	(self withButtonAction: 'printItWithButton') /
	(self withButtonAction: 'browseItWithButton') ! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 12:42'!
code

	^ ($[ asParser min: 3 max: 3) flatten,
		($] asParser min: 3 max: 3) negate plus flatten,
	   ($] asParser min: 3 max: 3) flatten, 
	(#blank asParser, codeAction) optional! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 12:23'!
codeAction

	 ^ buttonCodeAction / 
	   simpleCodeAction! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:30'!
erudite
	
	^ (markup / plainText) star! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:43'!
falseLinkOption

	^ $!! asParser, #word asParser plus flatten! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 15:41'!
heading

	^ heading4 / heading3 / heading2 / heading1! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 16:31'!
heading1

	^ self heading: 2! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 16:31'!
heading2

	^ self heading: 3! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 16:31'!
heading3

	^ self heading: 4! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 16:31'!
heading4

	^ self heading: 5! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 16:32'!
heading: level

	^ (self headingCharacter asParser min: level max: level) flatten,
		(#newline asParser not, #any asParser) plus flatten! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 15:38'!
headingCharacter

	^ $!!! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:05'!
italic

	^ ($/ asParser min: 2 max: 2) flatten,
	   ($/ asParser min: 2 max: 2) negate plus flatten,
	   ($/ asParser min: 2 max: 2) flatten! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:54'!
link

	"{target::type|label}[options]"
	
	|typeSeparator|
	
	typeSeparator _ ($: asParser min: 2 max: 2).
	
	^ ${ asParser,
	   typeSeparator negate plus flatten bind,
	   typeSeparator flatten,
	   #word asParser plus trim flatten bind,
	   ($| asParser, ($} asParser negate plus trim flatten)) optional bind,
	   $} asParser,
	    linkOptions optional bind! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:45'!
linkOption

	^ assignLinkOption / falseLinkOption / trueLinkOption! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 18:32'!
linkOptions

	^ $[ asParser trim, linkOptionsList, $] asParser! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:01'!
linkOptionsList

	^ linkOption, 
		($, asParser trim, linkOption) star! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 15:13'!
markup

	^ heading / code / bold / italic / unformatted / link! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:30'!
plainText

	^ markup negate plus flatten! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 15:43'!
simpleCodeAction

	^ 'doIt' asParser /
	   'inspectIt' asParser /
	   'exploreIt' asParser /
	   'printItHere' asParser /
	   'printIt' asParser /
	   'embedIt' asParser! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 15:43'!
start
	
	^ erudite end! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 13:43'!
trueLinkOption

	^ #word asParser plus flatten! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:31'!
unformatted

	^ ($` asParser min: 3 max: 3) flatten,
		($` asParser min: 3 max: 3) negate plus flatten,
		($` asParser min: 3 max: 3) flatten! !

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 12:14'!
withButtonAction: aString

	^ aString asParser, ':' asParser, $. asParser negate plus flatten, $. asParser! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 14:17'!
assignLinkOption

	^ super assignLinkOption ==> [:res | 
		res first asSymbol -> res third withBlanksTrimmed ]! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:07'!
bold

	^ super bold ==> [:res | EruditeStyledText text: res second style: #bold]! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 12:35'!
buttonCodeAction

	^ super buttonCodeAction ==> [:res | {#action->res first asSymbol. #button-> res third withBlanksTrimmed } as: Dictionary]! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 3/21/2019 15:53:04'!
code

	^ super code ==> [:res | |source action|
		source _ res second.
		action _ (res checkedAt: 4) ifNotNil: [:a | a second].
		DocCode code: source action: action]! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 14:18'!
falseLinkOption

	^ super falseLinkOption ==> [:res |
		res second asSymbol -> false]! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:29'!
heading1
	^ super heading1 ==> [ :res |
		DocHeading
			heading: res second withBlanksTrimmed
			level: 1 ].! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:29'!
heading2
	^ super heading2 ==> [ :res |
		DocHeading
			heading: res second withBlanksTrimmed
			level: 2 ].! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:29'!
heading3
	^ super heading3 ==> [ :res |
		DocHeading
			heading: res second withBlanksTrimmed
			level: 3 ].! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:29'!
heading4
	^ super heading4 ==> [ :res |
		DocHeading
			heading: res second withBlanksTrimmed
			level: 4 ].! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:08'!
italic

	^ super italic ==> [:res | EruditeStyledText text: res second style: #italic]! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 3/21/2019 15:53:34'!
link
	^ super link ~=> [ :target :type :label :options | | lnk |
		lnk _ DocLink
			target: target
			type: type asSymbol
			label: (label ifNotNil: [label second]).
		options ifNotNil: [options do: [ :opt |
			lnk
				optionAt: opt key
				put: opt value ]].
		lnk ].! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 14:24'!
linkOptions

	^ super linkOptions ==> [:res | |opts|
		opts _ OrderedCollection new.
		opts add: res second first.
		res second second do: [:x |
			opts add: x second].
		opts]! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 12:25'!
simpleCodeAction

	^ super simpleCodeAction ==> [:res | {#action-> res asSymbol} as: Dictionary]! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:27'!
start
	^ super start ==> [ :contents |
		EruditeDocument contents: contents ].! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 14:18'!
trueLinkOption

	^ super trueLinkOption ==> [:res |
		res asSymbol -> true]! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:33'!
unformatted
	
	^ super unformatted ==> [:res | EruditeStyledText text: res second style: #unformatted]! !

!SmalltalkEruditeGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 11:11'!
erudite

	^ (smalltalkClassMethod / smalltalkClass / smalltalkSelector / text) star! !

!SmalltalkEruditeGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 21:38'!
smalltalkClass

	|className|

	^ ((smalltalkClassName ==> [:val | className _ val]),
		(PPPredicateObjectParser on: [:val | Smalltalk at: className asSymbol ifPresent:[:v | true] ifAbsent:[false]] message: 'Class not found') and)
		==> [:val | className]! !

!SmalltalkEruditeGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 23:09'!
smalltalkClassMethod

	^ (smalltalkClassName, '>>' asParser, smalltalkClassMethodName) ==> 
		[:res | Array with: res first with: res third]! !

!SmalltalkEruditeGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 22:22'!
smalltalkClassMethodName

	^  ((#word asParser plus, $: asParser) plus /
	      #word asParser plus) flatten! !

!SmalltalkEruditeGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 21:32'!
smalltalkClassName

	^ (#uppercase asParser, #word asParser plus) flatten! !

!SmalltalkEruditeGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 22:11'!
smalltalkSelector

	^ ($# asParser, 
	    ((#word asParser plus, $: asParser) plus /
	      #word asParser plus)) flatten! !

!SmalltalkEruditeGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 21:29'!
start

	^ erudite end! !

!SmalltalkEruditeGrammar methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 21:28'!
text

	^ (smalltalkClassMethod / smalltalkClass / smalltalkSelector) negate plus flatten! !

!SmalltalkEruditeParser methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 20:59'!
browse: aClass selector: aSymbol

	| browser |
	
	browser _ Browser new.
	browser
		setClass: aClass
		selector: aSymbol.
				
	BrowserWindow
			open: browser
			label: 'System Browser' ! !

!SmalltalkEruditeParser methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 20:42'!
smalltalkClass
	^ super smalltalkClass ==> [ :className |
		DocActionLink
			title: className
			do: [ | class |
				class _ Smalltalk at: className asSymbol.
				self
					browse: class
					selector: nil ]].! !

!SmalltalkEruditeParser methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 20:42'!
smalltalkClassMethod
	^ super smalltalkClassMethod ==> [ :aClassMethod |
		DocActionLink
			title: aClassMethod first , '>>' , aClassMethod second
			do: [ | class selector |
				class _ Smalltalk at: aClassMethod first asSymbol.
				selector _ aClassMethod second asSymbol.
				self
					browse: class
					selector: selector ]].! !

!SmalltalkEruditeParser methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 20:42'!
smalltalkSelector
	^ super smalltalkSelector ==> [ :aString | | selector |
		selector _ aString allButFirst asSymbol.
		DocActionLink
			title: aString
			do: [ Smalltalk browseAllImplementorsOf: selector ]].! !

!SmalltalkEruditeParser methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:27'!
start
	^ super start ==> [ :contents |
		EruditeDocument contents: contents ].! !

!SmalltalkEruditeStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 21:07'!
initialize

	super initialize.
	
	self propertyAt: #ranges put: OrderedCollection new.! !

!SmalltalkEruditeStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 21:22'!
ranges

	^ self propertyAt: #ranges! !

!SmalltalkEruditeStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 11:31'!
smalltalkClass

	^ super smalltalkClass token ==> [ :token |
		self style: token as: #class]! !

!SmalltalkEruditeStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 21:08'!
smalltalkClassMethod

	^ super smalltalkClassMethod token ==> [:token |
		self style: token as: #method]! !

!SmalltalkEruditeStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 21:09'!
smalltalkSelector

	^ super smalltalkSelector token ==> [:token |
		self style: token as: #selector]! !

!SmalltalkEruditeStyler methodsFor: 'as yet unclassified' stamp: 'MM 12/5/2018 11:36'!
style: aToken as: aSymbol

	"This is a bad hack. For some strange reason I've not been able to figure out, ranges are added twice.
	So I've put a check to prevent that. It's not good though, I should figure out what is happening."
	self ranges ifNotEmpty: [
		|lastRange|
	
		lastRange _ self ranges last.
	
		((lastRange rangeType = aSymbol) and: [lastRange start = aToken start and: [lastRange end = aToken stop]])
			ifTrue: [^ nil]].
	"End of hack."

	self ranges add: (SHRange start: aToken start end: aToken stop type: aSymbol)! !

!SmalltalkEruditeStyler class methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 21:00'!
browse: aClass selector: aSymbol

	| browser |
	
	browser _ Browser new.
	browser
		setClass: aClass
		selector: aSymbol.
				
	BrowserWindow
			open: browser
			label: 'System Browser' ! !

!SmalltalkEruditeStyler class methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 21:24'!
style: aString

	|styler|
	
	styler _ self new.
	styler parse: aString.
	
	^ styler ranges! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/18/2020 18:28:28'!
asMethodName: aString
	^ aString asCamelCase uncapitalized select: [:char | char isAlphaNumeric ]! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/18/2020 17:52:09'!
defaultNameForClass
	^ title asCamelCase capitalized asSymbol! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/21/2020 23:03:10'!
defaultStorageCategory: aClassName
	^ Smalltalk at: aClassName asSymbol
		ifPresent: [:cls |		cls category]
		ifAbsent: ['EruditeBooks']! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 12/10/2018 21:27'!
defaultStorageMethodReferenceFor: aBook
	^ MethodReference
		class: EruditeBook class
		selector: (self selectorFromTitle: aBook title).! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/22/2020 11:51:34'!
load
	| stMethod book |
	stMethod _ self storageMethod compiledMethod.
	stMethod ifNotNil: [ "Stored in method"
		book _ stMethod 
			valueWithReceiver: EruditeBook class
			arguments: #().
		self become: book]
		ifNil: ["assume stored as class"
			self become: self class new]! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 12/4/2018 10:55'!
selectorFromTitle: aString

	|parts|
	
	parts _ (aString subStrings: ' ') collect: [:s | s translateToLowercase].
	
	^ String streamContents: [:s |
		s nextPutAll: parts first.
		parts allButFirst do: [:part |
			s nextPutAll: part capitalized]]
	! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/21/2020 22:40:40'!
store

	"^ self storeOnMethod: self storageMethod"
	self storeAsClass.
	! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/18/2020 17:35:59'!
storeAsClass
	^ self storeAsClassNamed: self defaultNameForClass! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/21/2020 22:38:59'!
storeAsClassNamed: className
	^ self storeAsClassNamed: className category: (self defaultStorageCategory: className asSymbol)
	! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/21/2020 23:25:38'!
storeAsClassNamed: className category: aCategory

	|bookClass initialize|
	
	bookClass _ EruditeBook subclass: className
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategory.
		
	initialize _ String streamContents: [:s |
		s nextPutAll: 'initialize'; newLine;
		   nextPutAll: '    super initialize.'; newLine;
		   nextPutAll: '    title _ ';
		   nextPutAll: title printString; nextPutAll: '.'; newLine.
		
		sections do: [:section |
			s nextPutAll: '        self addSection: self '; nextPutAll: section title asCamelCase; nextPutAll: '.'; newLine]].
	
	bookClass compile: initialize.
	
	sections do: [:sect |
		self storeSection: sect on: bookClass].
		
	^ bookClass! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/18/2020 17:59:29'!
storeOnMethod: aMethodReference

	|source|
	
	source _ String streamContents: [:s |
		s nextPutAll: aMethodReference selector;
		   newLine; newLine;
		   nextPutAll: '<book: '''; nextPutAll: self title; nextPutAll: '''>';
		   newLine; newLine;
		   nextPutAll: '^';
		   store: self].
	
	aMethodReference actualClass compile: source.! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/18/2020 17:58:37'!
storeSection: aBookSection on: aClass
	^ self storeSection: aBookSection on: aClass prefix: ''! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/18/2020 18:49:52'!
storeSection: aBookSection on: aClass prefix: prefix
	|source subsectionPrefix|
	
	subsectionPrefix _ prefix , ((self asMethodName: aBookSection title) capitalized).
	
	source _ String streamContents: [:s |
		s nextPutAll: subsectionPrefix; newLine.		
		s
		nextPutAll: '^('; 
	 	nextPutAll: aBookSection class name;
		nextPutAll: ' basicNew';
		nextPutAll: ' title: '; store: aBookSection title;
		nextPutAll: '; document: '; store: aBookSection document;
		nextPutAll: '; subsections: (OrderedCollection new'.
		aBookSection subsections do: [:subSection |
			s nextPutAll: '        add: self '; nextPutAll: subsectionPrefix; 
		        nextPutAll: (self asMethodName: subSection title) capitalized; nextPutAll: ';'	; newLine].
		s nextPutAll: ' yourself)';
		  nextPutAll: '; yourself)'].
	
	aClass compile: source.
	aBookSection subsections do: [:ss |
		self storeSection: ss on: aClass prefix: (prefix, (self asMethodName: aBookSection title) capitalized)].! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 12/4/2018 17:59'!
addSection: aBookSection

	sections add: aBookSection.
	aBookSection parent: self! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 12/10/2018 21:28'!
addSection: aString contents: anotherString
	self addSection:
		(EruditeBookSection
			title: aString
			contents: anotherString).! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 12/10/2018 21:28'!
addSection: aString document: aDocument
	self addSection:
		(EruditeBookSection
			title: aString
			document: aDocument).! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 7/20/2020 11:18:07'!
author
	"Answer the value of author"

	^ author! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 7/20/2020 11:18:07'!
author: anObject
	"Set the value of author"

	author _ anObject! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:28'!
sections
	"Answer the value of sections"

	^ sections! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:28'!
sections: anObject
	"Set the value of sections"

	sections _ anObject! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 12/7/2018 12:31'!
storageMethod
	"Answer the value of storageMethod"

	^ storageMethod ifNil: [self defaultStorageMethodReferenceFor: self]! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 12/4/2018 10:29'!
storageMethod: anObject
	"Set the value of storageMethod"

	storageMethod _ anObject! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:28'!
title
	"Answer the value of title"

	^ title! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:28'!
title: anObject
	"Set the value of title"

	title _ anObject! !

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:48'!
edit
	EruditeBookEditorMorph open: self.! !

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 13:53'!
findSectionNamed: aString ifAbsent: aBlock

	sections do: [:aSection |
		aSection title = aString ifTrue: [^ aSection]].
	
	sections do: [:aSection |
		aSection findSectionNamed: aString ifAbsent: [^ aBlock value]].
	
	^ aBlock value
		 ! !

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 14:15'!
open
	^ EruditeBookReaderMorph open: self.! !

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 14:15'!
openInSection: aString

	|bookReader|
	bookReader _ self open.
	bookReader gotoSectionNamed: aString! !

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 12/18/2018 19:32:55'!
parent

	"For navigation. BookSection interface."
	^ nil! !

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 18:06'!
removeSection: aSection

	sections remove: aSection! !

!EruditeBook methodsFor: 'initialization' stamp: 'MM 7/21/2020 23:21:52'!
initialize
	sections _ OrderedCollection new! !

!EruditeBook methodsFor: 'initialization' stamp: 'MM 7/21/2020 23:21:46'!
initialize: aString

	title _ aString
	! !

!EruditeBook methodsFor: 'initialization' stamp: 'MM 12/4/2018 20:11'!
updateParents

	sections do: [:section |
		section parent: self.
		section updateParents].! !

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 14:13'!
bookNamed: aString ifNone: aBlock
	
	^ self booksList detect: [:aBook | aBook title = aString] ifNone: aBlock! !

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 22:43:15'!
booksList

	^ self booksListInMethods, (EruditeBook subclasses collect: [:cls | cls new])! !

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 22:42:00'!
booksListInMethods

	|pragmas |
	
	pragmas _ Pragma allNamed: #book: in: self class.
	^ pragmas collect: [:pragma | pragma method valueWithReceiver: self class arguments: #()].! !

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 18:05:57'!
edit
	^ self new edit! !

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 18:05:49'!
open
	^ self new open! !

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 13:31'!
titled: aString

	^ self new initialize: aString! !

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 12/8/2018 14:55'!
withBookSelectionDo: aBlock

	| books bookTitles popup index |
	
	books _ self booksList.
	bookTitles _ books collect: [:book | book title].
	popup _ PopUpMenu labelArray: bookTitles asArray.
	index _ popup startUpWithCaption: 'Select book from list'.
	(index >= 1) ifTrue: [
		aBlock value: 	(books at: index)]! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
AdditionalPackagesForCuis
^(EruditeBookSection basicNew title: 'Additional Packages for Cuis'; document: ((EruditeDocument contents: '!!!! Additional Packages for Cuis

The Cuis base image includes only kernel functionailty, very basic libraries, and development tools. Optional functionality, that can be loaded as needed, is stored in separate code Packages. The Cuis community developes and maintains several dozens of such Packages.

Some of them are included in the main Cuis GitHub repository, at https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev in the ''Packages'' folder. Loading ''Core-Packages.pck.st'' loads them all:

[[[Feature require: ''Core-Packages'']]] doIt') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
CuisAndGithub
^(EruditeBookSection basicNew title: 'Cuis and Github'; document: ((EruditeDocument contents: '!!!! Using Git and GitHub to host and manage Cuis code

Cuis includes tools and procedures for managing Smalltalk code. Central to this is the management of Packages and Package Files (.pck). But Cuis doesn''t do version control. Instead, we suggest using external VCS tools.  In particular, we''re using {http://www.github.com::url|GitHub}, and the first project we''re hosting there is {https://github.com/bpieber/Cuis-StyledTextEditor::url|StyledTextEditor}.

The guiding principle is to **not duplicate concepts and behavior**. As we''re using an external tool (Git) for version control, then we use it as it meant to be used. Most people use Git for version control and a file based IDE such as Eclipse for development. Such IDEs don''t do version control themselves. It is done by Git. Do the same: do not include package version control in Cuis. This is a departure from the Monticello /Git integration (smallsource and MonticelloFileTree) by Otto Behrens, Dale Henrichs, etc.

We use GitHub to host, version, diff and merge external packages (.pck files), i.e. code that is maintained independently and outside Cuis.

Package files need to be simple text files. Cuis encoding for latin alphabet (ISO 8859-15) is handled without problems by GitHub. Cuis uses the LF (ascii code 10) newline convention, as preferred in GitHub. This allows Git/GitHub to diff versions, and merge branches.

Each GitHub repository has one set of users and permissions. Each GitHub repository has one state (Git commits repositories, not individual files). Branch and merges are done on the whole repository and not on individual files. Therefore, we need a separate GitHub repository for each project, i.e., for each package or set of closely related packages that are always loaded and maintained together as a whole.

!!!!!!!!!!!! Development process for External Packages

This is the suggested procedure for developing external packages. Usually do this every day.

* Start with a standard (i.e. fresh) Cuis image. Never save the image.

* Set up Git repositories for external packages (if not already done)

* Install packages from Git repositories.

* Develop. Modify and/or create packages.

* Save own packages (to Git repositories).

* Git add / commit / push as appropriate.

* Fileout changes that are not part of any package. These are automatically captured in numbered changesets, separated from changes to packages.

* Exit the image. Usually without saving.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
CuisSmalltalk
^(EruditeBookSection basicNew title: 'Cuis Smalltalk'; document: ((EruditeDocument contents: '!!!! Cuis Smalltalk

{http://www.cuis-smalltalk.org::url|Cuis} is a free {https://en.wikipedia.org/wiki/Smalltalk::url|Smalltalk-80} environment originally derived from {http://www.squeak.org::url|Squeak} with a specific set of goals: being simple and powerful. It is also portable to any platform, fast and efficient. This means it is a great tool for running on any hardware, ranging from RasPis and the like, and phones, up to cloud servers, and everything in between, including regular laptops and PCs.

Cuis is

* **Small**
* **Clean**
* **Appropriable**

Like Squeak, Cuis is also:

* **Open Source**
* **Self contained**
* **Multiplatform**

Like other Smalltalk-80 environments (including Squeak, Pharo and others), Cuis is also:

* **A complete development environment written in itself**
* **A pure, dynamic Object Oriented language**

Cuis shares the {http://www.opensmalltalk.org::url|OpenSmalltalk Virtual Machine} with Squeak, Pharo and Newspeak. What sets Cuis apart from the other members of the Squeak family is the focus on Smalltalk-80 and an active attitude towards system complexity:

Unbound complexity growth, together with development strategies focused only in the short term, are the worst long term enemies of all software systems. As systems grow older, they usually become more complex. New features are added as layers on top of whatever is below, sometimes without really understanding it, and almost always without modifying it. Complexity and size grow without control. Evolution slows down. Understanding the system becomes harder every day. Bugs are harder to fix. Codebases become huge for no clear reason. At some point, the system can''t evolve anymore and becomes "legacy code".

Complexity puts a limit to the level of understanding of the system a person might reach, and therefore limits the things that can be done with it. Dan Ingalls says all this in {http://www.cs.virginia.edu/~evans/cs655/readings/smalltalk.html::url|"Design Principles Behind Smalltalk"}. Even if you have already done so, please go and read it again!!!!

This presentation by Rich Hickey, {http://www.infoq.com/presentations/Simple-Made-Easy::url|"Simple made Easy"} is also an excellent reflection on these values.

We follow a set of ideas that started with Jean Piaget''s {https://en.wikipedia.org/wiki/Constructivism_(philosophy_of_education::url|Constructivism}, and were further developed in Seymour Papert''s {https://en.wikipedia.org/wiki/Experiential_learning::url|Mathland}. These lead to Alan Kay''s Learning Research Group''s {http://www.vpri.org/pdf/hc_pers_comp_for_children.pdf::url|Personal Computer for Children of All Ages}, {http://www.vpri.org/pdf/m1977001_dynamedia.pdf::url|Personal Dynamic Media}, i.e. the {http://www.vpri.org/pdf/hc_what_Is_a_dynabook.pdf::url|Dynabook} and to {https://en.wikipedia.org/wiki/Smalltalk::url|Smalltalk-80}. To us, a Smalltalk system is a Dynabook. A place to experiment and learn, and a medium to express and register the knlowledge we acquire. We understand software development as the activity of learning and documenting knowledge, for us and others to use, and also to be run on a computer. The fact that the computer run is useful, is a consequence of the knowldege being sound and relevant. (Just making it work is **not** the important part!!!!)

Cuis Smalltalk is our attempt at this challenge. Furthermore, we believe we are doing something else that no other Smalltalk, commercial or open source, does. We attempt to give the true Smalltalk-80 experience, and keep Smalltalk-80 not as legacy software historic significance, but as a live, evolving system. We feel we are the keepers of the Smalltalk-80 heritage, and enablers of the Dynabook experience.

Cuis is continuously evolving towards simplicity. Each release is better (i.e. simpler) than the previous one. At the same time, features are enhanced, and any reported bugs fixed. We also adopt recent enhancements from Squeak and share our work with the wider Squeak and Smalltalk community.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new        add: self CuisSmalltalkAboutTheNameCuis;
        add: self CuisSmalltalkLearningAboutCuisSmalltalk;
        add: self CuisSmalltalkContributingToCuis;
        add: self CuisSmalltalkLicense;
 yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
CuisSmalltalkAboutTheNameCuis
^(EruditeBookSection basicNew title: 'About the name Cuis'; document: ((EruditeDocument contents: '!!!!!! About the name Cuis

Cuis is the common name of a {https://en.wikipedia.org/wiki/Southern_mountain_cavy::url|small animal} that lives in Argentina''s countryside. Cuis Smalltalk was originally forked from Squeak Smalltalk and many of us are also active in the Squeak community. So, picking the onomatopoeia of the voice of a mouse for the name makes sense. As the project was started in Buenos Aires, ''Cuis'' (essentially ''Squeak'' in Rioplatense Spanish) was the obvious choice.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
CuisSmalltalkContributingToCuis
^(EruditeBookSection basicNew title: 'Contributing to Cuis'; document: ((EruditeDocument contents: '!!!!!! Contributing to Cuis

Cuis is maintained on {https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev::url}. The main meeting point for Cuis users and developers is the mail list {http://cuis-smalltalk.org/mailman/listinfo/cuis-dev_cuis-smalltalk::url}.org . You can broswse the archives for a glimpse of our discussions.

If you want to contribute code to the project, please read {Managing your code in Cuis::section}, about developing packages for Cuis, and {Cuis and Github::section}. While Cuis should work equally well with any file-based DVCS, we encourage the use of Git and GitHub.

In any case, we also accept contributions as ChangeSet files in email. Any contribution must be under the MIT license.

To contribute code, please use an image with all included packages already loaded, using updated versions, especially, of any affected packages. This will ensure we don''t break them while we evolve Cuis.
Here is a Smalltalk script to load all packages currently included:

[[[Feature require: ''Core-Packages'']]] doIt') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
CuisSmalltalkLearningAboutCuisSmalltalk
^(EruditeBookSection basicNew title: 'Learning about Cuis Smalltalk'; document: ((EruditeDocument contents: '!!!!!! Learning about Cuis Smalltalk

If you are learning Smalltalk, the Cuis community can help you. Check the {https://github.com/Cuis-Smalltalk-Learning/Learning-Cuis::url|"Learning Cuis Smalltalk"} repository. It includes several great tutorials. Also, the TerseGuide.pck.st package (in the /Packages folder in this repo) is useful both as a guide and a reference.

Additionally, there are many tutorials and references for Smalltalk in the web. They apply quite well to Cuis, especially those written originally for Smalltalk-80 or Squeak. These books {http://stephane.ducasse.free.fr/FreeBooks/BlueBook/Bluebook.pdf::url|"Smalltalk-80 the language and its implementation"} and {http://stephane.ducasse.free.fr/FreeBooks/InsideST/InsideSmalltalk.pdf::url|"Inside Smalltalk volume I"} are great introductory texts, and they are also the reference for the language and basic class library. Both are freely available.

The user interface enables you to access most of the code and conduct Smalltalk experiments on your own. You can review its features at {https://github.com/Cuis-Smalltalk-Learning/Learning-Cuis/blob/master/Quick-UI-Tour.md::url|"Quick Tour of the UI"}. ') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
CuisSmalltalkLicense
^(EruditeBookSection basicNew title: 'License'; document: ((EruditeDocument contents: '!!!!!! Cuis License

Cuis is distributed subject to the MIT License. See the LICENSE file. Any contribution submitted for incorporation into or for distribution with Cuis shall be presumed subject to the same license.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
Introduction
^(EruditeBookSection basicNew title: 'Introduction'; document: ((EruditeDocument contents: '!!!! Introduction

This is a manual about Cuis Smalltalk.

NOTE: Most of its content was taken from Cuis documentation at: {https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev/tree/master/Documentation::url}') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
ManagingYourCodeInCuis
^(EruditeBookSection basicNew title: 'Managing your code in Cuis'; document: ((EruditeDocument contents: '!!!! Managing your code in Cuis

Cuis includes tools and procedures for managing Smalltalk code. Code that is not part of the Cuis Core image itself, like applications, frameworks and libraries, should be stored in {CodePackage::class|Packages}. New code that are meant as patches, fixes or additions; that could eventually become part of Cuis itself, is not part of any //Package//, and is therefore automatically stored in {ChangeSet::class|ChangeSets}.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new        add: self ManagingYourCodeInCuisPackages;
        add: self ManagingYourCodeInCuisChangesToTheCuisBaseImage;
        add: self ManagingYourCodeInCuisLoadingChangeSetFilesIntoCuis;
 yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
ManagingYourCodeInCuisChangesToTheCuisBaseImage
^(EruditeBookSection basicNew title: 'Changes to the Cuis base image'; document: ((EruditeDocument contents: '!!!!!! Changes to the Cuis base image

The way //ChangeSets// are created and managed in Cuis is different from Squeak. This was done to make ChangeSets a good way to manage changes to the base Cuis Core image, while keeping code in Packages out of the way, so they don''t get mixed together.

What is not in a Package belongs (at least temporarily) to the Cuis Core image. Such code is automatically captured in a //ChangeSet//. The ChangeSet for Core changes is created automatically and named like //"1243-CuisCore-JuanVuletich-2012Apr03-22h50m"//. The number at the beginning is the next number for the Cuis update stream, and is provided only as a suggestion. The "CuisCore" part is to reveal that the code belongs in the base image and not in some package. Then we have author name and date / time of creation. These //ChangeSets// are created automatically. There is no longer a way to manually create them, or make them "current" or "active". It is best to rename them, replacing //''CuisCore''// with some meaningful name. These //ChangeSets// will not capture any code that belongs in a Package.

Opening a [[[ChangeSorterWindow openChangeSorter]]] doItWithButton: Change Sorter. will show the CuisCore change set. This is useful, for example, to check that no code that was intended for a Package ends here by mistake (because of the wrong class or method category). But it is also useful when doing changes to the base system. Now, we can do changes both to the base system and to a number of packages, all in the same session, without having to be careful about selecting the proper change set before saving a method: The code is automatically added to the proper //Package// or //ChangeSet//, simply following the class or method category. Gone are the days of messed up change sets and lost code!!!!

When the changes to the base system are complete, it is a good time to review the CuisCore change set and, maybe remove from it changes that we don''t want to keep (for example, experiments, halts, etc). Then, just do right click / File out and remove. This saves the //ChangeSet// on disk. It also removes it from the **ChangeSorter** (but it doesn''t remove any code). This is good, because the next changes done will end in a new CuisCore change set, and there''s no risk of having undesired changes in the old one. As changes to the base image progress, and several CuisCore //ChangeSets// are saved to disk, these numbered files are created in sequence. They will be ready to be loaded back in proper order in a fresh Cuis image, or to be sent to Cuis maintainers for integration in the update stream and in next releases of Cuis.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
ManagingYourCodeInCuisLoadingChangeSetFilesIntoCuis
^(EruditeBookSection basicNew title: 'Loading ChangeSet files into Cuis'; document: ((EruditeDocument contents: '!!!!!! Loading ChangeSet files into Cuis

There are two ways to load //ChangeSet// files (.cs): **[FileIn]** and **[Install]**.

**[FileIn]** loads the code without creating a new //ChangeSet// object. This means that changes that belong in the base image (and not in a package) will be added to the current ChangeSet for Cuis core changes, as if they were done by the user. This is appropriate when we are combining code from more than one source into a single ChangeSet. Any change that belongs in an installed package will be added to it, and the package will appear as dirty.

**[Install]** loads the code into a separate //ChangeSet// object (viewable in the [[[ChangeSorterWindow openChangeSorter]]] doItWithButton: ChangeSorter tool). This is appropriate for loading Cuis updates, or other code that we are not authoring, as it doesn''t add new items (class or method definitions) to the current ChangeSet for our changes to Cuis. Usually any ChangeSets should be installed before doing changes to the image. The reason is that an installed ChangeSet could overwrite changes done by you, or packages you have installed. If this is the case, the affected packages would appear as dirty, and your change set would include any installed changes (that don''t belong in a package). Be careful when saving packages or change sets if this was the case!!!!') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
ManagingYourCodeInCuisPackages
^(EruditeBookSection basicNew title: 'Packages'; document: ((EruditeDocument contents: '!!!!!! Packages

Let''s start with //Packages// . The Package implementation in Cuis is based on PackageInfo, the standard way to specify packages in Squeak and its derivatives, and used, for example, by Monticello. It uses Package names to specify prefixes for Class and Method categories. Classes and Methods whose categories match a Package''s prefixes belong in that Package. More details about how PackageInfo decides what code belongs in a package are available at {http://wiki.squeak.org/squeak/3329::url} .

To install packages //(.pck.st files)// in Cuis, use the [[[FileListWindow openFileList]]] doItWithButton: FileList., navigate to the appropriate directory (on disk, or in a GitHub repository, etc), select the package file and click on **[Install Package]**.

Cuis includes a tool to manage installed //Packages//. It is at [[[CodePackageListWindow openPackageList]]] doItWithButton: World / Open / Installed Packages.. To create a new package (instead of installing an existing one from a file), click on **[Create Package]** This creates a new package, and associates with it all the existing code in the image that matches the package name.

The operations available on installed or newly created packages are:

**[Save]** Saves a package on the file system. Overwrites any existing version. It is good to save the package from time to time, to reduce the risk of losing code.

**[Delete]** Removes the Package instance from the image. Does not remove any code. This means, effectively, to merge back the code into Cuis.

**[Browse unsaved Changes]** This opens a ChangeSorter on the ChangeSet that captures all the changes done to the Package since it was last saved. Therefore it shows the work done on the package that would be lost if the package is not saved.

**[Browse package code]** This opens a Class Browser that only shows the code that belongs in the package. This is useful for working on a package, or studying it.

**[Add requirement]** This opens a select list of loaded packages.  Each package provides a //Feature//.  You can CANCEL, require the current Cuis base version (at a minimum) or require any of the packages on the list.  Required packages will be loaded before the selected package (```Feature require: #''your-package''.```).  When a package is selected, the lower browser pane shows its requirents, which may be deleted.  Don''t forget to //Save// your package after adding or deleting  requirements!!!!

The tool shows, for each Package, the name, whether it is dirty (has unsaved changes) and the file it was installed from / saved to.

Handling Packages like this, Cuis behaves as a sort of document editor (like, for example a regular text editor) whose documents are //Package// files //(.pck.st)//. Cuis doesn''t handle Package versions, ancestries, etc. If versioning of Packages is desired, the best is to use a versioning file repository, such as Git or Mercurial. The recommendation is to use a GitHub repository with a name beginning with ''Cuis-Smalltalk-'', so it will be easy for anybody to find it. Cuis //Package// files are uncompressed, use Lf (ASCII 10) as newLine, and are encoded in ISO 8859-15. This means they are Git friendly, and Git/GitHub can diff and merge them, and browse them with syntax highlighting.

This is not unlike using Git or GitHub with a file-based development environment such as Eclipse or a text editor. Like Cuis, these tools don''t do version handling themselves, they just load and save files; and let Git do its magic.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:26:27'!
initialize
    super initialize.
    title _ 'Cuis Manual'.
        self addSection: self Introduction.
        self addSection: self CuisSmalltalk.
        self addSection: self ManagingYourCodeInCuis.
        self addSection: self AdditionalPackagesForCuis.
        self addSection: self CuisAndGithub.
! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:27:26'!
BookReaderAndEditor
^(EruditeBookSection basicNew title: 'Book reader and editor'; document: ((EruditeDocument contents: '!!!! Book reader and editor

To read a book, send {open::selector} to a {Book::class}:

[[[EruditeManual open]]] doIt

The {EruditeBookReaderMorph::class|book reader} has editing capabilities, but the {EruditeBookEditorMorph::class|editor} provides live preview and instant updates for editing.

To edit a book, send {edit ::selector} to a Book:

[[[EruditeManual edit]]] doIt

Books are stored as subclasses of {EruditeBook::class} class . To **remove** a book, just delete the class. To specify the **package** the book belongs to, just recategorize the class.

!!!!!! The book editor

Most of the actions are invoked from the context menu of the book //explorer// on the left of the editor: 

{/home/marian/src/erudite-menu.png ::image}

!!!!!!!! Creating a book

A new book can be created from the WorldMenu //Erudite...->New...// menu. Then enter a title and you are ready to go. Always remember to save your book before quiting the editing application. Books are saved as methods on the class side of {EruditeBook::class}.

!!!!!!!! Editing a book

Book editing can be invoked via the {edit::selector} message on the book, or the WorldMenu //Erudite...->Edit...// menu.

First of all, a book //section// needs to be selected or created. Use the editor menu, //add section//. Then you can start editing the section content on the text panel on the right. Markup syntax is described in {Syntax reference ::section}.  

When you are done, save the book, from the explorer menu //save//.

**List of menu actions**

**add section**. Create a new section. If you want to create a section toplevel, then unselect all sections on the left panel before invoking this action. Otherwise, select the section you want the new section to be child of.
**rename section**. Rename the selected section.
**remove section**. Remove the selected section.
**move up**. Move the selected section up (before its left sibling).
**move down**. Move the selected section down (after its right sibling).

**open**. Open an //existing book// with the book reader.
**save**. Store the book being edited on a method on the class side of {EruditeBook::class}.
**edit**. Open the //current book// for editing with the book editor.
**save as..**. Save the current book as a new book with a different title.
**refresh**. Invalidates rendering caches of the book reader/editor. Book documents are rerendered after that.
**reload**. Forgets the current changes and load the book from the storage.
**reset variables**. The book reader and editor manages Smalltalk variables the same as a Smalltalk Workspace does (see {#Syntax test ::section} for examples). This sets already assigned variables to nil.

**explore book**. Open the current book with a Smalltalk explorer.
**toggle view sources**. Makes the text editing panel visible/invisible.
**toggle live editing**. By default, in the book editor, the markup renderer panel on the left is updated whenever you edit the markup sources on the right panel. The problem with this is that this can be expensive as the content grows and too much parsing and rendering is being done for each change. Toggling live editing off, prevents the left panel from being updated on each change, and update only when markup changes are accepted (alt-S). //Tip:// toggle live editing off for big documents.') images: ((Dictionary new) add: ('/home/marian/src/erudite-menu.png'->(EruditeForm fromBase64String:'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')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:27:26'!
Extensions
^(EruditeBookSection basicNew title: 'Extensions'; document: ((EruditeDocument contents: '!!!! Extensions

Extensions to Smalltalk tools are shipped separately.

To install: [[[Feature require: ''EruditeToolsExtensions'']]] doIt

!!!!!! List of extensions

**Markup and formatting in class comments**

This is implemented.

**Markup and formatting of code comments**

TODO. Not implemented yet. ') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:27:26'!
Extras
^(EruditeBookSection basicNew title: 'Extras'; document: ((EruditeDocument contents: '!!!! Extras

A PetitParser tutorial is included in the Erudite distribution.

To install: [[[Feature require: ''PetitParserTutorial'']]] doIt

Also, a book on Morphic, the Cuis UI system:

To install: [[[Feature require: ''MorphicBook'']]] doIt') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:27:26'!
Implementation
^(EruditeBookSection basicNew title: 'Implementation'; document: ((EruditeDocument contents: '!!!! Implementation

This section describes how Erudite is implemented. It is a simple example of how literate-programming can be realized with Erudite.

!!!!!! Model

The model in Erudite consists of {EruditeDocument::class} and {EruditeBook::class} classes.

Erudite documents are piece of text meant to be formatted. Their content is Erudite source code.

Erudite books are formed of {EruditeBookSection::class|sections}. Each section has a document and other subsections as children. Each subsection also has a document and other subsubsections as children, and so on, and so on.

!!!!!! Parser

The Erudite source code parser is implemented as a PEG parser using {PetitParser tutorial#Introduction::section|PetitParser}. {EruditeMarkupGrammar::class} describes the grammar abstractly and {EruditeMarkupParser::class} is the actual parser (returns parse nodes). You can test the parser invoking the {parse: ::selector} message on it:

[[[EruditeMarkupParser parse: ''!!!!!! A heading'']]] inspectIt

You can also test particular grammar rules:

[[[EruditeMarkupParser new heading2 parse: ''!!!!!! A heading'']]] printItHere

!!!!!!!! Smalltalk parser

The {SmalltalkEruditeParser::class|Smalltalk parser} parses Smalltalk comments into Erudite documents. This parser tries to interpret the different type of references in Smalltalk comments, like classes methods and selectors. This parser is used by the Erudite tools extensions.

!!!!!! Formatter

There are two formatters implemented at the moment. A Morphic formatter, used by the Morphic book reader and editor. And a Latex formatter with which you can generate PDF documents.

!!!!!!!! Morphic formatter

The Morphic formatter is implemented in {MorphicEruditeDocRenderer::class}. It is implemented as a visitor that outputs attributed Morphic {Text::class} on each visit to a parse node.

Here is an example of how it is used:

[[[|erudite|
erudite _ SmalltalkEruditeParser parse: ''This is an Object. Look at Object>>at:
Events are triggered via #triggerEvent:''.

(MorphicEruditeDocRenderer on: erudite) render edit]]] doIt

!!!!!!!! Latex formatter

The Latex formatter is implemented in {LatexEruditeDocRenderer::class}.

For example, this is how to generate a Latex/PDF for Erudite manual. First generate the ```.tex``` file:

[[[ (LatexEruditeDocRenderer on: EruditeBook eruditeManual)
	texFilePath: ''/tmp/EruditeManual.tex'';
	render]]] doIt

Then process it with ```pdflatex``` command:

```pdflatex -shell-escape /tmp/EruditeManual.tex```

!!!!!!!! Links renderers

Erudite document links are parsed in a generic way. Their syntax is like this: ```{target::linkClass|optionalLabel}```. That linkClass is then used to match a valid renderer. Links renderers are subclasses of {DocLinkRenderer::class} and are matched looking for the class named <linkClass>DocLinkRenderer (DocLinkRenderer classes with linkClass as prefix), and invoked via {render:in:on: ::selector|render: aDocLink in: aDocument on: aStream} message.

!!!!!! Book storage

Books are stored as subclasses of {EruditeBook::class}, with each section serialized as a class method:

{EruditeBook>>storeAsClass::method}[embed]

There''s also the possibility of storing in a class method, but that''s not the default:

{EruditeBook>>store::method}[embed]

{EruditeBook>>storeOnMethod: ::method}[embed]

As you can see, it is done via the {storeOn: ::selector} method (it is indirectly call from {WriteStream>>store: ::method} method).

Invoking the serialized methods returns the book:

[[[EruditeBook cuisManual]]] inspectIt

Methods with Books are tagged with a //book// pragma, that is used later for listing available books:

{EruditeBook class>>booksList::method}[embed]') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:27:26'!
Introduction
^(EruditeBookSection basicNew title: 'Introduction'; document: ((EruditeDocument contents: '!!!! Erudite Manual

by **Mariano Montone** //(marianomontone@gmail.com)//

This is a manual and reference of Erudite Documentation System.

Erudite {EruditeDocument::class|documents} are edited using a wiki-like markup with capabilities for linking and embedding Smalltalk code. 

Main documentation is realized via {EruditeBook::class|books}, a collection of documents organized in {EruditeBookSection::class|sections}.

Books are read and edited via the {EruditeBookReaderMorph::class|reader} and {EruditeBookEditorMorph::class|editor} morphic applications.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:27:26'!
LiterateProgramming
^(EruditeBookSection basicNew title: 'Literate Programming'; document: ((EruditeDocument contents: '!!!! Literate Programming

!!!!!! Concept

Literate programming is a style of programming invented by Donald Knuth, where the main idea is that a program''s source code is made primarily to be read and understood by other people, and secondarily to be executed by the computer.

This frees the programmer from the structure of a program imposed by the computer and means that the programmer can develop programs in the order of the flow of their thoughts.

A Literate program consists of explanation of the code in a natural language such as English, interspersed with snippets of code to be executed. This means that Literate programs are very easy to understand and share, as all the code is well explained.

**Donald Knuth. "Literate Programming (1984)" in Literate Programming. CSLI, 1992, pg. 99.:**

//"I believe that the time is ripe for significantly better documentation of programs, and that we can best achieve this by considering programs to be works of literature. Hence, my title: "Literate Programming."//

//Let us change our traditional attitude to the construction of programs: Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.//

//The practitioner of literate programming can be regarded as an essayist, whose main concern is with exposition and excellence of style. Such an author, with thesaurus in hand, chooses the names of variables carefully and explains what each variable means. He or she strives for a program that is comprehensible because its concepts have been introduced in an order that is best for human understanding, using a mixture of formal and informal methods that reinforce each other."//

!!!!!! Advantages

According to Knuth, literate programming provides higher-quality programs, since it forces programmers to explicitly state the thoughts behind the program, making poorly thought-out design decisions more obvious. Knuth also claims that literate programming provides a first-rate documentation system, which is not an add-on, but is grown naturally in the process of exposition of one''s thoughts during a program''s creation. The resulting documentation allows the author to restart his own thought processes at any later time, and allows other programmers to understand the construction of the program more easily. This differs from traditional documentation, in which a programmer is presented with source code that follows a compiler-imposed order, and must decipher the thought process behind the program from the code and its associated comments. The meta-language capabilities of literate programming are also claimed to facilitate thinking, giving a higher "bird''s eye view" of the code and increasing the number of concepts the mind can successfully retain and process. Applicability of the concept to programming on a large scale, that of commercial-grade programs, is proven by an edition of TeX code as a literate program.

!!!!!! Contrast with documentation generation

Literate programming is very often misunderstood to refer only to formatted documentation produced from a common file with both source code and comments -which is properly called documentation generation-; or to voluminous commentaries included with code. This is backwards: well-documented code or documentation extracted from code follows the structure of the code, with documentation embedded in the code; in literate programming code is embedded in documentation, with the code following the structure of the documentation.

This misconception has led to claims that comment-extraction tools, such as the Perl Plain Old Documentation or Java Javadoc systems, are "literate programming tools". However, because these tools do not implement the "web of abstract concepts" hiding behind the system of natural-language macros, or provide an ability to change the order of the source code from a machine-imposed sequence to one convenient to the human mind, they cannot properly be called literate programming tools in the sense intended by Knuth.

!!!!!! Literate Programming with Erudite

Literate Programming can be realized by the creation of Erudite {EruditeBook::class|books}. In particular, via code embedding in its different forms. Contrary to other LP systems, there''s no need for a tangling and weaving phase; the document source is kept separately from the source code, Smalltalk code is referenced and embedded from the documentation. That means that in spite of documentation and code being separate, the referenced code is always up to date. Finally, the possibility of evaluating Smalltalk code from the documentation makes Erudite very unique compared to the other LP systems.') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:27:26'!
SyntaxReference
^(EruditeBookSection basicNew title: 'Syntax reference'; document: ((EruditeDocument contents: '!!!! Syntax reference

!!!!!! Headings

Headings start with two or more exclamation marks:

```!!!! heading
!!!!!! subheading
!!!!!!!! subsubheading```

!!!!!! Text emphasis

!!!!!!!! Bold

Text between double *: ``` **bold text** ```

!!!!!!!! Italics

Text between double slashes: ```//italics//```

!!!!!!Unformatted text

To prevent text formatting, enclose the text in triple back quotes.

!!!!!! Links

Links have the following syntax:

```{target::linkType|label}[options]```

The parser and renderers (formatters) are designed to handle different types of links. The system is extensible. Links for handling Smalltalk code and references are provided in the basic package:

!!!!!!!! Section links

Links to sections in the same book:

**Syntax:** ```{sectionName::section|optional label}```

Example: ```{Introduction::section}``` ==> {Introduction::section}

Links to sections in another book:

**Syntax:** ```{bookName#sectionName::section|optional label}```

Example: ```{EruditeManual#Syntax test::section}``` ==> {Erudite Manual#Syntax test::section}

!!!!!!!! Selectors links

**Syntax:** ```{selectorName::selector}```

Example: ```{at:put: ::selector}``` => {at:put: ::selector}

!!!!!!!! Class links

**Syntax:** ```{className::class|optional label}[options]```

Example: ```{EruditeBook::class}``` => {EruditeBook::class}

**Options:**
   - //embed//: embed the class source code.

Example: 
```{EruditeBook::class}[embed]``` 
=> 
{EruditeBook::class}[embed]

!!!!!!!! Methods links

**Syntax:** ```{Class>>selector ::method|optional label}[options]```

Example: ```{EruditeBook>>initialize: ::method}``` => {EruditeBook>>initialize: ::method}

**Options:**
   - //embed//: embed the method source code.

Example:
```{EruditeBook>>initialize: ::method}[embed]```
=>
{EruditeBook>>initialize: ::method} [embed]

!!!!!!!! HTTP URLs

**Syntax:** ```{HTTP url address ::url|optional label}```

**Example:** ```{http://cuis-smalltalk.org::url|Cuis Smalltalk}``` => {http://cuis-smalltalk.org::url|Cuis Smalltalk}

!!!!!! Images

Images from files can be inserted via links:

```{filePath ::image}```

Images are serialized to the Erudite Document; there''s no need to ship the images separately with the books.

Example: 

{/home/marian/Escritorio/smalltalk-logo.png::image}

!!!!!! Code

Code is enclosed between triple brackets, like: ```[[[code]]]```. Only Smalltalk code is supported at the moment.

**Syntax**: ```[[[code]]] action```. Where action is optional.

**Actions:**
  - //doIt// : Renders a link besides the code with which to evaluate the code.
  - //exploreIt// : Renders a link besides the code with which to explore the result of code evaluation.
  - //inspectIt// : Renders a link besides the code with which to inspect the result of code evaluation.
  - //printIt// : Renders a link besides the code with which to print the result of code evaluation to the Transcript.
  - //printItHere// : Renders the result of code evaluation in place.
  - //embedIt// : The code is not shown. The result is printed to the document in place.
  - //doItWithButton// : Does not render the code. Instead, it makes a link with //label// that evaluates the code. Syntax: ```[[[code]]] doItWithButton: label.``` **IMPORTANT: label ends in a period**.
  - //exploreItWithButton// : Same as above, but explore.
  - //inspectItWithButton// : Same as above, but inspect.

**Examples:**

Plain Smalltalk code: [[[Dictionary new at: #foo put: ''bar'']]].
[[[Dictionary new at: #foo put: ''bar''; yourself]]] exploreIt.
[[[Dictionary new at: #foo put: ''bar''; yourself]]] exploreItWithButton: Explore dictionary.
[[[2 + 4 * 5]]] printItHere
[[[ImageMorph new]]] embedIt
') images: ((Dictionary new) add: ('/home/marian/Escritorio/smalltalk-logo.png'->(EruditeForm fromBase64String:'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
AAAAAElFTkSuQmCC')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:27:26'!
SyntaxTest
^(EruditeBookSection basicNew title: 'Syntax test'; document: ((EruditeDocument contents: '!!!! Syntax test

!!!!!! Headings

!!!! heading1
!!!!!! heading2
!!!!!!!! heading3
!!!!!!!!!! heading4

!!!!!! Emphasis

**bold**
//italics//

!!!!!! Unformatted

```unformatted **unformatted** //unformatted//```

!!!!!! Code blocks

[[[Smalltalk at: #Object]]]
[[[Smalltalk inspect]]] doIt
[[[Smalltalk]]] exploreIt
[[[Smalltalk]]] inspectIt
[[[Smalltalk]]] printIt
[[[2 * 3 + 5 / 34]]] printItHere
[[[ImageMorph new]]] printItHere
[[[ImageMorph new]]] embedIt

[[[z _ true]]] printItHere
[[[z]]] printItHere

[[[x := 22]]] doIt
[[[x]]] inspectIt

!!!!!! Links

{Literate Programming ::section}.
Read the {Introduction::section|introduction}.
{Erudite Manual#Syntax test::section}

{Object::class}
{Object::class|labelled class}
{Object::class}[embed]

{Dictionary>>at: ::method}
{Dictionary>>at: ::method|labelled method}
{Dictionary>>at: ::method}[embed]

{print::selector}
{print::selector}[senders]
{print::selector}[implementors]
{at:put: ::selector}

{http://www.cuis-smalltalk.org::url}
{http://www.cuis-smalltalk.org::url|Cuis Smalltalk}

!!!!!! Images

{/home/marian/Escritorio/smalltalk-logo.png ::image}') images: ((Dictionary new) add: ('/home/marian/src/erudite-menu.png'->(EruditeForm fromBase64String:'iVBORw0KGgoAAAANSUhEUgAAAfIAAAHgCAYAAABej+9AAAC8JElEQVR4XuX9C3wUVbb3jefz
PO/Lw3vG/E/O5DknmDlzbOfSGWYy02I0TI+jrY40MxgzM0QiQU1UTBQhoIFglAnxQrwGhQBK
NBCVBJUOKp1bJ+l0roICgoAyCgxKEDEJchPB+++/d1V1d3V33bpzIWHVx5/prqq9a++qpr61
1l61V9SFf3kUFzJdes182K+4A3+/7GZc/4dpmH5pCn3RF33RF33RF30NA3Eucz5zTnNeXyix
myvqNxOLMOny2zE9+Tr6J4u+6Iu+6Iu+6Gu4i/Gac5vzWwD53xjhb2Mb6Iu+6Iu+6Iu+6Gvk
iPObwzzqtkuuBX3RF33RF33RF32NPP3l8umIupV9CFbWuInI+e1lePDSy/HsldcIevCSPwrr
+DalMnrKvNSO7CsvxgNTE/DMjLGCHrghQVjHt0VS540X2zFp/KWwX2fBpKwkQfYUi7COb4us
zmtx1cXpuOTKu5F83cOCLr1yDls3RdgWSZ30RV/0RV/0RV+DImaZR91yySQEyHIlFl/+J7yX
l4cvVqzAty+9JOiL5cvx3pw5WPzHq5HF9gkpp6Es6x+x+NbfYNdzf8MXrnx8275I0BcN87Br
5XUoufXXwj7h1Dk56Qpce8MlyH/uRjzrWYjKt0sEPdtSiLllUzHphouFfcKpM3VcKqx/uR9Z
DzXi4crdWPrGRyhleoh9vvkBF37/5/uEfcKp85akBfB8AbYcV9Cn8Nz05/Dqi0Bzl+/DqS/q
8WSStz0ncWD5LbJ9puOxR5Zi2c03DMwxfX0+ifcCjiPp6gVoPyRuP6C0fThK8bzRF33RF32d
fUXdkvQXeJX1Oxsq/zQRXz75JFBZKWrNGlHS91NPPIE1E8R95WXVlGW9DGvm/AqnNtwBdBWL
6lwkSvi+iG3LwUt3/1rY10idky++HNfdmYSnGu/By+8sxtqtT+GlTY/jxU2Psc/sO1u3uPFu
/HXGpcK+Ruq87qLrMD6tBPeWv4flNQeZurHMKUr4zNbNZ9t+f30Jg/l1huoUdPH9AtT2VzyK
B6+7BXODdOfFfzFeV4Sau4yDvA5PCseaiDvZcedfNTGojQxSy24ZmGNKfT7F6jz1zwrMDerj
zLvqcOTElziFATzmYGugzxF90Rd90dcAKSqLw5bppnETsPiSy3Dq3nuBZcvwOQP24cceA5Yu
BUpLcZx97+Xf2bZT//gHFidfjpsumgBveSXddMkElNxowqnKFKBxNtAwS0G5bNscnHolDSU3
/1woo1XnNNbOP6WNxYLXMvBM131Y0XkvnnLlYdXrS/FqQwWefGOusO5Ztu2BDVmYcH0iMsZp
15kx7i+wXH0vbinZhgeq/oWFa/aFqnKfsC1nyXZcfE0BK/NnzTp9kgHA0P6DoDwZyIekjVJ9
+9e78N7BfXjl5omy7el4zP0pjrgd+OdZPi+R9GnEtJe+6Iu+yCgqk/2P6/bEP+C9SZMABvLP
778f2159Fdvr6vAJg/ax++7DO8y9/s4bb+BT9hmFhdg1ebJQxlteSdOvvAi7HvgJsHYi4EgD
qqcA69NF8c983aupwMvXAuv+hl3FZqGMVp1/Tr4Efy3+DRbUTsHDriwsaroVhesz8c57b+HI
kT489MoMFDVMQ2HdVDzouhnpjycJZbTqtLHx74turUbmU+/jjuX/xJ1MM1aIupPpjmX/xG1L
3sctT7+PHPbZesdrsI27XrNOn2QA0N2n9H48sciFXYe+BE7sg+O6ierlVdbfdfMytG/uwRnm
uD51aBs8i1idpSLIn7hYoZxkPQe4/Nm+3vpu+uv9cKzfhiPCPl/iyGYXXrgx3VifSwvwQtOn
2P/ibNzk3Xblo9hycA9q7nw0tP1XFsDxWjsOHOLWOlu+6MGu9RV44q8TFfo9C/+Y/yp27/5S
cNH3/LMODnm7wjlvYR33FmPXnb7oi77oa4gUlXnxn8H1oCUZX/z978DUqdifkYH329rw7Q8/
YFd9Pd6uqMDp06fRvXcv3r31VuDGG/FFWhoesIyHt7ySHrj+Anzx5PnMqr8Ap576BY4vScSJ
ZeOYLsaJpb/FicVmZulfgJOP/xQ/LPsFvij5b6GMVp1XTvoV0lf+Gje/dBFuXnUJpldchunP
XoW3d3Shj4H8zuWTkFH2O0wt+y1uWXOJ8JeX0arzt5fNRtKsdvw+twUp817HjWw8/JaHuRpx
04MupP+jHn+/rw4T5qzHH+9pRfLsDqGMVp0+jWMAOMkBkIWbNPdh4D34Gfa7K7Bi2mwUTZuJ
e64MLK9Wr3fdTSlLsJvV09NUjhUzWB0zFuGVpj04cpCtPMlAPk6pnB13TCsVyu2veARFKVm4
JyVN3Ja6CB5WtudtB0pnzGRtuherqvfg1MltcKTYDfV53r2d6Hn/VfxjnLjtjvnt7LsDRTal
9pfilWWL8Cg/1k2z8Y87S1H/9qc4xfb3lveeqzOH9uAAP1dSP+vfYkA/2YkVNvXzo37ejB5X
oT76oi/6oq+zrKibL54Irmcv+T2+ZXDGlCn4gf3dm5WFfRs34rvvv8e3332Hzz7+GDvvuQff
MEuc78P35WW85ZX0zG1j8N1T8fjqiTHYVDYDH3a9jg871wdoz5uv461XH0Pfo/+D79m+z9x6
vmadtoxfIGP1b5Be9ms8WbUArVtc8LzdgCOf9+Hrr7/Gm9ta2boGPOt4HOnPJmIq29eW8XPN
OhOueQDJd29E0l1uzH3sZRw4cBCf9fTh8Ge9gvjnjz4+gNmL1uLiu1pw6ZyNrEyRZp0+jbsP
LSdVgt1OtmO5TbbPP8tRNE6pPAdIps766/FI9afA+6/gH1fK9rvyLjjfhwDyx8ep1Kd4jOvx
j9c+YzB7BY/L6xuXifK3GNyr78UMzT6L9d145b1oYQ8obdMmsG23oIIB8sBStl6tX8GyPYy3
Tn6KlhnXB5zPU/9cjbtl5+rGlNU4wMbd37p3cpjnLZzjGihHX/RFX/Q1xIq6id0MuTiUv5NA
zvX5X/+Kt8vL8T3EhVvo+6+/HuCSgdxbXklekJ9+fAzeeX0JTn55Bie/OBWgU2zd+2+34LNH
LpRAPkazziskkE9ZORavuiqYy/gUTpw4ge/Yw8YPzIPwxRdfCOsaO51If+a3wr5XMJBr1SmA
nME5+Z63Yc1twur1nfj+++/gXb779lusfKUNv5/VjPFsHxHkD2jW6dNFInj2r74XC6/NxN1y
XTeZjfnL9nkhV/weUp67qTO111+UizoG7COr7wqqYwIWrP5MBPlFKvUpruP1nVSsb+ELzCo/
9AoWXqTVZ2991+Px6s9w5LX7kH3d09h1ch/WXat2zMl4vLQBu9+XXNy+h56T2PXwLYHnc0nQ
ubLdhy2svl2+82HwvIV1XIX66Iu+6Iu+zrIYyO3g8rnWGaSPM6t7W2mp4E7/7MAB7N+5E98y
y/w9Nkb+SXq6sA/fl5fxllfSA1NE1/r3i+Ox59GL8MHT1zD9KUjXYPfjv8fpJ/8bp9i+3LWu
VadtUoLgWueAzlp2Oe567lrMWHYdtu/egqPHjmL+ylswo2wSbl1+JaaWi8DnZbTq/O0fcwXX
Ooc0h/nluXXY0LyZ3ch/YP/9gHX1m3DZrHphG9+H78vLaNXp00UFEgBujmwftW3B6/n3g+L3
aQF1XIO7+Rj5yVoGcpX61NYdVHttjumgVJ+B/tw5ox5HDnXi5dX7cOatpzFX8ZjXYMELH+LU
iQ/RUlqMxzNmsYedm3F3xlLm9g/qp9HzYWS//h6XvuiLvujrLCvqRvY/rum/seL9iRMBBuoD
zNre2dSEwwziO+6+G7tvvhn73noLe7dtwz+nTRNAzved/pvfw1teSbdd+Tu8tzAOWPIT4Gk2
Vv7UGGXxbWwfvi8vo1WnPflipDz8S9z4UiIyXmBAf3Ess7wTsWlHGxsj78Xtz16NqS/8StjG
90l52CyU0arz8nFp+G3meozP28xA/RYuvfstTLjbiTe3vIfWjTtw9Zwatu5tYRvfJzHTIZTR
qtMnBgA3A8DHDAAR7cO3HRS3ZcjX2+Zjs7zMRbNQK1nkAfsxUN0vWOS1eOwilWMpruP1MYv8
tWIUMrDNCdZ1fw86jkZ/LroLG6T3xt9flKW5T0j7r3gY75+Q76dyrkLqM3re+nlc+qIv+qKv
s6yoaRdNANcNv7sKTyVZ8SW3ypn7fB+D9/bsbGFMnI+Zf3jTTdidmYkf2Da+z2K2Ly/jLa+k
Gy6+Cotv/Cm+LGGgfvonmvqSWeMlbF9eRqvOKeyYV002I/25X2Pai4mCbmAu9HWuF7Fxawdu
WX4Fg7u4je9zJdt3ik47r//dBCSysdxLcjsEi1uA+ZxN+PM962G/+3UB7ALE2Ta+D9+Xl9Gq
0yfLvSIAlt4U2T6WmVjLgNrTnI8c2fqcnHr0QV5mMhYJY+Qv474rZOWvmIENwhh5LR61qBzL
MkOE3pKbMNV3jMl4dP1nOL3pKcy2GOyran/+hNmLXoZ7/fN49HKVfVgbWpkH4F8VM2VtmIB7
HtouvG/u30/lXIXUZ/C89fe49EVf9EVfZ1lRGex/Xk1L/CPW/v4ynJYC2n6QjZlDGh/n2/g+
0xIvh7ysmqaN/z2q7jwfp0vOlyzzILF1fBvfh+9rpM6Ui/6Aq6f/QgC1YJkzN3vGiosxbfkl
mPp8orCOb7vqtl/gOravkTr/bJmEX016QoS5YJm/LQBchPjbwjq+je/D9zVSpyABAAwUqxdh
wbU3ITdId1/h3UeERGgdf8KCJXvxBT6D+6F8FEybgUfmvYpN//wQpxFY5oZrnwJjFz5rfB6l
d87EgjsfQlXjh+gTotZr8YhF7ViZeG7TSXyx6Xk8PI21K+Vv4vqUh+A+dBJ9ja9iVc4MLJjG
68zH00tfxRtLZ+IGzT6r9Udtn8l4mD+InHwHb8y7lx1rBkqXduDjQx+ynsv2U6s7ZL3R89bP
49IXfdEXfZ1lMZBfA7k4zJ9K+j12M9c5t7y/Y/DmOsU+83V8G98nuJyWpo0fj8U3/Td2PxAn
jIPzADgu/pmv49v4PuHUed04K6683oyURb8UItgzKn4jiH/m6/g2vk84dXJA/+aqAvw2a70w
Di4EwDEJY+JsHd8mQtx4nV6QK481c1dzpgwSN6rUkYnSiu34l1DPKXzc/BwDbj7eViiTnbEE
nk2fgb/2/cWhdxjE7sUjHGgnaxjIr1E9VnbGKrz9Pg/1OsqaVeNbf8Pl9+K59ezY/GGAtfmL
gx9iZ/PLeO7Ov+r0WaM/avtccSeeq34Hn51ghzrxKevnKjxybX7gfmp1K603et76c1z6oi/6
oq+zrKip7OYerPTfXonbfj0eD1kuRdklvxfEP/N1fJtSGT2lj7sSt175WzyQ/j9YOX2MIP6Z
r+PbIqkz7XdX4ppLx+GKSWZccePPRbHPfB3fFkmdk393DS67KA2/uWw2zNc8KIh/5uv4tkjq
pC/6oi/6oi/6GixF3WD5E+iLvuiLvuiLvuhrZIo+yOmLvuiLvuiLvkYyyNN/dzXoi77oi77o
i77oa2Qqagr7H33RF33RF33RF32NTEVN+e1VoC/6oi/6oi/6oq+Rqajrf3sl6C/0l7O92EwX
+XTy+An6oi/6oi/60hHnNxd9kNNf6IOcvuiLvuiLPsjpL/QX+iCnL/qiL/oaFiBf59lCX/Q1
5KIPcvqiL/qiL/og92vtfCT+Mh2LGge63kJc/JtBqJe+6IOcvuiLvuhr2ICcQ/SCv+rDzuh+
Zwvkg9k++qIPcvqiL/qiL/ogpw9y+iAfgeo5iqwpH+F//+kDUak9eGRnr/42+qIl+r8F+ho2
IBc+/xnT56Qj8fxYxPDPz70p7Df5l9GIivo/GHVeNH7040uR+cKb0v5Xs/1vYn9j8V+XPyHW
WVOJO/92Kf77x2zf8xPwx+lL8Zz8mDWrMX3S7/BfrK7/+uWfMTX/Nj/Ig4EcDPnGSsxOv0ys
+8cXIjFdrFu9fbK6tNql0Xf6CgPkwTc0TX2Mq9Z+do6D/Biq1x/CU2u9+hTuQ8OoP5J+fPch
7FItdwxP3f1x6PWb8glqe+jfnOmDnL6GH8jPi8XFcyrxgudNPD2HAXP8IixXs3iF/aNhvulZ
GahdmDfpQlz4tyewvFGEduZ4BtwZDlTJt6fLt/8Eo843AnIX7hPqXoSnhe9vYvkLG8R61drn
W6fTLq2+0xd9kCuC/DPMmdmNn02TdOtBPPXhML/Bq12fa7sxf7tyu/q2H8G4az+iD3L6IKev
kWORX415NdK2F+5mEL1JGbDesudfjdnrZevWP4E/XnAZ7lzrX1e1PB0X/uZuEb41ytv/+wID
IFcoq+lal6/Ta5dW3+mDu18g//EUGewC1IO/rT92bt+gRwrImX72yGEcDClzHNWPdCs/iNEH
OX2QD6xw8hz/O4QgV4GoBigX6q0ToBhYT+D2+cZc60pljYLcYLtUXfr0FRnIR/oNjRDI//eU
g1gd7FH48HP8RXV/+iA/Z3/39EUP5AHrmOU7XsvyVbSMb5JZ5IW4mI1PL5Qs46rnZsB8wcBY
5ON1LXL6ID+rIFcp27fzKIoeOYixUz4OdMcbOFbfzs9hTf1IFz7CMR4Uj/Hj1G6Mu/8TPPNW
T+Rj5EaHGFJ78cyHCufi0DGsXfsJpt7LPBesTT8SPBs9sN5/BEXOY9g3gCD/sc9t/jGsaz5D
n2//Xmwt72HHfldyv3/s/6x4Ltn+nZ/jkWePsHYfxLhbD7NzeVjY90fs79iZvZi65HOs3X7c
+LX/8CieWnIQVl4XO/75t/Zg6rOfoutQ+CDV/y0MfPvpw4u+hhfI1y8SQBjgRleMFGdj0X/i
Y+BL1cfIA7ZXYvrlsjHyxtX48wUJ+PPiVnFM/G8J+NH5wWPk0jg3G8t+zjtGrts+nXbRB/kw
BHk37ihn47Pym+8ggPxg55HAfWTjxlPXHMLfhhTkvdjl/gRX6ZT98cxPUL1/ICzHbmQt6cX5
fxLX/ejWT+D2np9DR3HHrd59D+MvS4KuRfC57PkMj8z82EBsxGFcVf5ZoBs/uF3Xitde8boI
/T8SGDQ4EL+FgWw/fZDT17AEuacVC28So8Vjzr9MOSo8ICpdig7/cQLGT5fgKd/+pwTEKEWt
s+3LH0yHmR+HjVlPnnNbSNS6L/JcFrVuqH1a7aIP8uEH8qDAuPMFy3SAQb7/MLKmKURxTwmy
PsMGuTcQ7nBIPQExA7f3YfV++UPFJwqBZbzvzDr8U5AlffuR8CPgldrceVgGbPbw0tgj7Luv
sc8H+P996xFUd4YHQm7Nns/6eL7Suby2B3d0Hjd07bk1/GOFc3LVms8GFeT9aj99kNPXkIKc
vujrbEWth9xIlcp24y9rjmKXd7+eHuza3ztgN++taw8GAnLaQTwjuU77GOTnB1to4b5+Fs4N
vucYimYeDrT8nj3s7/uhz7D6EZmrO8QVHunwxXF0yVzoP773c3bMwFfOrOXHcFDXu3EcW9/6
DF0fHg9tE7tuXexc/0x2rs9/8Kh/iEDp2jNvwZzGY2JdDLKrH+xWf2VuQLwzA9h++iCnL/og
py/6IPdGUh9VHw/u9837GJ659+Mgt/2xELf72D99NCQgD37N68czP8fW4PH8/Z8GuPp/dPsh
dPUMQFAWD2rznifu1l4ja4vk/jcWb8CGBjo/xSNLPsHf7u1h48w9fu9DkGX7I+ZR8LVd4dqP
ezbwIaXvraBrwbwE7p4TAxwvMUDtpw9y+qIPcvoi8frZTNl4rGJZNn7bebxfkcKaN2/u/r71
owB36Zzgd6n3H41sjDwCkO9z9oa4z42Msa/ePxDR1T2oflD5NbOfPXhYeJgy4pp+5sEe5SEJ
JU2TX4vga89c128FX8tDsF6rdi0HxrU+YO2nD3L6CgfkSsvylg/o59mkv5ydNKYDOUbOwFqk
VdbozVvr5j8t8HghbT10FFOHCOS7gt38hkB+kNU3MK9J9b2lMD7PrPM5ElC1QdgruOfDar8W
iK8N96Gsn7+FgW4/fZDTF32QD9ZyBtuWT8O4MTGIGTsddcfon5FhDXK9sgqRzkVBFnWIO3Yk
WeTXHlaZSEdnNrlIzzEP9gqaivXHd/vd+3rejcDx/Q8w9pHP4f7w+NBY1APwWxjs9tMXfQ0q
yM/srsLcSeNwYQwDXMwYjLVOw6KWflJu/3JczWC58cwwos+xOkwbOwnl++mD+NwA+WeyaGvR
FX9HZ2/AeKf72W6Nd5+HaIxcz+pXGyO/+xC2DvHEJfucB/2R6n86jL85e4yDdJo2SAPrHmiQ
9/O3MATtpy/6GjyQn9mIuePGYXrVbhyTrNbDu1vQsu0cBLnUppYz9EF8ToBcIZnHz+73WpDi
+9gh7yGHEbXOrfH+R60fC7T6BTgeU49av/1wwIOFdcmn6NofWOfB/Z/B3fg5ih7pxV+ePTYA
Ueuy+g8xq/yRg/jb/UzcIj1kFKTHMD+47b53rXuxr/Nz/G3aR/1yTesFLvbrtzAE7acv+ho8
kO8vx6Sx06BmgO8vn4Rx0+twTO6eXmCFdcE2CYzTsHz5TFx94RiM4Z+3iZRcMC4GUVGjMZpb
+WOuRslucf3+Krbv2DGi5T9pAeq81vH+KkwbN8m3Hw6vx/RxVixQehIQjjuZHXeuUNeFk9dL
TduP9QsmY9yF/JhjMWnBeuz3Ft+9HJPGjPa16cJp63HY1yWNcpEcS+O8iGW3oWruJIwdI5a9
em6dsbaMRJBrzrUeFPAWwc1w6xqFcWU+A1jqYWOR8qrvkR9WHi8NO/tZD1bff1ihfrH/4x78
NCAqX/k9cvFd6p9NCX2feuySAQa5hvTGyN1LFALF+LvY3muR+rG2RdzfVwn79VsY/PbTF30N
okW+jUF3DKzTS7C+ZRv2BwP9cBUmj5vmH0/mFrxVAjMHFgPypOXbGOjPMFYyOE2qwn4Ni/zw
xo3SMQ6jZe44jJUB9XAVG7++ehG2HWMwmzYOVy/ahjNqljWDsXVBix+ArAUtM8fBOlMCHwNi
1fSgOhTbpFMukmNpnRdWS930sRg3swriM8sZ7N+9X2qjgT6MQJAPasAQsyDnq83Gxcrf8WwQ
GMOZ2Y3PZvbsocC5xiPIRy64569VmaGMv7MdHPTmPqI7s5vfahwuIBcfiu64XRmaP2Kejqec
R/ofrKZ1/P7+Fga5/fRFX4M7Rn64BeULpuFqBvTRUTGSpexFx2EBqtPWH5Y4PpPBtgS7Zdbq
ei/kd5ewOuaKoDTgWj/D97fOhd9YZcdi4BprZWLH2HZGw0V+4WRUHQ4a/x4XuO7MtkWwsgeD
3Wc0QK5XLpJjaZ2XY+vVx+mN9IE+yBXnJV/9bJ8wH/ePrv0A5/OsaosPofbD3ojmWv8Rn2v9
3iN4xM0geai/+ci9rt3PkcXnTQ+yDpVA7oVS9dojrEyP2CZuCUpzjf/l/iOYv/ZT1O48PqTJ
PQydS++1mCbND8+8Dn/h12L/AEWdGz1+pL+FQWw/fdFX2CDXknZA2G6sZ5byhZPKsd/Hl+kY
N7mKYVa0GCd5KRQMRv593EwNkDPrc/0CZuFfiDFCYB1zc184M2CfYy0zMXb0GN+Dg+GxbsEK
Hi247MeMkcSPMXZuYPuC26RXLpJjGTgviuP0Rvow3EFOX/RFX/RFX2f/9bMzcgtSpCtmWiej
fCMft56Eqv2IDORs3HvyWOaW33jMdxzrWBnImdt+AbPGJ89kLnZ2fNXAeUXLer1gza4/FmYA
nl65gSgjPy+aFrmBPtAHOX3RF33RF32QB8JjI6qqWrD78BlfsFXdAivGCha435LeONfKXOrj
AtdrAYuPrTNgBbik2bpJF16N5YKfmI0VM8s/xmeRM2ufHXfcTB5YdwwbfZ+NRsRzb4FVCBzz
jgqcYWPtG7cdNjBGrlFuIMrw797zwvstjJFL4+DgbwnIx8g16h02C0Af5PRFX/RFX8MG5NtQ
PnMys4x5JLkURT29BC1Bnu0z2xZgXLDLmwNKFVgMSgvEyOwxF3qj0RmgSyZjLDvOGAb5BSVz
YZX2P9YyN9AKl6zz6XUKLvbg4/oaySO+p8F6oRgVfyHzHsws3+2HYCTlBqJMwHkRTiY751dr
RK1r9GGYLPRBTl/0RV/0NdJmdtvPrOlx9GdDo7/QBzl90Rd90dcIBPkZbCu5mrmDW0Cf4/QX
+iCnL/qiL/oaSSA/VofpY5kr3DoTWoHk9Bf6IKcv+qIv+qIv+klT6C/0QU5f9EVf9EUf5MMK
5GrBYmezPfLAs+G0DHTb5PXxqXitA1c3fZDTF33RF30Nm7nW2c0+JkqcE13QhRg3eQHW7z9D
H+TnEsgH+JrQBzl90Rd90ddwAnnATZ2/InY1xspmdqMPcvogpw9y+qIv+qKvEQNySHODywBw
TPbe84XjMG2R7L1nve1B9R+umwsrc/FWKVn8wr5hZhqDRkY1oW0bsXy6Vci1fuG4aVhUviDo
ne4IMp8FN1s1o9ty7Sxoem0LeXlAJzOaVn2y66CWmU7/OvrPBX2Q0xd90Rd9DVuQHxYs8nG+
rGQ8kYlsJjIGi5JJY3F1iXeSEp3tvvrPMOBNZxCfi7rDWm7+8LOaqWdUk9o2V962C2Xzu+vU
rdie0EX1+EJ59Sxo2m0LeX1A5zzo1Ce/zooWuYHrKDsX9EFOX/RFX/Q1rMbIvYk6mCUWxcbL
L5zmnwv8cOjc4EIGNGuJmJFLb7tkyZUs4ilKF6jPn+5tSyRZzeRGqzyj2jHlto31zu8eSeYz
nSXg+FLfjWZBC2ibwmuAmm3Vq08P5Eauo+xc0Ac5fdEXfdHXIIPccPYzPYtc2t6i5no3sn0M
c0szV/A0vRfRleoKeNBQygimkVFNsW3LA9sWbuazUHTrHl9xqla9tmk+cBls6+7liq511Sxw
YVxn+iCnL/qiL/oaKWPkQsYybYt8sq5FPh11G8uZRWnFgpbD4bVFLyOYVkY1RStzrswijyDz
WTjH1wK5XttCLHL986BZnwGL3Mh13Egf5PRFX/RFXyMtap2NnU7jY6916mPkWttl9Z9hFuLk
cVczmB8LA5w6GcE0M6oFt20blk8OHiPXqNsQyDWOr5k8Ra9tSmPkWpnRdOqTt0UpM10Y15E+
yOmLvuiLvkbae+RCNLQ3W9c4TF5UpxAtrbI9CABnti0XLNhFG48Zt4A1M4KpZ1TztW3aOMEN
rR61HmbmsyDAqh5fLwuaXtsQznnQqS+gLUqZ6cK7jvRBTl/0RV/0RX+KVvoL/Sla6Yu+6EtX
J0D/77kh+iCnv9AHOX3RF33RF32Q01/oL/RBTl/0RV/0RR/k9Bf6IFcD+Y4S2BIy4e4ZYf/I
emqQGReFqJhkFG/upX/ToS/6oq9zBOQDnDGL/jKIyxBfqyEBuReuUaMZYG1YvCPoODHStrhM
1Pb3eD07UbWoEAsLl8N9YJg8VAxFv+k/0NAXfZ0DIDeaQGMokp8MxDECovDHYOzVM1G1m/6T
yIgHOZNlXif6hG296JpnweioQQTacAH5UPebPsjpi77og3xYgFz2mtW2kkkDl8mN/mIQ5OlY
XJLL/sYhJi4BE+dVY5cEnF3L7LBkVuOgrwyHUzLGM1ipAy0GcTEMXKZMVHNr+UA1Mk38YS1O
mFJYDrSDzcVIT06AKUaEYIzJgonZMivbByoLZpcUsn3jMJrVqwQw43UlY/ayEuTYEhAzOgYm
Ww5WBUCwG13LcjHRwo4l1JOM9MJK3zkZiH7rHsNIW4MeIEIfFgbgGNI131qej9RkE9suntfU
eeXY2kP/Rk9f9EE+8CA3kjErguxhatnCIjqGXn9CphlVyGamm92Nv59t1Xg/23gf/fvzjGgx
GDOOZ0Q7jN1V0nd5hrSw95XP3KaTdU2tPwMBclavJVu6wR9wo9ieANuiLaJVuaccqZZ0EUzC
zd+N2ck2ZetPDobCdJii4jCxfCd2ldsRF2ViEMnF+JhAoO1z5CA1NROz5+Ujf16uAGr+mzJ5
Hx4C3NYJSM3OZ/uWKII8vLosSM9l+1jE33CcvRy7pH7sKuHtZQCOsyGT7ZMq7ZOQLX+g6V+/
dY9hpK18eIEdzyK47uNgY+dm4SI/qAfkGMLDXKpQT0yCHTns3Oaw3wf3MpimlGMf/Zs9fdEH
+eCBXH3WtfCzh2lmCwv3GOFY5IrtMZDdTW/GtHD7yDOilWyUMqJdjTEXXo1pvgxpV/szpIW7
r/xaaWVdC2tGuQhAbrJjhWxct685B5bkYsni2ouqKewmv2avf5uNbdNz8zbXIN/CrDdLqgCQ
0ZZ81DKLORho3Nrb1VyJFSXFbLy7EPnZNgEaUQk5orvfBxsRjtouZeN1pZZL/enIh2U0W2fy
7rMFC5O5dWtCpqNbrHezNM4dl4qqPQPQbyPHMNJWLdf6QB3DVw972MvMF89rbjoS+D4xtoDf
DX3RF32QDwXIByB7WGi2sDCPoThG7k0uciHGTZrrHyNXao/B7G5VWnOYh91H/5zp4tzs01An
++7LkBb2vtMVywVkXdPrzwCNkQeM3fIbvsUPi4OOTFhSufXVjdps5q5ettPQeO2uEpvoUmYQ
sJXsRN/mYJCz+nIt0j6jlV3E3jpHJ2NhAKiCARZeXV7ohbSJ72MK3OfkgRqkx4ngKt48AP02
cgwjbdUE+QAdw1tP8DnlGm1Bfgf9cXn6og9yH8gjz34WBsgjyh4WRrYwI8eI4MGkpR9Zv8Tt
OlnMIs2IFvw90n0HMuvagFjkuTKLXARATnIqVjBrN9Nix6odBgOv9lSK4IhLFyzAUEi4kSPA
JgGZa3YKrnx+bMHaC4avEqjk6yOsK7RNnVho6YdFbqjfBo5hpK1yYIecnwE6hpJl7/2dHOiW
gvroi77og3wILfIIsoeFky3MyDEi7U9Ae/ppkfenj0MN8qGwyPkYea4U4HagE4vlY+SSy9qd
m8xc6hYkpGqMi4aAoRf7Nneia/NeEayqkGDj2PYc5rLNxMSEGDHKO2yQR1aXEhy3eseWTeLY
cnoYY+SG+m3kGIZB3im48rn1nzAlF/myMfKBOgYPeBSGKNg4Oo9RyJ+Xg3T2G4mz5I68+Qfo
i76GE8gVE5LpZsyKIHuYVrawSI7RX5AbzO5mZdsP62UVM9LHsw1yvf4MiGs9NShqPTRCWxw7
jfONlUfyKpQSJA52lCCTR6JL0dIryvNDXbtGQB5hXYpwZG5697Ic9iAQJzwICNHe7Jxs7Rm4
fusew3BbGWjX5GC8STlqfWCO0Y0uX9S6GIWfYEvF7JIa5Qcb+qIv+iA39t514FjVOCzgA7pG
MmaFnT1MK1tZBMfoN8hhKLtbSVBWMdUMZ3p9POsg1+lPf0FuVDvKMdGS6Y9epy/6oi/6og/y
QZjZjf6iHLwmd70T7U//QN6LrkU2WLLpW2D0RV/0RR/k9EE+FMvhjdjmNdEPtzDX+4Wwqr3+
RqQ/EYOcT2rCxprjknOUA73oi77oi77og5w+yAfcYt1WwsbuuVtfmpBmbtWItsYHoj/0s5/R
F33RF33RB/m5twBk/mcE5Aed+UjN9M/oNbjzk3ci35ZKf0KRETm3vOza8dfcbLazNs/7QWcO
JubSH/KhL/ogp7/QB7kQzJaZnEnffR4m0IYOYt3oWlOMnNRkJJjiEGdKwPjUHCx27jy773Lv
qUSqJRO1ZysIks9xYKMfhElfIxDkZ3ZXYe6kcbjQmzHMOg2LWo71704/mElWBrruoUgIQwrk
4jSsqWozttHX2YXYnhrk2y3M8lyOWunddPFd9WosZGBPLdly1mDOX0scbytRnrJ3SLQXq9g5
yGmmP8McfY0kkJ/ZiLnjxmF61W5I05fg8O4WtGyjD3L6S2Qg72tmN2OFyT0OrkmHxV6MFfNS
YYnjAW+ZWMVA0lWeK7ybHBOXjNkO6b1ynmwl08asRf5wGYfxU0p8WcfEegqxONcOi8kkTPEq
rJsiTUyiUXbfGnbsVLEN4/l2kx0Lnd1+K3VZjvj+e4wJ4zNL0HUggrZr1KN6/B3LMVFKOCLE
LlhyIqsnIEuZCXGs/3w/38MBOzcL7XbkO/eqegWK7emyIYq9qF2ULhwjLoGVW7Yc6RZxJrcB
vZ7StdtXzurKVHJt92LrmnykJ/M+8bakotg3netAXTfxOLWZ7CGnfC998NDXCAL5/nJMGjsN
agb4/vJJGDe9Dv7NZ7BtgRXWBds0s2ypZTJTzwpWhWnjZO+OH16P6eOsWKBA18iypJ3B7qq5
rK9ikNeYsVZMl6ZzU62P/hIByMX508cXBlt1Yi7tGFMqFjdzK3AvqjMTBDjMLu9kN+5e7GI3
8QRmjQlj6nvcqO2QrMWeLcLscBNLdsrqsaPYByMxFSqfPe6kobK8Dd0iHJbZpdnl+Ctx7MEg
1QsY5lXg/RBygYfTdqP1BB9fgrMPYpHW0yvMwMbhVbtHmjOenRtLtlssV2hHuuQp6dtciXzB
tc7TiDI3+5RCdLGHr62LUqXpU1ldvA1Tlotg7OGz9DH4Wfh+A3k9vdeOfc5NltYHQXwZOze2
fFTvkCaa2dGJrQfCOU8G2ij9fqunJPiSvtAXfY0Qi3wbA9kYWKeXYH3LNiljl2zhs62N8yfq
ECx4qwQ7rSxbKlaualYw4VDTMO7qRdh2jAF5mtEMZ95FJ0uaMGsca7fX03DmMHZ7O0vfIh84
kAtTfColv+Auy4SAjGNbFzELTZabvK8jV3CrKgXHcTiJ07yK9dgCbvZ8nQWZzm7FfzwBZe2B
bTjo5AlcKrFPSq8qH9M/6ExHgn05a08YbderR+340rS1vgQykdbD52VPCJrrfnMhbHbWNj7+
a88XPSVsv0w2Fryio1uAl5vBNEGyijnIc/i55HUx63uVrA08gYu430BeT++128n6ZQl1awvt
sCsHMg7UdZNleStOttB3rdPXCBwjP9yC8gXTcDUD+uioGMlS9lLtsADVaesPSxyfyWBbgt0+
AKpk2TIAx4CsYN5jMfiOtTKxY2w7E4YrXC9LmjDH+DjMXb9NnJqUvmt9cEB+oJqBJPDm7887
bsfiHTLLnbkwU2VTtPrdqtyNWshAY4EpLg5xzCUaw6dz5VailL988Y7QusUbvU5ZS2DZrQxM
3Hr7lyM9ZN53wULm0Aqj7e/r1aNy/D4GsRV2/9jswQjr4f0wsX/DMULfJTFPk4nVtbujEKm5
bsEq3leeLoyF+9vPv3PgMWt5SqZw/XgbLAFtYOe20AYb97YM6PWUrh1PVJMcCmyhHXblOfkP
DtB1OxgwxXA6/WA3+sLIyn4WvBzbjfXMUr7Qm8NbYOR0jJtcxTArWr2TvBlGDGTZ2mg0K5j3
WC0zMXb0GN+Dg2GQG8iSdrhlOeZOtmKslN60fBt9i3zgQV6JVAbyquAbIR8DtsjzXjPLx2bD
wg5/7m+35FY96OTZ0nJRtbk7NJo7uB5v3cniuvDKcjcqz43ezW7odp9FGhCwx12sYbQ9rHpk
xxcgJrN+I62Hl+NgUgpW49nbUgs7JZCzsfXsagGABzeXs2MzK9ThRhUbS85ctkXaJ7gNDPK2
BBHAA3k9pWsnfg6NrQhth9a2yK6bb4imkA1D0H/9jL6GA8j7uwTkuRbpipnWySjfyMetZZmz
wgW5VlYwyW2/gFnjk2cyFzs7fks4WdXCypJ2DLvLpzHLX5Y3nT7IB861HmAFeSGSw6yq5X4X
JrfcLXLLh1ukoktzlzTeu0u6+Vaxm22cSYzmFusJfDfdu26flFlLu6ysDTKgCNHSlkxU7ZCC
p0qYFWgTx4zDaXtY9ciB5n0A2iOL3o6gHh5oaEngAV0SrHq6saujU7RYmbWZmlkpZSrbghXZ
PPiMDVNkFgpR7BZ7Doplr58J6WcTpDb07EUtG1+PExKiDPz13Oe9jgrZ8MR2pPv61LdnC7r2
9IZ/njTa6Hfh05+LgL5GIsiPbURVVQt2H/YHjNUtYFarYIH7LemNc63MpT4ucL1mukyFTGZa
WcGEhCnsGDN5YN0xbPR9VlgiyZJ2bBtaNu73RebvX8+8DF6QK9ZHf4k82M0Wkmt6FxsTHZ/b
6YeE8JpRsf81I8EitYsWqfB6lEmIQLbYc7GY35zt4jhmcD0hdYdTNuB1Lw6BTDECPI7DzR9V
HVbbw6gn8Ph7UT3PBhOPyE7OZyCKtB55BDeP7k5G6rxqCY47sTjVLov2DgKmwqtY3jaZGODy
S9hYu3Scwbiewud5Up2CNe0d+2Zj+N5zERMHUzIb298si1gfkOvG+pqdTP+VSfoaqSDfhvKZ
k5ll7J+y8+rpJWg5HBwTtwDjgl3emlm2lDKZqWcFO9YyN9AKl6zz6XWHFS3qsLOkHa7DAvm7
8lfP9LvW1eqjv0T2+hm7YU7MrFTPM05fZ019HcwqT07FwjXMSu+R3h/vqMTCKcm+aHY17RNe
Ezs3r+u+NXxGt2r6v1n6Ondc68rubGZNj5vuj16nv9AHOf251kcmzHdUozibv4PPA8/4jG7M
SnaEzujWt9ktveLFc7Pz98eTkU8/mpu+6GukgvwMtpVczVzdLaDPcfoLfZDT0K7yTGESFdGd
nY5ix1mevpW+6Is+yCN1vddh+ljmcrbOxHr6Y8j0F/ogpy/6oi/6GqGudfoL/YU+yOmLvuiL
vuiDnP5CH+T0RV/0RV/0QU5/ob/QBzl9URd90dcIE32Q01/og5y+6Iu+6Is+yOkv9Bf6IKcv
+qIv+qIPcvoLfZDTBzl90Rd90Rd9kNNf6IOcvuiLvuiLPsjpL/QX+iCnL/qiL/qiD3L6C/2F
Psjpi77oi77og5z+Qh/k9EVf9EVf9EUf5PQX+iCnL/qiL/qiD3L6C/2FPsjpi77oi77og5z+
Qn+hD3L6oi/6oi/6IKe/0Ac5fdEXfdEXfZDTBzn9ZYSDfEcJbAmZcPcobVuOick5yts064yw
3LkirXM60MexDPR57kVXSbqY95z1ofoAhWs2DPosv5Yj5d/PUP3O6YOc/kIe5D1u5CSwG1QM
12hERY3G6Bjpe0LOOfGPkT7IB7DOA9VIT7BjxQ5C18tIn/m5jony/9sRlICc5t7BvZbD+d8n
fZDTX+gvZ8EiV7pZ0Ac5fZArtL22h9710uzzYF9T+iCnD3L6C/2lfyBPx+KSHFY2DnH8c0ev
wj/UXmwtz8XEhDjBGolLSEbmsp0G/oGHUY5pVzlrh7BvHBLs+ajeoXUTSZXazeq18HbvZceS
vsv7oVWv4f6Hnj/tOtVvcBG1RbAc3VicmQwTO48m1t+Fy/LVQe47P7nCsUyplZKHZieq5qXC
ws5RTFwCJs6rxC5v+c0lmBjn99qYplRin8+zo1EukmPp9bWnE6ty7UiIE8vacquNtUXR4u7E
imybWJfJgvRCWV1afTY8BKXQf53fjua1lJXNt8T4vWhxNhRv7g3/HPjOtdg+cf/qgP01/92p
XYugPu5z5GI8GxJYtaNXv07e/ynJiFP7LYd7jemDnP5CHuTsH9rEkk4c5NAtYf9g7eXYFfwP
dU85UhPYjaSjW/qHxqC5o1sf5OGU4zeDZjd2CWOUe1Gba0GC1o2Vt3uRW2q3DXEmG9J9/bD5
+6FVr9H+K5w/zTo1QB5RW9i+VZkJsORKNzR2Iyy2mzDapAFydpMcP69Gdv66UZttwfhsqQ52
s1yVaYGtsBN9msDSKRfJsXT6Ws37ml2OrdLD4K7NO6U2GuhDgKTzli0/bwxGi7bo9DlMkAf3
X/O3o3Mt5WUjuR4q7dM6B+r/7jSuha9tbF15JoN4Lqr3GPm3zPo/hfdfephgD1qLU+W/5XCv
ceTi/OYakSAH6P/vXFv6Z5Gnosob4LO5mO2TG3oT2VPJxhEtmL2mE/v0nowjLRekPt4WdnPo
0rCCvO3m+45nVke17LuvH1r1Gu2/2vlTrdOYy9FwWw5Uhozj9jXnICFBA+SmVKyS3ViFsWBL
4Lq+jkKMtxVKN2mVtuuVi+RYYfY1rD7ItUf5vFmSi7X7rHQ+Y0YL1mVcnCTWZ6Fepf5r/Xb0
rqUeyMM9B0L7dM6B2m9S61pI17C4MB0WWz5qDxj8nUvXZFVAe3L9/Q+3f/0Q5zcXfZDTX84B
kKvccIJdZ84SzE5NZi42Eyz2XKzoMGCRh1OOP+2vyUeqxSS43HhwnqbFqQXZgO8a9YbR/4jr
NNpHA20JGMfdXKLjWg/aXwlGQtBjbuAxg9uuVy6SY4Xb13D6oHcehIeGHO0+6/3ejJzrSK+l
HsgH5ByE91tWvRbs2Cbm+k5fszfs37lm/8PpH32Q01/ogzwMkPnUja3L0pGQrGEBRFKOPakL
bvjmbpmVPQAg16pXs//L2dh+us/SEKyChAjqNNpHrbYoWpa52hZ5iCVXKVg6VQfCBJZeuYEo
o2OxhtWHkPM9QBa5DsgD/11p/3Y0r6WuRR7mOVC0yHP950DrN6lrkWeiunk5a08y8p17jf3O
dS3yMPtHH+T0F/ogNwhyNo5V27yTjWd6n7Yz2Y3AAMjDKcfG0yeyce7FQkAPG5tj42oxA2GR
a9WrVY/w6p4FOc5usVy2rFw4dRrto964qua4ohHw8LHHZCFYyRs41HdgJ9wdew2MkWuUG4gy
QX2tlo9rs9/NvoAxcp0+BCj4vA3SGHnwNq3fjt61DIkxsQe67cM9B94xcvnx5OdA89+dxrWQ
tbOPWdSpFhuDebeBf8ti/8fzoDnVMfJwrjF9kNNf6IPcGMj3VCPfbhGibIUoVFuOMdd6OOXY
P2D3olQkCNHtduQvysV4y0C41jXq1YtMX5OD8XG8XCryS/Ijq9NoH41EOk+xqEf6GgGPEA2c
jvEmMZrYZLEjZ5kBqGmVG4gywX3tkUWaK0ata/QhxIrnEeLeuixILQyM2DY+Rh78HrkJqeV7
Vcur/3Z0rmVAfQxq88SI8ThmVQdGrRs8B0FR9aFR4Dr/7tSuRVC/+zpKBCt8oWCF69TJH6iC
+j8+JGo9jGtMH+T0FzIgpy/6oi96GgHve2sF39F3rdNf6IOcvuiLvuiDfLiBfI8bXdL75if3
1Aiv340fhNfL6IOc/kIf5PRFX/RFH+SDYYF3FDM3vDhJlODqzy0fcmucPsjpL/RBTl/0RV/0
NcJFH+T0F/ogHzCLgXi2NPqiL/qiD3L6C/1lOID8YMdyYeIXU5wYoW6xZ6LYsXPIx73oi77o
i77og3wAl6NHj2L//v14//33sXPnTnR1ddHXIKi+ts6nzs7OIVdHaxPq6xrQ7GlDh3ddmwfN
TS1oH8DjbHtnG95991188M8P8MnBT+jfjOiLvuiLPsgHazlz5gz27t1LH7JnG+TtbgZYF9xu
Dtpa1LDtDU0etHfI9uloQ0tjPepqa4TtrmaPD8bB5WtdHgXAtsPdwMp52tUhLNTTiNYOhe9B
29pamtDA21pTg9q6ejS61evlD4h9vX30b0r0RV/0RR/kAw1xfoOlD9hhAnIGxLpGCd4drWhm
0K1vbvNB2NNYp75dKl/f1OqHewikPXAx2HvaO/sP8vYWVlc9mts6pIeMdrS1d2ha6dxCpw9z
+qIv+qIP8gFc6FviwwzktQ1okUO2tRF19c1o6/BCWGs7L+8K3K4H6X6BnLenDk3cRd9h3OXO
Hxzp35joi77oiz7IB2hMnD5Yh5trPQiybepubXF7s/b2wbTIhfF2N5pc3NVfi7qGJrS0dRiC
Of0xc/qiL/qiD/IBWHhgG32wDneLvCk8i1wP5AbHyBsY7H31GHpY6ECb2+VvS6e2eAAc/8c5
3HTyOP2/9EVfw1H0Qa6yqI2NV1dX48EHH9RUSck/UFGRh9dfuwt7dxfgvR2leGtTI31QD8QY
uTfAraNNgG7AGLmrTrZdYYxcEbKB8ket+2EeELXO6m1kLvPG1g54x+VraqV65cdg7WttbYd3
PL7dI3uo4HXU1sjaHig+Vk7/5kRf9EVf9EHez0XtFTMOar3l5NHnceb4DHxz8jqcPvYXHP54
CgN6ETZt9NCH9aBGrbfCHRS17ttuEOQiuEWXeC17cKip4W7xxgCwcyjX1/JIdBeahPYogJx5
CJrYg4SvjvpGv2tdB+T81TT6Nyf6oi/6og/yfi5qoPGC/MiRI+jt7RXU19fn0/HPaxnE78J3
p/6A70/fyXQXvj15BT47kI4d28sHBHaeqhwkmuwodUW2fSjlqZqFJHOK4baENUZ+Dov+zYm+
6Iu+6IN8kEEeDHEOdq6TR8uZJZ7KAH4HfvimjsmF77+ciROfXYk97z90ToNcOG68HSWuIQp2
ow9y+qIv+qIv+iDvD8iDIc71xbHnJZDfxSDejB++bWWfZ+NEjw3/3PUkfZDTBzl9kNMXfdEX
fZAPB5ArQfzzzz/HiaMb8NWJO/D9qSvx/Zl7mPLw3RfXMNf6ZLyzZZ1inY6iDFgTTYiNjkZ0
rAlJKXkok8PQVYpZdrOwPT4xBbMKMmCWg1pve4A8qChIQ5IpFtFs/1hTIlIKquDxbvdUoSjD
CnOs2BZrRhGqPLLybHtxlg3meLY9OlY4XoGDjf27SmCPH4WoqFEYxfsRHQ9bkTMU7q4y5KUk
wcTrjzfDllMCh8f/IDB2zGW4O/92XDV2jNA+U9JUFK1rIQFv+iCnL/qiL/ogP4sg5xDnOnb0
Y5w69gyD+XR8+4WdaQLOHMvEe+8+jDffVK7TWVqKCqcUCOeqQIHdhHh7MZzCdieKbPEwpRSL
wGMgnGWNRVSsF9R624PkKIA1PhE5ZS4JzE44HNJnVldJignmtGIR3hzqrC2JWWUS6MXt8Tb2
oOGU4OusQpVL3SIPXMfaag9sa05SPBJzKoT6BZCfdx5+nrIAZa9zi3wDlk41I95agHX0QU5f
9EVf9EUf5AMN8mCI80lkRHXji+Mb8OXxUqbn8Mwz94bnoq7IYhZ1Gso47JxFDLxJyHP4t7tK
UxAfL4Fab3tw/cL+ZqQVVcDpCd5WDJvJyixsWVvKmHVvzkCF1BYbewiYVeUx7FoPWKfSVpM5
S6hftMgvxd2r/K71ltWZ7FykYGkLfZDTF33RF33RB/kAR60rQfzYsWM+HT9+XNiXl1EHtweO
kllIsTLLU3BnxzIX+SifRc2jvkPgWJHDXNvGtiserzQPabZEdrxYmKxpKJCsc6EudmzuMo+N
lcTd5PEpqscKB+TqbWX1+0B+JR56VQbyymw23j8BSxvog5y+6Iu+6Is+yIcQ5BzihkAuWLlm
ZJQ4fOPUgkVu1OIO1yIPkAsVeTbEyyxuK7PIi5xabeUWufqrZv23yOmDnD7I6Yu+6Is+yIcI
5GoAP3HihE+6IJfGrLO8VrGTjXGzMe9RvjFuhzAGzsetlcfA9bYHw7gCpRUOuLzWeZGdgVwE
KR/DLk4xIzGj2Dfu3eVyoKLCETBGbrL5g/HkY+RiXxioZa73kDHy4LYGj5HTBzl9kNMXfdEX
fZAPBciVLHGvFe6F+MmTJw251isKUhjsxChwU1Ia8oKjzp06UenOMKLWHcXI4G78aNnxvIFv
3qh1HpUeK0Wlm61IC4pqD41a7/IFy5VmWcWI9FgT7MVqUeuJ0jCCGbas4Kh1+iCnD3L6oi/6
og/yIQZ5sDvdC3FjIKcvQ++R049apy/6oi/6og/ygQR5OAt9kNMHOX2Q0xd90Rd9kA8TkBvJ
fhas1157jT6k6YOcPsjpi77oiz7IhwPI6Ys+yOmDnL7oi74GW+GIPsjpg5w+yOmDnL7oi75G
sOiDnD7I6YOcPsjpi77oiz7IaYB81dKl9DXIKl+yxC/+nYjog5y+6Iu+6IN8CED+ycGD9DXI
Otjd7ROlftMHOX3RF33RBzl91zp913p/JM93zj431J/d3OeG/gHvKIEtIRPuHvo3Mv85WY6J
yTnq54SfM0sO3XMW7m9Ga3+9c01f9EFOH+T0QR4C2honampqZKpDY+sggNzIevogH7kgow9y
FTArbBtuvzH6v3n6IKcP8hEO8sEEKn2Q0wc5fZDTBzl9kBMDefMSdL0QZewvfUAPLsiFbS64
3U3sby1qXZ7Q/YO/d7TC3ViPWmbZ17KyzUJZv2vd+7mprgZOp+QBqK1Hc5u3fDs8TS7U1fL1
dWho8qC9Q+shwd8+pf3bWxrFbTW1qGtoQvUO2T/Unk6syrUjIS4GMXEJsOVWY5/CTW2fIxfj
matz1Y5e4fuu8hy2PQ4xMXFIsOcH1nnAjcVTkhEXEwOTJR0Ll+UHAq5nJ6rmpcJiEo85cV4l
dvlunr3YWp6LiULdMYhLSEbmsp0aN950LC7JFdsi1FXtr0vYnurbbkqtlNrXiRXZNrHPJgvS
C6U+834ts8OSWYODx/3t6ZqXjPHzOkNv9LyfmckwDXY/9fbVOI5mf/TaqHL+VK+9BgjzLTGI
ihqN0TH8ODYUb+6VXT9WnymO9Yt97ugNrUtrP93fm/HzrNhGnd8LfZDTB7ny7G7rHQKkv/5s
o6G/9AE9BCBnoN2wagaSzClighVNkDMIN9ahzgtTBvXmBg7YUJArH7cDrax8faO3fDta+Pfm
NnWQs/bVNcqPF7h/R2urBPZ2tDbVIWFKpXQj2ovqzARYssuxVbrp7dq8E30BN1K2rjyTQTwX
1Xv8/7j3Nbux64BYR22uJaDOqimszlwJqOwmuDjVhNEm7421G7XZFozPloDBQLIq0wJbYad4
3D3lSE1gN9GObgk0e7F1R7c6yNlN1+Kti93Qi+3sYWTRFn8f2Pbx82pkN17WPqHPamXY2Kwl
E9UH/A86+cnJWNjRGwQqqZ5ceT2D1E/NfXWOo9Uf3bJK50/j2kdikbOHgYklnexBgwG3hD1Q
2suxSwnkavvp/d7C/T2FtF/n90If5PRBrqTHnigWAN234XJDf5/O+F+CNqwuog/rfo2R1wgW
a21tLV5fmYmxY67Co3XStloXWto1wC//3uGBq64hcP/WRtTVGQS5UD7oeG3NqK9vRpvag0at
wvHU9md12RiUu4SbUiXSE+xYsUPtppaK4sJ0WGz5qD2g/g+9b3Oxv849Yp2rZHX2NeciIUG6
sR6oRrolFatkDwV9HYUYbysUHyaE8hbMXtOJfT0GXKGmwPb3NefAklws1iVsDzyWt32qZdiN
e1Uqs7oc3b62j7fJ6vPe6A8o1zMo/dTaV+84Wv3RK6t0/rSufUSu9VRUeX9bvC5LrswKl1vk
Kvvp/d7C/T0Ft1H390If5PRBrgLyvr4+AdJut1v463K5FP9ygB/t3Yjt6+8RPtOH9cBY5EJ6
0/gJeLJBBbZaIFfav01lu1rdsocKQfx7XZOG61/jeNy17mliDwdSPUw+a0W6cdWq3XjjmDuV
uVvT1+wNcfXuWpOPVItJcGfGxIzWrnOzbOxYsK5GC27ZuDhJvI6EXL8b31mC2anJzJVpgsWe
ixUd2haU5rGCtyuWKQ5wie8rZ65mwcrshZtZnNz6Unb3DlE/tfY1chyt/miVVfx96F/7iMfI
d4ReO8V6d+hc482BsQrh/p7cYf5e6IOcPsgVQc6XI0eOqGrXrl0CuI/1bcLO6rvw0qIbFEEu
5uu2Ia8gCzZzPKLjU/x5xHlu8AyrmBs81gRrRhGqPIHlCopmwZ7IykVHw5SUgSKHx1e3oygD
1kSTkKecl09KyUOZS6k83ycWJisrX+WCs9S7TqyzWFanVpuUc62nIckUK7Qv1pSIlKDc5sF1
lb0uA3lLJYozpdzn5/0YY8b+GfmvtqCz4UlMiB/FxspGYRTv23nn47L5r6BxTSDcG9Y9jTkp
SWJ+9PN/gcsyF+FlN9/mQc3KLPzmfN7/mZjAz9955+GnluvxD16/QYvc0xFGIF2IRd7kt8jb
eX1s/L21w2eRj/dZjXoWOXPJNi9nVlsy8p17A6wUwV3Z3O2zysYHWEBaFnmlYAVWHTByE+nG
1mXpSEguVLZ+FC3y3ECLXMHCStWzsHgf2Fhr1eYa5FhsWKw0BqxoqQ1SP7X2NXIctf7olVU9
fyrX/myAXO/3Fu7vKZLfC32Q0we5Gsj37mVjOVu3hqihoSEA4pWPihBven21MsgZjMxpxXAE
ANGJkhSTsF4AJYceG99LzCoTQCgvJ4LUidIMM+KtBXBIdThLS1HhlCDsqkABKx9vL4ZTrXyW
GbHxiQyogevirUVSndptCjlXjgJYWX05ZS4J3E44HC7N/o29YTE2CCCvxJNse7wtDys3iDDc
UFmOF+vVLfIAkHesR8GVY/A/kxZhXQsbE39tMW62jMFvslejhY1DNz7PXPMM3r+cXIxKdxvc
LvbQMPkXOJ+dv3UBIG8JdcMLY+T1qJcHrLFx8ta2du0xct+YPDuefIycHaOhth7uNmn8no2R
x/jGcb1j5N4Ap17sCxkj5zfrEmaB2RjMu31jthNNDAhCMBCrg1l58jr5mOV4HjSnOkaeLATV
eYOq+g7shLtjr3hctn9t804pOItbf5nspqlx4+Vj5PLx0eAxcqUxz4AxVaUxT74PGzueYmNj
sculsdgToWPkurEAA9RPzX11jqPVH72yimDTuPZaIBfGqu2BbvqBALne7y2c86zURkO/F/og
pw/yMCxyryUuuNPXzcALD6erQtwH8tgkFDiCtjmZa8hkDVjvKcuA2ZyBCo/Xog7aXpEFs4lZ
9CoWsrg9DWVa5WOtKHKq1KnTppBjOosYyM1IK6qA02Osfz//+WQs41Z55XzY2EPAzMoWxffI
X3v2Zvwq7ko87GxXBvmGIvz+/Itw1yoxKr3J3QTHo3/GBeZMrG5hDwJrpuPXYy7FnHJ/1PqG
ZdPwywtSsLRZboUzaDc1CNHptcyqDo5ar68VI81rGewb3W0RRq2zYzS7UCdE0DegqbkJ4wMi
q2URuRpR630dJYIltlCwxLrhXpSKBCEK2I78RbmBdfKbHQOHPIp4fEg0dzrGm8TIZ5PFjpxl
0o1xTzXy7RYhElyIirbl6LhCU4Oi1oOjrhXAIkSbe/tsQWqhLNJd0kFHOkxRMZgoj3BWiloP
6qdtMPqpt6/WcbT6o1dW8fxpXHvN17fYQ8M88e2IOOZF8Uet9xfkOr+3cM6zUhsN/l7og5w+
yA1Z5F5L/PNP38S2tXfiBcmdLgTHqdQlAtWOElfw+lnMYh7FXNKxiI2VxN3IkutdqZywjv24
Rde8B46SWUixMotacF3z8swdHWs3WD50nV6blFzrjtI8pNkSWRu46z4NBZJ1rlbXeWMm4tFX
67Bh5e1+KCvAMcAiV1jXUjkzdPvqbOamZ6Bu0ShvmiBGvQ/FO+rDKGnKoLki6b/3S19D+Xuj
/x45fZD3xyLnwW8CxA914a2K233u9HvuuScikAvWrCnQOtYrFwBiVt7GrOGMEofP7S1Y1/GR
g1yvTdpyoSLPhniv9a5Sly/YzWeRq4F8pibIuUVujU9C3jr/9oalKTB5LXLqIN/jRpf0vvnJ
PTXCa1njva800Qc5fY3U3xt9kNMHeaQW+ZYtW5Cfn4+7b7Siw/EE1hRPEV85e/ppPPLII5GB
nI0hF6eYkcjHq73bXA5UVDj8Y+RaIJbGp7O8FrCzDLNs8RjVD4tcr01dwXJWoJRtcwnfmXVe
ZGcgzxJBrlLXstLVAWPkJj5GLoG1ZUMlKr2QXcf7x0Dtdb13SiD2wXkDilh/zZOL2Rg5+96w
EjOT4pGYzcfIg/eVlQ8f5OjU0zAEeV9HMXPDixNwCO7u3PLBsY7og5y+hvL3Rh/k9EEeqUXe
09MjgDvlajNm3pAsfF61ahV2796N1157LUKQd4kBYFk2MaqbuaDjzVakFYhR30Zc6xUFKWwf
sawpKQ15BWw829QfkGu3KaT9jmJkcNd+tKwN3sA3lbqum7NSAnlQ1DrfnpiCAp+FvQFLM61i
RHqsCROKN4gglsOZwTsvJVEaWjDDlvmkCPXOztB9OwcR5BGI/s2JvuiLvuiDfIgscm6N83VR
UeI749OnT0dJSQk2b96MPXv2wOl0Cvvzm7NWnfQl6qxlPxtmGrL5qvtjMQ9UPfTnQKefWYy+
6IP8bFrkfGy8t7dXELfMvd/5X77dC3L6kCYOcqPu9bYWNDXU+SN4k9Ox0Nk9NCDvT4pL+iAf
nFSh9EVf9EE+eCA/evSoAGk1bdiwwfeZPsjpg9wQyDta0VRXh8aWNt87tfs216C2gz7I6YOc
vuiLPsgHFOSrK8oFOBsV358+pPsP8uAMYZ52FUgqZTpzaWU64+94s7prxe3utna0tci/y2Gr
kfUsoK7agLKqWdSCYN/AyvB2ab+TzTNMxSDOwjNM7cXWcul7UMYpQxmwZJ/VMkuFW49SJrbQ
CVR0spLpZbMymBEu9L1n4+dPP+uYcravcM+jetaxTGPnQyvzWE8NMln7fVO+0hd9kNMHOX2d
TZAHZwirc3nQoQtyBl5XXeCsaq6gTGfswaChuVWoq83NgM9A63K3+b7XNbSgXWiDTtYzb12+
sg3+soYs8jYG/FpWfzOqnJ1S9iqFTFSL3FKGKRviTDak+zJO2WQZpwxmwDJgVYdXj3ImtkDp
ZSXTy2ZlJCOcCsgNnz8jWccMZAWLNCOZUhY3zQxyKm3hIGfwH08f5PRBTh/k9DXsXOtCtrEm
aa5yrQQpSpnOmoIyncnmTef1hnxvkmVN08h6plhXk0Y6VCWrvBUtzOK3WeIwOipGstx6FTNR
iXNop/vSX/bJM04ZzYAVpntcux5jmdh0s5LpZbMyMP+8lkVu6PwZyTpmJCtYpBnJdOeMD8og
p9YW+pCjD3L6IKevYeVaD8oQppg/PATkYWQ66zRQl1bWs3DboRe1fmALqpjlZvLOva03DWbA
d4MZsHRBHkY9qpnYBiAjmjyblV5GOCNTiuqdP4NZxwwdJ5KMZLpZ3IqN94u+6IOcPsjpa1iA
XCFDmByS3rHl0G1GLHKDINfLejbQIA+2EsMBkdEMWHogD7MexUxsirm7NbKS6WWz0rTIl2Mi
s7K9HgHBik6IAOThZh3TA3m4GcmCLPJUXYucPsjpg5w+yMMC+YtrluD6G38elpYuv48+qPsF
8tAMYT6LvKMVjTzaW4A829Yo2yaNkfNMZR1qY+RGQa6X9UwT5EpZ1EKj1ltaWtHW3ukLtqqe
l4yE1HL9QK4QkBvMgBUADIXMUhHUE5KJTWmMXDMrmV42K42McD1u5CRYkCMcm+2XrZH5S9Oj
EWbWsaBzH9Z51M06pnM+tNpCP9iNPsjpgzxUFS8+haJHMrH343+GpceemoGXX3mOPqwjdq2H
ZgiTQ7Pd04gNK6fD8vM/44kNTSFR680M5upR60ZB3qmd9UzvIUApi1pQsFtLo0uIzPdOZWnL
LEbtHgNWoAKIDGXACqhTKbNUJPUEZ2JTiVrXykqml81KLSMcjw5fk4PxvA9s3Di/JD8y13q4
WceCHwLCOY9Gso5pnQ89kNMPdqMPcvogDxS3rjmY5y+4FzdlZiDzlptw6/RMTM++FTl3Tsed
d+VgZu6dyJ0zE3fn5SJv3t3YULteKMPL0of1wAS7KU2xalitjajzBqhRnNmNvuiLvuiDnD7I
/4m/XJeC227Pwu05HN7ZuGuWF96zMTf/HuTfOxcF9+fjPgb8lc8tpw/yswnydtFd7f3c3FDr
f2WMPsjpi77oiz7I6YG8vnlt2K71V9cvVwS5mLzEhryCLNjM8YG5vXlSkQyrmFQk1gRrRhGq
PIHlCopmwZ5oQixPSmLNQFGVC85S77pomJIyUOzw+I/pKkNeSpKYbCTeDFtOCRxSnc4iG9s/
D46AxCc8y5gVBQ79NoWKJ25JQ5IpFtGsLbGmRKTIE6wo1FX2ugzkiklTWtDZ8CQmxI9CVNQo
jBISssTDVqSWNIX19cfn4bwxP8cfbi5C+et8EpcWNK3Jls7fTExIjBfaZ0qaiqJ1LfRBTl/0
RV/0QX4ug/zB4ukCkJc9l4H7H7oUBQ9egvlFSZi74GLMuXccZs21ICf3t7j1zl/j5uljceOt
Y3FDplko88Ci6cogZxAxpxX7gCrKiZIUk7BeACWHnt2ExKwyf/YzqVyVlBa0NMuM2PhEBsTA
dfHWIgnOTlZHPEwp0rEY1HN4as+cChGuzhLYGWxnVfnBX5XHQGgrhtNAm0Kzn/GHgETkeDOe
eZxwOFya/Rt7w+KANKbxPI3pBskKl6UxVc1e5lu3AUUTxL5605hmB6cx5edvcjEqW6RsalP5
uSrAOvogpy/6oi/6ID+3o9Y5lDe9uxB1bX8XVOP5G6pe+wvWvj4F65y3Y+VLE/Hk8ivw4ON/
wH0PjccTpRmqbnUByLFJfovXK2cxbCZrwHpPWQbM5gwhn7dokQdtr8hi1q0VRc6gdSZm5XNY
OovEHN6yMq7SFJjM3hzhLpSmcTBLYPdUIIdZ9iklLkNtCumfcDwz0ooq4PQY69/Pfz4Zy7hV
XjkfNvYQMLOyxbBrPWDdBqmv6/zbG5byvmZidYt3X6ssLSpbtzpTOFdLW+iDnL7oa5gKJ+n/
DRF9kA8AyJ0tf4OrLRu7974laMu7q/HCq+lYsfovKFnxZzyx9CZtkCvkI/dUzWIW4yjBpRwb
K4m7kSXXeyT5xIU6g8tU5DDXtQR6GZjL+MNCGXsIMKf56tNrk5Jr3VGahzQbzwnOXf9pKJCs
c7W6zhszEY++WocNK2/XHAPXA3lL5czQ7auzhb4ubaGfj5y+6Iu+6IOcPMjf3vGgD+Rbd65C
U2cunM23Y+uOCryz80VUMJA/99JkLF/1V1QwqIQLcsGaNQVa13rl9ECub5GLVngWs8LTSh3M
OjfDLHeb67RJWy5U5NkQ77XeVeryBbv5LHI1kM8cAIucPsjpi77oiz7IyYJ8845FcHXcAPfG
W/Heh82CJb6+4Sa86sxgugUNngex8sW/YelzKaiqzgsf5GwMuTjFjEQ+3u3d5nKgosLhHyMP
F+R8jNwW7x+PZ2Pks+Rj5JIVXTWLjYsn2ZHExstzKjyG2xTqWq9AKdvm8lrnRXYGcu9Dg3Jd
y0pXB4yRm/gYeUPoGHnnugIR1DLXe8gYOe/rZP8Y+czgMXL6IKcv+qIv+iCnC/J3dy9Fy6Zs
punYxUDesjEfrzXcjLe2VbFx8unY+c9GPPPCX/Hksj/jlfX5EYBcCgDLsolR3Txq22xFmhT1
HRnIvVHr3NXNI8XNsGWVBAXZ8SC1PCRFRyE6OIJdp02hwW7FyLCaER8t7mtKSkOeN/BNpa7r
5qyUQK4Wte6F3QYszbSK0fexJkwoVotal/U180kR6vRBTl/0RV/0QU4f5Dv+uYxZ47eh+c1b
0dw1Q3Cnd24uY9a5G7s+aMbLr9+B0vJJeLx0AtY48ui/Qz7Q2c/OcdG/OdEXfdEXfZAPMsjf
eX8Jg3gWGjtvRk3LNOZWvwGvbLgeXVtWo3ztdXimYhKWlNnx6JKr8eLLs+mDnD7I6YOcvuiL
vuiDfDiAvLW1VYDya84HsHXnU3h7x2Js2voks8YfR+vGR+HueAQuzyLUNT8Ep+tBVDsX4qnS
24UybW1t9GFNH+T0QU5f9EVf9EF+ti3yJ5+aF3b2s8dL8oQbNH1Y0wc5fZDTF33RF32Qn2WQ
0xd9kNMHOX3RF33RBzl9kNMXfZDTBzl90Rd90Qf5UIJ81dKl9DXIKl+yxC/+nYjog5y+6Iu+
6IN8CED+ycGD9DXIOtjd7ROlftMHOX3RF33RBzl91zp91zp91zp90Rd90Qc5/YU+yOmDfMDV
3gl3XRfaO/jnLrjrpc/0QU5f9BWedizHxOQcuHsGoq4S2BIyB6Yu+iCnD3L6CgPk7W7U1zWi
tcMIRNvR4qpFjd7+HLQ1XWgKkqd1EEAesr5TEerqN5+TeCIGmB3zA+YwzU8ASrO/w6YdvefQ
zZr1MeEM3u2hAKe9WJUah9EJOag9oAOdmCiMjolBDFNcQjJSs4tRfU5d90EEq1Ld9EFOH+T0
NcQgb3Oj2d2GjjYJ5O3t8DQ3w9OuBVA3GupYXUyNrR06oO3UtZKHDcjlkOs5hXeXAQ8woNdt
7qUP8pFoYSZYGFAsyHR2GwdRz064l+XAkmDH4nPmutMHOX2Q0wf5MFNXRNKyyNtb3Wh01aO2
phYNjU1oaevQBGi7ux51Lg9apb8dkYBcgnCrW/zb5OoK3T8Y1Oxva6Nk2bP1HneXzLXuL+th
6xqdneJ+tewYbf7ym+Z9hQdMzOqOYxb3vK/xcY8W5HrxwSKgKPMMerzrDpxGS/Y3KIpjdZi+
xXOFx9Et/8ffcxqtuRC3s2M8kSttD66ff7dA/C5s+wp1JWx/1rb5bH1dxxF8WC595w8THTKo
sIcM7X5AqgsBZR2WH5ATdVr0OsR9g1olUAk34XQsLsllf+MQE5eAifOqsUt2XnaV54jbYuKQ
YM9n1qu8bKqvrCm1UjiHW8tzGVTjfBZv5rKdsr7sRNW8VFhMMdKxKv3HUqzP2A14V4kNCVMq
4Rb+VuNgWJDrRdeiZCRk1vjLHejEimxWVxxrp8mC9MJq7Au47p1YlWsXt7N+2HKl7cH18+8W
yYXt6x87n6z/cRZ23jv2svMlfefXIeC6652rdKmuuICy+ZYYREWNFr0OcTYUq153bzt1rplM
inVrtEW3H/RBTh/k9DUEIO9oQ3N9HVyeDskd71K33vVAzkDrbur0PwjogLyNQby5qQsdHRLU
G0RQB4Nc7bjtrPxj2RL0GAxbM7/FE4Wn0adhrfZ1fI/Hkr/HB8L6I9iUyax0bx0HjqHWzoC5
6HOxDt/2E/hQuiF+vPmUcv3BIGdu/dJFx9gDQy8+LPkG803f4LmS077vRfYT+Fg4xhfYnv2t
dj94Xb6y8Jc1YpELruYYWLKlm+sBN4rtDEyLtkh9PIF9zW7sOiC6r2tzLQIw98nKjp9X44fc
nnKkJrAbfIdkFfcwUO3wWsjdqM22YLz3WOwGvyqTWdGFnVJfFOozop4tKE5OQLqjG30SLKv2
hGet9nXkY3xyPrp6xH5WZSZonJO9qBa2l2OrdN13bd7p74MWyNnD0MRFbvbAwODJHjriTDak
l3T6vifYy7HL8LlidfnK2v1ljVjI8n00r5lBi1ytLXr9oA9y+iCnrwhALrjWW4271tuaUMfh
3SGOlbvrGfzd7fpj5LV+tbZL27yfjYC8owstdUH7tzKw1xkEOfsslN8jv1mfwmO2UyJ01SAn
B+6er/Ecs3BbdsjqaGbgTv5OrONA6HZVt7aCRb5JGsvt2/wdHmP1yL8/YflS3PfAcTxn+Uqn
H/66TsrLGgW5yY4VAX1krubkYglSQcDbXAxbcq4IPKFsKlbJobmnEunMvT17TSf2BZc/UI10
S+D+fR2FGG8rFI+lVJ8BcQhbmBVYLZyDnVhsM2GiikWpCjk5cIU+aJyTA6HbVetXsMirDvjP
5Xhfu6Vza8kV9zVyrmR1nZSXDRvkGtfMsGtdpS16/aAPcvogl0vMK25DQdEs2BNNiOV5u60Z
KKpywVnqXRcNU1IGih0ef1khr3iSmI873gxbjj+vuLPIxvYPyiXuKIA13ooCh/Sd5wLPsIq5
wGNNsGYUocqj1Ub13Ofiditm5WXAaopFdDSvrzg0z3k/LfJwgt1am+pQK3Onczd7bb0b7RG5
1oO2aYFcaf82le1qdbMHijnMWp0fJ4m7mBO0IRdgkUv7bJfvI4ASAXVs74kE5CrbVKx3w/3Q
Oo7Gjbk2oI8y+HBrc00+Ui0mxAkBYsytasoJAEZtUP37nCWYncpc1XEmWOy5WOG19ATLbbTg
oo+Lk8TrTMjVrE9bvXAzL4FJ5k7nbnaTrUSyCCOwyBXPSXEQkFXaqQtylW2K1rv+uTJ0HAPn
QfWaRTJGHk4/6IOcPshDIMlAbU4rlkDqRGmWGbHxiQIM5evirUUSnJ3MDRkPU4oESwb1nKR4
JOZUwMO3sx+33ZSIWVV+8FflMejbiuGUypekmPzH5FC3m5CYVSaWjwTk0aOE+hTbM5AgN6KO
VjTW1aCGueBra72qgbOmHs1tAwHyrsAx8bbA18tCLfLOMCxysfymA+EEgjHXtHyMnFnkpRFb
5N8IZbcfkFnRCRGAnB/D8pXxfkQC8hCLPNdvfTJrTXC7NnfLrEijwOjG1mXpSEgu9FuyFpnl
NhBBWgdqkJPAx2zZmLrJJCpuNKJikg2MDfuv+1b5GLnQ50gtch50l+6LnBesz4QIQB7uueon
yFWvWX9BrtcP+iCnD/JQSMosZb6uIotZylYUOYPWmVJQykHpLGLWdRLyZGVcpSkwmbNQIYDf
hdI0DmYJpJ4K5DDLPqXEJe7vZE/ppqBjlmXAbM6QykcA8lit9gwtyDs8jcyt3sjc7h1snNqr
NuFVtPrmtv6DXApU876exsfEfWPg/LuLj5F3+sfIXVpj5EHQl8bIefCZNzCs78ApvNtxRHkM
u+eIELX+WEDUOhsDn8LA7a1DdYzcG3zWi27vGHnPMaxJ+BZrnF+I+7Fx7jmmCEAujJHDeD8C
hgZOCA8TrXsMjJHnSgFuBzqxWD4ezMZPJ7JxXDGim40NM+s3xqQBDFa+tnmnZB1zaz6TAdAL
BT5emiwEhu3y9WUn3B17lceXhfNYg0xTjNAepfYfdGQigYGymo3pHjzg1RasSDVhfGGngaj1
vULU+viAqHU2Rj4lQXZO1MbIvUFbvdjnHSPvcbMHCwtyhMh5tl+2xvnSAnm45ypgaKBceBBZ
tccgyDWvWZCU6tbsl04/6IOcPsjDgaQyOGeFlqnIgTleAr0MzGUe/pk9BJjTfPUJ5ZkFHc3c
+LGxkqK5iz4l4Jjhuda12zOUIPe46hSB3dHKAd9k+D1yd4s65DtYv/jYeUhUeqcM3jpR6wK0
mxj0a5Wi1hmcTaJruoABbs2yzwOCxHzvkZuk98iDrTgG77pMKWo97luUFvqB6o1a90W1y6PW
mT5ew44dx6PQv4Kj5PvIXOu+qHWNfqjWxR4C5okR9bx/6lHrqUFR6/Ko4m64F6UiQYhmtiN/
US7Ga1l+e6qRb2eubsENH4cEW06gm1aIYE7HeJMYBW+y2JGzbIs2yONiMF4F5By44xUCpw46
GeAt+frvkZuSMZG/Rx5y3d1YnClFrcdZkFoYGMnPo9Z9Ue3yqHXu2l/DHgzi+PlKRX5JfmSu
9XDPVTA854kR9XHs3qLrmdC7ZkEWe0jdev3S6gd9kNMHeX9Brm+Ri1Z4FrPC00odzDo3wyx3
m/PypkCLX1MM/ElsHL9Y7iEoS4Mpfnha5PSnaKXw/vW58w4wfdEXfZBTBDkfI7fFB4xJzwoZ
k/agahYbF0+yI4mNl+dUyALlWPniFDMS+Ri89xguByoqHMpj2q5SpJniYSuoksbg2fGs8RgV
Kx8jjw5tT9ZZGiOnD3L6IKcv+qIPcvrL8Aa5N2o9EfFC1LkZtqyS0ChxRx6SoqMQHRzB7o1a
z7KJUevMxR5vtiLNC2oFOUtzYDPHCvvyqPqCIua614haT9KIgqcPcvogpw9y+qIv+iCn/x75
MJLSw8hgTAhDH+T0RV/0RV/0QU4f5PRB3s95091oqDeatGUoQN6LrpJ0WHjwErNQqw/0d79z
xFq35Ixca52+t4H+eaYPcvogpw/y8MBsPJvaMLTI+QxUau8GR7Lf2byJDtSNVQvkA33zjqQ+
4VUvMfqcT1TjmwNcmHAk59wH+XDpH32Q0wc5fQ39XOv0QW5whrP+7Ecf5EMLA6W20gc5fZDT
Bzl9kJ+zIOeTujQ1oK62BjV8nyZZRjO+rbHet83VLNsmJU1xuxtZvbWo5Z+ld7ab6mrgdPJZ
4Hg5/8xv7S1s37paYXa4uoYm/5zucvBr1Cu2qR2eJpevTQ2svf5pXb1lm4Tj8OlkFUGulc1q
cwkmxvktOpM3KUiwtPbTql8pq1eYmbDUMpApZaNSzX6ll4VKeHc6WXif2MTas3BZvirIIzrG
jnKkW2TvNe+pRKYlGfnNvcYydkUE8gizcqllYgszk1d4mePCq1/pnB10sGEf73S1QjIZdi29
M9b1dGKhTXZu9TK8hXhAjGV8U+2zZpa1fmTNCyN7G32Q0wf5OQJyBsXGOtQ1tqDNO5lKW3vQ
NgmUHa1obpBNCsOhyTOm8XzmfOY1N3sYaGgR511Xscg7Wlsl6LYL87b70qAGg1yt3s4OtLI2
1fva1M4eNILbVMMeRloV06v6ZurSzGYVhlWhuJ9O/UpZvcLKhKWTgcyQRa6XhUrqQ668Dyb/
vOqGzoN+pqt95Qw0tkJ0HWA35ilB2bwGwyKPNCuXYia28DN5hZU5Ltz6Fa/9ckxMzvXP8GZh
x/TNIS/bZuTfxPHA37jRjG+qfdbKstafrHnhZG+jD3L6ID8nQN7hgauuAS1K2c7aFbbxWdzq
m0Xoe9OY+uZGb2bfm2RWtY5rne9f3ySrK9AiV6xXaK8rsE1CPbI21bqU++MFuV42q/6CXK9+
paxe4WTC0stAZgTkelmoDij3gU9/GlCPV5EcQ1jHAcJu7slMtmKxD2r1hSNeXgnksnMsJj6R
zqlqWwshtJWXDb5memWOa0s3c1y49Qv9CzpnMqubz25nY+AtTmWW/44ga93Ivwm5wsn4ptZn
rSxr/cmaF072Nh3RBzl9kI8MkGsBV2mbANVGZViHwDi03nZPEwMxc3nXeN3uCvvr1VsTlLiF
fzf4ACG/0ahms9K5GenetPTqV9oeXA//Htwe33f9DGTuHgNtDDfz2OagNh3v5zGk/Q462QPC
6Dikr9lrCAaGtEOhrVrnOJLzYbB/foWZOS7c+hXPWa9gvU5ctgXueXZkOvaiq9DOzvUWYc5z
X3pXI/8mjuv8xhXbodHn49pZ1iLOmnc8jOxt9EFOH+T0LfIwQS7Ux8bLWzu0Hwq06pUsck9H
ZEF23qf91EG2yFP1LHI92GqBPNwMZErr9LJQKVpouWFa5AYyXfW4kc+s8dRsZh0y69ibJWzI
QR5JJrZwM3mFe93CrV/lnO1bw85tajHy7cyK3SFeR9uUYsxmlvpCWXxC6mBY5Fp9DiinlWUt
zKx5huulD3L6IB/MV86CZp8bmjFyf8BYh3yM3MW2NWmMkauCvCX0IYCta6itlwLXeMBaXfgW
uTBGXi8E5PmTqbDxdm+bjYCcu3M1s1n1E+R69fcb5BoZyJSyUSlmv9LLQhXch04sTtUYI4/o
GDzhRjIbZ+Xu3W5mMXo/q9Snk/msXyCPJBNbuJm8ws0cF0H9ilnOdvCgTGa1+tKuMtc0DwQL
AKqBfxPHA3/jqhnfAkCu0WetLGv9yZoXTvY2+iCnD/JzA+ShkemBUeutcAdFrbd3dOqDnANX
ioSvrW2QotbZumYX6pgrvJZBvqm5KXyLXBa1ziPaBRc7q6vR3RYGyMUblWY2q36BXKf+/oJc
KwOZYqYrlexXelmoeB+mWAS3pV7UeiTHOOjMDbTCJeucu38V69PJfNY/kJ8IPxObkXMYdI7C
yhwXQf3K16BTiGhPyHZL5XZihZ3tM6VSgp3BfxMh3hSVjG8BfdHos1aWtf5kzQsrext9kNMH
+bkCcvpTtNIXfdEXfdEH+fBMmmJDQdEs2BNNiJWSkhRVueAs9a6LhikpA8UOWQYzIWlKEkw8
6Um8GbYcf9IUZ5GN7R+UKMVRAGu8FQUOWdKUDKuYNCXWBKtekhNXKWbZzUJb4hNTMKvAnzRF
rz2u0jSYk2ahSqqLZ2WLjva3RTgH5jTh79gxl+Hu/Ntx1dgxbB/e76koWtdCH+T0RV/0RV/0
QT6MQS6lABVB6kRpFgNmfCKDa+C6eGuRBGcniuzxMKX404bmyNOYOktgNyViVpUf/FV5DLK2
Yjil8iUpJv8xOdTtJiTKc5YHSEybKj/eLGssomJlaVU121PM2uMFN6+LHdtkgr3YKdTv4G2z
l4ggP+88/DxlAcpe5xb5BiydyvtdgHX0QU5f9EVf9EUf5MPXIpdZynxdRRazlK0ocgatM6Wg
lIPSWcSs6yTkycq4SlNgMmehQgC/C6VpJn8+cE8Fcphln1LiEvdnYLWZgo5Zxixsc4ZUPkgq
x4uPl0Cu2x4HCqwc3Oz4LvaQwSz6oiI7ElNK4eK50RnYrUVOySK/FHev8rvWW1ZnCv1e2kIf
5PRFX/RFX/RBPmxBHl4+ck/VrNAyFTkwx0ugl4G5zMM/s4cA5rr21ieUjx4l5BaPjZUUzV3i
KYpj3urHM9oej+BON6eVwsHc7Il25hlwFMGWyNrnKEWKSXwIEEF+JR56VQbyymzW7wlY2jDI
mcyMzrmut98Azd1O/+YUQZBY0LvQZLK90Rd9kNMH+cgDub4FLFrhWcwKTyt1MOvcDLPcbc7L
mwItfk312yKXPArsYSIvLQm2AodgpedZk5CRlwJzorjfkIM8EgAPJshlZenfnPoJcuHVpWGe
7U1pn5goXyY0Pvd2anYxqnf0nlvXrT/v3dMXfZCfMyCXxqz5GLdvzFo+Jt3lt4JNSXYksfHy
nApPwJh3cYoZiXwM3hes5kBFhUNljNwRerzgMXK99ri45R3NrP8kNnYvtq8iJ5F9j4YpTXzI
oA9y+iAfMJBrzeg1nEEu36dnJ9zLcmBhDySLN/fSBzl90Qf5uQVyb5R4IuKFqHMzbFn+KHF/
pHoekqKjEB0cwe6NWs+yiVHrzMUeb7YiraBKBeTc6jYSta7VHj4WHotRciu9LA2mUbGwS2P3
eiBXy0jWzpOVNAYmH2lr4pOxtIWZycwPYO0y/qxlylnNQt8lV8yAFiR5JraATFrhZHsSbpTp
vuxUYsalwPdsw8ts1Z/sTqHSPrZGxq8wMpyNlGxvRqcu7VqUjARvJjAjvweD2b5Cpn4No5/6
GdiUr6XyeRi4LGD0QU4f5PTfIx/maUy1MpI1MHj6pkPtaENTvT8lqeFMZjIAa5ZhoNXMtBYw
u5tGBjRDFjlP1hFGtifBPRujuX9Yma36k91JQdrHVsv4JZ0DoxnOtGayG07Z3gxaq30d+Rjv
zQSm+3swnu0rdA53o/00koFN5VoqThU8cFnA6IOcPsjpg3y45yNXy0jGYNviqoPLI82N3trk
zzIWViYzFZd4cJlag/O662VAMwLycLM9CdmpjO+vm9mqP9mdws2qpZrxK8wMZxpzyw+rbG9G
3c5B89dr9iGcbF8KFrmhfhrJwKZ2LVWvy8BkAaMPcvogpw/yYQ5y1Yxk3IJucfmsZm5By63e
SDKZGSrjg7NbfQpXrQxoRkA+ENmeNoeXkSx4XLk/2Z3CzaqlDpkwMpyNlGxvkVjkkfTBMMgN
9tNgBjZDxzk+sFnA6IOcPsjpg3xYpzHVyEjm2+6Cp60VjWw/d3s/MpnplQmxyJs0LXJPRz+C
3cLN9qRokef69w83s9WAZXcK89i6VmhuRBb5sMr2ZnCMfKt8jFyvD5oW+XI2Dp3umzNesKIT
IgB5uBnYDIB8oLKA0Qc5fZAHLF2DZdl2ddH/qyF1kGtkJJNlQKt31aOuwY32/mQy0yvDx8h9
mdba4NYcI9fIgBYCcn8mNsMZytTGyOXZwOT7h5vZqj/ZnfqTVSsAJGFmOBsp2d50o9b3ClHr
4wOi1vV+DxrZvnrcyGEu7Bxnt7hfttHz388MbEHnKOQ8aP3GwskkRx/k9EEevNCH6jADuVZG
Mm8wnMeFWmcNGtztxsqputb1yoQfta6YAS1E/kxsAVmhwsn2FBR5HRpJHmZmq/5kd+pPVq1g
kISV4WykZHvTeY/clIyJ/D3y4H31fg9q2b54VP0a9mDA28B+I/kl+ZG51sPNwBb8EBB8HrR+
Y+FkkqMPcvogNwLyVUuX0tcgq3zJEr/4dyIasJnd6L+nS1/0RR/k9Bd1kH9y8CB9DbIOdnf7
RKnf9EFOX/RFX/RBTt+1fo671uknTaEPcvqiL/qiD3L6IKcPcvrZz+iLvuiLPshpg/zlV9bi
sSeKIxIvSx/WwxTk7Z1w13WJQWvtXXDXd6lOpXrWQL7jJJ5IOIN36VvbQ5RBbSjaILum/bm+
A1XPQPTHAqkd36A0GfR/r/RBPvxAzoF8kI/lRiBelj6sI339jIG2pgtNQfK0DgLIQ9Z3hgd1
b1sbugLmf+9kdXjYMRpr9R8ShhTkvN4YYHbMD5jD/hbZgNbNveRB3rf5BCrt36LAe14YlNY7
vxgakId7rY2WDbjWXgFrmnsHHuT9/e1S/V3SB/nQgLybB2MxMB87dgynT5/GmTNnVMW3f/rp
p8MO5ErJWgau7llIMivnNu8XyMMF6tkEOYM1r6+1Tf56XCea2bqmumEIcl+9X+CDReymaf8G
H1MGec8xVFq+xfPln6NHer+5e/MZbO84B0A+mNb6QIOc4u+SPsiHziL3QvzLL7/U1RdffIFP
PvlEFeSDCdWzAfJBs8jVgCpBuNUt/m1ifQrZPxjU7G9ro2TZs/Ued5fMte4vK1jQzk5xv1oZ
mDt4hrUuNNeK693sc0fQsVqb2fpmWUY21q4W+XGEqWXF77z+ZmbBt0kzxok3sa9QV/Il+wsU
pH4dcjPsdnyJx5iV2MrzVQffKANcnCeFOrx1zYkDSucdx8c9KjfZzd8F3Iw/LodYjltF9u+x
aYe8XFAbGfA+LP8SpcL+P2A++/v8slMyQJ7Cpnlf4QHTD1I7vg5qR3B9ZymDGncLszZsP6AF
Gd5Wdm5YX+az81XXcYT1XfrOz7fs2NrnMBTADssPyIk6LVqjcd+gVrJEw61H93ei2Cf131wI
qA8cQ10mBK9FAVu/ftn3Qb877f7o/x5Gzu+SPshHGMgPHTqEU6dOCYDm2rp1KxYtWoTi4mKf
nnrqKRw/fty3z+HDh+mDfDBBXsNh2ul3ZeuAvI1BvNkLXw71BhHIwSBXO247K+9ulJVvlEHb
W6ZNNtbO19XzdYHt6GBDA94HgHb+YOAS3fGiW/EHPDbvDLpDLJRedhM7w27OX2LTHpWbXjDI
WV0PZEs3J3bzrbWzm+Ciz6UJPLQtn+7mY/hYANoRbM/9FkVTvhbbpNRG1p7SBHaj9lquPQxu
O7xW7BfYnv0tHvO2g908WzO/xROFp/3tCK7vbGVQ6znN4AM8lvkdNjlPS/0PdfuWLjrGLHYG
iZJvMN/0DZ4rOe37XmQ/YewchmGRh1ePgd9JSJ/UfnNKID+CTQziD+TKf1ffY7YJBvtj4Pcw
gn6X9EE+wkDOXeUc5CdOnBD097//PUS/+tWvBBe8d5/PPvtMGeSuEtjjRyEqahRGRfPc4PGw
FTmlbTzHdxJMPMd3vBm2nKAc3zxHuE0jR7jG9hCQ8/zkGVYxP3msCdaMIlR5lM+Bkw1WmYJz
nDsKYI23osARXt2u0jSYk2ahSqqnbLoF5513Ke5eJctHbp4cOEYuWMEePDsnDRdfEIvo86Lx
458mYtL8SrR4YVu3ErMnJuEC77m7/UlUviECtGVNDn4zxo7H6vxgbnkxB7/+qR1PM9i2vJSN
X4+x4e57M2H7ZTzOG5MirBf2balEcaYNvxwTzdoZK5zXgnUt6OSA3lCJwqmsnz9m2/7DhN9P
LcJL0jh+h9uDlXmTkcTaex5v7wWJSCmQtVeY071LhH2HBHLTV2jdE2ox1Raym6ft+0BrUQ/k
7ObaEjA/N6sj+Tt82OOHErds5sd9jwfsX6qORfZxq4iB4QNfvUFt3PM1nkv4FpVrTqM7ZFa1
43jOErh/X8cpPGY75W9HcH1nMYNa354zaJkH4TzOjvpBsvp6A67FpgP+8/IYs9bk35+wfKkI
zJBzGKFrXbsejd+J71pLYudc+G2o/uZUflcH+LUO/V0VJRgEuZHfwwj9XdIH+QgAOYcyt7K5
e51rypQpKCwsxAMPPCDo6aefZjeIBHz88cfC9qNHj6KnpydMi9zJbhzxMKUUi/BmUM9Jikdi
TgU8wnYHimzxMKf5t8+yxmJUrBfk2tsDj+lESYpJ2FcALAcvs1YSs8qkYwXJyR4+TImYVeXx
ravKYw8ctmI4u8Ks21nM6hIfAPi+8//wU/z8pz/FVQsqBbit4/VOeDLUMl7HHxwSkb2yQdz2
xga88mqDBMUNKLomHhdMLMYrzN3e2bAS2RfH49eZFWju8IJ6Ah6vl4Gcr5ODnMH2l5OLsa5Z
ftwNeJL1Jf6KPJSuER8q6iqrsOpV/tmJRRNNQplKXuYNBvUJrJ83rUSDi7noKwrw+/NZe59p
EC1y9wasW9fAxs39rnXvQ4oP5OzGt70n6KbKbrwFTM+tOaI9BhniWg+qa/NJRReoUsayj9d8
j1LL95gvBR0FW1zbg61G50lUprIbunTzbfFaQUoQ4XUmfKlZ31nLoBZws/8cm5jVV+C1CPVc
zgHf9c+hMZCHUY/R34nCtpDf3ED8rpSOa/D3MDJ+l/RBPuJAzqHM3eaff/65oFtuuQVr167F
Cy+8IKS8dLvd+M1vfiOA3LtPb29veCB3FjFQJSHP4V/nKk2ByZyFCo/69vh4CeQ62wOOyWBq
88FUalMZs97NGeKxQtrsQmkah7H0UOGpQE6iCSklrtD+6NbtQIHVBHuxS/BOXDV2IubnX4mx
9kfRwMBZbGMWfNGGUJBv4P0zY3LRamxoVth2fhJmr/a7sBueTsEFP89CuZuDWskiDwL5fyRh
/qtBrnVWr409PMxc40ELg29ATvENUj/X+cs0PzuV9XMqnmOegKYqqb2Fq+F4Q/aaGx9Lb5VZ
5HWBIH9X4aa6qZm5cNnN0uE8ojqmK1gUCVoW+ZeBFrnaDZNZMoJLsvmLAMvTmNX4BT5cxqO9
JcuGW3AWvxUbUSDWUGZQU7L6LCqQ0QK50XOoB74w61H+nYQZCKf1u9qjZJF/GYZF3o/fw3D7
XdIH+cgDOYcyt7T7+voEZWdn49VXX0VjY6NwQ3777bfx29/+FgcOHBC28/2PHDkSFsh55HfI
uoocmONTUOpR2S7VI4Jab7v/mMK+0aOYWz8WsbGSuJs/Xj3y3AvjMt6Wsiz2Oc23b3h1e1A1
K4lZ7KVwMDf72CsXoGrVfFw2djJWrluKFBN7GFmnNFbdgnVL8zDZloj4H8figksnY/6zDZI7
fiYSz5+AR9f5X09reiYHv+AucrforucgL3690zfG3fh8sGtdsti9gWvtUr3xE/BkgzRG3uQf
325ZMxO/OU/qJ2vPj/+D6Tyxn0tq2f7tUnuvSMT5bNsF1sko4Na5LICOB88FW+TvqlhHfczy
KbV8w27SX/iirNcw1+Ea4Tsbu2RjfnNMQWPkuVKA24HTqFMdIw++YbKxRTb2Wye4NI8IVukc
k8YNk9W9vfmUL9L74zVn2AODdMMUxiLZcXP9gXZ9B07h3Y4j+u0Y6gxqbLy3lY0vf7hHHpTF
bv6pJ0LHpHVBbvAcyj8LY7oIcg+HX0/I7yRckGv9rvj3KQj8XaWqjJEr9ac/v4ez/bscZlnZ
6IM8ApB7LWweic51//33Y9OmTQKsuXhUe1ZWlm87/87d6+ogn3WWLXK2L7Mmi5xhBKYxKzyL
WeFppQ5mnZthlrnhw63bUyE+COSlJeGyOatRX7sad11qwdS8FJgTM7G6Rf09crewrQErZ9hw
PrN+hX03iH2/Z22XAEoelV5T4rfIOxmQk8634aGX/VHrjewh4oIxCiD3BqHxeiqLcAVzj8+s
9EetC/XXiNvGX8D6ucFIhL0L5ffYEM/aW17P6vZGzjd3GrLIvev6Ok4KVsl6ySr5eA3wWByP
yP0KjpLg6OGvgqLWNaKDg6yXdxd9hSIp0tex6Es8puWS33McDvm71zb4XZgyID5mEl2ZPNJ5
zbLPjYN8qDKosRt/S/ZXgpUnvGvNztkTmd9hu5HgwpDvBs9hUHDXdv7gwK8nO1dilHck9QT9
ThTfI2cu6vIjqudf9XfljVqf8q3gitaKWlfuT39+D2f5dznMsrLRB3kEIOdQ5uPkPJiNi4+P
79+/P+CVszlz5gjr+HZumXMLXvU9ciFQjEFXNuYsjJEHj3FrjpFXsDHweI0x8sDtwePYxSlm
JGawcWzvw4TLgYoKh/IYeZffkjYl2ZHExstzKjwqHgYDdbtKmeUdzaz1JNy+kkesv4FlmWPZ
92iYJq8MDAjzubJXY+nqdcz9LlnnRRMYGCXo8zFy3nc+xt0ijpHP5Ocue7VYV8NSTDbFw+YN
NtvAtgvnZgKWNkgBdpLlHXhccYzcZMvDSmlby4ZKVDaI24R+Ti2WvvPjrMNq1sYW3fYO8hSt
SjciKqL/l74IiD7IIwA5hzKPXOdj4Fz8dbOXXnqJuVk7BDU3Nwtw/+CDD4TtHOh8TF19Qhgn
SrOsYnR6LB8vlketM9exsN4MW1Zo1HqOPCo9Ly0kal1tu2JkeZZNjCxn7uF4sxVpBVUaIOcP
IHlIio5CdFAEe/h1M9jbYjGKeRuWvS6+eraBWdCmUbGY8GSD8qQp64ox1WpGfLRYpylpMvJW
yvZl8A44d5lPilCXtm9Ymg2bOVYsa52KgiI2nm3SA7k/at0cL/VFiFr3byvKDOznZO/Dgl57
6YOcvuiLvuiDfGhBzl3rHNBc/D3yWbNmITc3F7feeqvw2eFwYOfOncL2jz76SHgFbbBndgtw
vUewnX7SlHM0aQp9kNMXfdEHOX2Qh4Kcg5kHsnG3ORcHNo9Wb29vx5tvvikEvL333nvCNm6N
DwrInWUoc4gubQ+3vpNiA8aqdbfTBzn97Gf0RV/0RR/kFEHuneQlXA00yHmQnM0cz1y1ypO4
6G2nD/LhmymNvDU+UvKqD1Y7dyzHxOR+ZmaTt224n8+hautAnNeI1YuuknRY4mIQw/pXfYA+
yEdkGtPX33iNfoaz/oK83Y36uka0dhjIPjaSMqXJxKdp9c0gNlxBLkyHGoXRwqQsXCZYUvNR
NWDtJg7ykQTH4drW4dbnA9UhcxnQB/lZAjl9nSWQt7nR7G5DR5sEcjaE4WluhqddDbQjKFNa
UJn25q6By/I0mCAPuEny18JsSLAvl+Y2pw9y+iCnD3Kl9tT20Ac5fZATtsjbW91odNWjtqYW
DY1NaGnrMAzH4Z0pLaitbV1B7+ryd5q/Ed7BnWP6Fs8VHg9M3qC1PQjkAZmweGKR8lxMFDKJ
8feyk5G5bGfkN0lhbnP5e9udWJHN4M5diSYL0gurxeQmxw1sD6p/nyMX45lLdFUE7dbOlpaK
xSW5wnZTaqW4vmcnqualwmJi7YpLwMR5UqIV1fOQ7qtD3L86YH/V42v1I/j89nRiVa5dPFfs
GLZc/7nS7l8oHHcts8OSWY2DcpfvvGSMn9cZ3vlTkkY7DV/vkL7rXA+VY+ZbYhAVNVr0GsXZ
UMzfXQ+uW7dNGtn0Qixujbo2l2Bi3Ghfe0zeRD/0QU4f5PRBHiHIh2OmtCCL/AFvJidvhim1
zGV6230gV8iEtadcnO60o1u6Ie7F1h3dEYJ8r2CRW3w3KCnbWLY821iCMBNWn5Htvvp7GUgy
GcRzUR1hu7WzpcUwgNXIbqrdqM22YLy3XQwiqzItsBV2Su1WGmKI0einxvG1+hFwfveiWjhX
5djaI4J31+ad+vWrwZEf15LuH6PtcWN2sgS6cM5fiLTaafR6B/dd73poHFPpYTPovOq2STWb
XmjftX/vg+shoA/yCED+8ssv48EHHwxLr71Gf3y8/671VuOu9YBMaZKF3C5t8342AvKOLmFe
9YD9WxnY6wyCnCdpCS7f1unLchbSVqf41zd/9R7lDFO+edL1tgsgV8mEJcw/bsHsNZ3Y1xPJ
GPlowUqL4xZIFBsvN6X7x//2KGcbsyQXizdcve2StVxcmA6LLR+1A9TukGxpplSs2hM0jmkJ
XNfXUYjxtkIJFArnwaTRD63ja/VDftNXyNxmuH+KcOTT1TKLcc1ef3ttrL3hnr8Qi1SjnYau
t0Jb9a6H1jH1QG7wN6iYTS/c/tEH+fADOQdzuAsvQx/UQxjspulaD9qmBXJF17fKdrW6gx8q
BBe9epkAi1yyqAMzTH2nk4EqaLtaJixubTlLMDs1mbkDTbDYc7GiY4AscsVsY8U62ciCtscx
dzdzlXqBE1m79bOl1faoPaBI4uUSVG7gulnVNI6v1Q8FsCmPrRrMBhd0vQ46MmFJLWfXSrR4
J6oOTWi33/AYsMHfg+Jnreth4JiqIA+nTd6yljD6HjzURB/kwxPkfF51PjEMlzeBCpd3znU+
Jzt/h/xsgVw5PerwPqYeyDVnXYsY5F2BY+Jtga+XhVrknWFY5F2hmdL02iMfIxeyPGlb5KW6
FrlKJqwAdWPrsnQkJKtYnuGOkQtZyrQt8lQDFlp183JmkSUj37k3snaHky3Na1VaZFaYkfNg
Cs2qFthPleNr9cOoRW60fyFjwzXISU7FiuZKZFrsWKVm7Rtuv5F2RmKR61yPflrkhtukB3K9
uuiDfPiCnAOcf+cTwHBt3LgxQDyRCn2QjwCQS4Fq3tfT+Ji4bwycf3fxMXJ/prRWl9YYeRD0
O0MzpfE62tuMRq0HZ5hSGCPX2i4LdgvJhHWgE7XNO6WgJ255MSvNCxK97E66UevB2cYUxsi1
tsvq72MWbqrFxmDerd/ukBtsGNnSfGPkyULAlDegqu/ATrg79mqPkcuzqsn7oXV8rX4ojpF7
g7x6sc87Dmy0fyF97YU7N5m51NmYt2CZq4Fco37VMXKFdoZxvUPHyLWuh/a54XANGDoJGWIw
2CY9kOv+3umDfFiD3GuFz5gxwyc+NSu3xnlyFfogP0sgV82Upgz5Do8/U1pAVHqnDN46UesB
mdIUotZ9mdKEOsJ4j5xnmMqUotLjvkVpoT/dou72oKj1gExYe6qRb7fAJLhM45Bgy/G7dvWy
Oxl5j5xnG8uUonjjLEgtDIzm1twedNPr6ygRLMOF3DLUareCxW44W9pxeZR0OsabxEhtE7NY
c5ZtUQe5LPI9NKpa4/ha/VCIWvdFRAdEgxvsn0Jf+zryYRkdpzh0Yej8qUStK7czjOutGLWu
cT00zk3tPDGaPY55TZSj1o3/BrVBbuD3Th/kwxPkHOBeS/yNN97A1KlTfQrLIudJRTKsYrKN
4BnY2BhamtmEFG8ilS4XSjPMMNmLJGhaMSsvA1YTTwDCyxb7EquEQFVIwpIkJmeJN8OWUxK0
rw15BVnibHDyXORa7VMEuXqb9NohQPzVxbiL3+C827P9CU+CQd5SWYSURDNSCirpT9FKX/QV
VsAis7YtAzvDGH3Rn6J1RILca4HzMXH+V7TKc4TvxixyJ0pSTEK6UQGOHJp2ExJlc6K7yrKQ
yNxbBQ4PnMU88UkaSpwSNKNHBaQ6zZGlOg1OJ1pkj4cpRWPf6Gh/XWG0LwTkGm3Sa0d9bSXm
XzkG/2Nf4EtBmi1LQSoHecPKmexhIQmZSzfQn2udvugr3OlCeXBido3sfXL6og9yoiD3WuBe
i/yuu+4StHPnVmMgdxbDZrIySMtgWJYBszlDlqXMg6o8K+IZtMzxicgqc/mhGZuEPIdyhrMA
kDuLxJznWvuyuuTtMN6+IJBrtEmvHfWV83HpGAvuWuV3rTcs5dvF3N0iyK2YmTcZieYJyFvd
Qj9pCn3RV5hThWYmMHdzcg6q9tA/H/RBPoALMLz+ZzRqXT427oW4V7t379YFOU9swi1YnqM6
NlYST3Iid21LQLXHRiHWVgSnxni0pyKHwZ6VDQK5cByD+0bUPsNt0m7HhpW3Y+yYK/HQq36Q
t6zOFrYv9YKc5/Nm7UiaKVrp9EFOX/RFX/RBTh/kEYM8eGycKyMjA7fddpuQl3zfvn2aIBcs
VGbxFjm1gsAcgjvbbM+AXTZePuAWuVKQmqH2DbVFPgHFq4sxNZGNvzOYN9AH+fDTYGaZ0nyf
92xmtzLa/m9Qmgz6+eHpiz7IhwvIvdHpXDxPOc9Bfu+996K4uBhLlizBqlWrtEHOxoyLU8xI
zGBj0L6gNAcqKhzSmLLoVjcl5YjALcsRx8urPKHj2my8eRYfT85SGSO3xYfuqzieHk77lMbI
1duk1w5hjPwPY/DzFP8Y+Uy+/faV2FDjxGvP3oxfxdnwwLp6uF55EjddbEJS9tJzA+ayyW7o
35wiBPmwa+sITSNLX/RBTgXkHOLe6HSut956S1BdXR1KS0uxevVqOBwOHZBLAWRZNjEqnLmN
481WpBVUCWDzBboxcHcFgV0pQjxJFlGuHLWeiHgh+twMW1aJeoS7wfYZiVpPCo5y12iHP2p9
rH975pNY1yxCrnGNFOxW345WdyPq1j2N235vQiLbhz7I6YOcPsjpiz7I6S9hg9xrkXNrnIuP
iXN9/PHHWL9+PZqamvRBPoLeEz9rU7SqTM3a1lyPusZWfwKUjja0NLJ1tTWoYXW4mj3+bd7t
TQ2+7fVN0vbg+uXfhc8uuNmDQz0rV8s/t7WjrUX+XX6MdniaXL5jNLBjtAfU662rNqBsU10N
nE5WpqbGn60p3AxlutmcFLJ98fdfpyQLU1+aLOlYuCw/AJTa2bVUskMFvDO7E4vtcdL75qJG
R8XAViK9o66X3Up4PzdZeN9aqX3a6TCNZq/qxYflXwqz5M2J+QHz2d/nl53yb+85hU3zvsID
Jv6uPlA67+vAd/l7TqM1F9K7/MATuWIGOoflB+REncbsGL7+G9QK7zIHwV03ex1QV8LqNEFo
V52vDzptpi/6IKcP8uE/1zp9kPPpTJtQX98kTYHKANpYx8AugbOjFc0NrK7mNml/7/YW35Sp
7QzInUZAzjOuNYsPDG3uetTWMtc+z48ufa9raEG7cIwOtLJj1Pva0M4eLGRt8NblK9vgL6tk
kYeV6ctINqfgbF/BM1J1YnGqKXA+cM3sYSrZoTQmvzjYXCg+UAgPKvrZrYQ+5cr7ZNKd79s/
T7fB7FV7TggT5dR2SLPe9RzBhzukz8e/wPbsb/GYN8Mcg3pr5rd4ovB0UAa6E+K0uOxYH28+
FTKznrKVbiB7XQx7cCg5jR4Obgb0IvsJcdY/zTbTF32Q0180YbNmzZqws5+tXbuWPsgHA+QB
wPXAVdeAloB50Zn7vb5ZBHeHwna1+hUsco9vLvZmhe9N4r7CMVyBx+DbvW1QrKtJdpxgkIeR
6ctINqfgbF9SmVVBc4UnqMynHZpdSyU7lArI+3aUs+MlY7ZvutXws1vxPqm1L9QiN5q9imeR
+xaVa06jO3j7geN4zvIVWgPaeAqP2U6J4D4QmoFO07UuX2cwe92mA/KEOF/Kyqq0mb7og5z+
Qj8f+Yi0yJX2EUDZGALK8EGusk3ReufuceY2r5XEvyvAWus4EWX6iiTjWH+yd2lNYamYkKQG
+ckJSF+2M3D+6XCzW20uCcO1bnyKzW7nSVSmcvf493jA/iVavJauZBXPYZofJ4m7yhO+VM9A
ZxTkBrPbvSufctfij3hXbTN90Qc5/YU+yEfkGHk/LfIGZim3dhh4AND6Llnkno5OY2lYDYA8
vExfYWRzMmKRh5M9TAvkPVuwIpW5+ee5A2cS08tupehlyA3DIg9jrmyfvsCHyxgck2UWt0Vm
FYfEJfTPIjeSvU4N5Kptpg83+iCnv9AH+bAHeYcYtV7PwOwPNGNj4C42Bt6kN0buDz7r8I6R
s30b6+rQ2Nrh26+mNgKQC2Pk9UIQXbu8rYbG4lt8Dxry4DXDmb7CzeYkKzOeJ5pQGiMPJ3uY
KsjZODjPtJWpND6tn91Kbwx/QEB+4DS2N59i49DSGPeaMwymXijyMXIxgO1jXxtP4d2OI0Fj
5N4AuF50e8fIhXFsBLjlQ8bIDWavCwG5Vpv1stfRF32QUwX5qqVL6WuQVb5kiV/8u1xs3fMy
hWz3SW8fje3Ceu9n+frg/XS+B7VXr6zvIUCKqPdlawor01eY2ZxkZYqnWAKi1v0ZrsLIHqYG
ciGTWhSiRsfIItdNmFiyE4ayWwlR9RbVqPoBAfme43DYv0UBd5kzF3qRDYFuaiFqHXjMJLrY
CxhM1yz7XJaBSxZ5LotaFx4C5onR7PNZWeWodePZ6wJArtVmvex19EUf5FRB/snBg/Q1yDrY
3e0TpX4Pp5ndAtzx9G+S9EVf9EFO37VOXwOZj5yKhvRGsMeNLm8e8T01wutd432vf9EXfdEX
fZDTBzl90Qf5sAZ5X0cxUqUJZ4QJWXLL6Vvj9EVf9EFOB+TTbpyKjBtvwNRp6cJfrmk3TcWN
N2fg7ntmo7m5mT6g6YOcfvYz+qIv+qIP8uEC8meeeQZFRUU+pU+9HmfOnMHXX3+Nb775Bt9+
+62g7777Di+teQl3zshGa2srfUifSyDXeh/9bIBc9ZWkc3BedHlfqWUR05gtb1hmfQsIPByk
9p21fveiqyQdFh5UyvpYfYA+yEcUyAsLC/H2228LSVL49yk3pGHPnj3YtWuXoJ07d2L79u14
55138MMPP2D58mXIvXsW2tvb6YN6IEBuBKLCpCxOYc7yGmlyljpXEzzt9EHu1cnjQ/R3MEEe
vH4okpMIE9hEIca+PPBVugM1yEmIQpRpEKGiBfLhqIFu73DqP5+RMGh+g7Mp+iBXWdRAc999
9+HNN98U8pBXV1cLIOc5x8tXlQfo/fffE0D+/fff49mVz6L4kUX0Qd0fkLe50cznJ2+TIMoe
jDxs2MJjZLpV/loXnzimwS3Nh04f5EN6Mz/XQG5KwHiLHYs3+9cfdGTCYkmGKYE+yEmAXGnG
QfogHzkgnzdvHrOu2wSIr1u3TnCtd3d346OPPsL+/fsF/etf/xKyn/X09ODQoUN49913MT37
Vvqg7qdF3t7qRqOrHrU86UhjE1raOoyDVj5Tm9EsaWrbg+rv8PBpYhtVZozrhLuuC61u8W+T
q0uqvxNtTV1ormXrmNzsc4esvR+XQ8h6JbwfbP8em+RP/sJ7xxDeH+bvM69f9n0g3LQydUlz
d9eVfCnUX5D6teKNIaKMZ0LbwshUptdWvb7K4K2YZUwor5dZTP9chN7AWZ8L7bAVbpFNWpOM
zJKgvoabic53bsV1Yia44HkAjGSb4+e1E6ty7dJ8AgnChDv7VPqkf6312qO1XeWdfo32qbUn
3xKDqKjRGC0EZUrZAYPr1T3nar/dMLIMbi7BxLjRvraYvEmEIrnm9EF+dkB+zz33oKWlBa++
+iqqqqoEkH/66aeoeGE1s8Sf94nD/CB/L5rp3R3v4pbbstQBJuTnToKJ59+ON8OWE5wnPDC/
tzWj2Lfdly88wyrmC4/l24NzkttQUDQL9sR4Vj4apqQMFDk8hEDeLlrkLi+MjWZJU9kuq7+d
pzKt13Dbc5DXcFB3BjwotDeydY0SvJla+fdm//bu5mP4WBh3O4Ltud+iaMrXEoCkWcRy5dmy
vsdskxfkOpm6hHnDf8Bj8874gaagiDKehZupzGhWMbW+KsxZHmiRG8kspn8uFC2xjuVIteWL
yWN4hjpbLlsn9z5EkIlOWqddxki2ub2oFo7tffugF7s271R9nVD7Wsfo9kFzuyLItdun2Z5g
izyoXv1zrnL+wsoyeEJ9lsSwsw/SB/lZAXlubi4aGhqEbGYvvvgibsiYgr6+PvT29griVjjX
Z599Jujw4cP48MMPcasqyJ3M4oqHKUWCM4N6TlI8EnMq4PGCOHoUzGnK23n5khSTsF2AN4c6
u3kmZpXJykf7t7P9SzPMiLcWwDHiXOutxl3rvsQl7K+TjZfXyjKS6c3JrrtdzGDW3Oxi65p0
xusZyJnF3Sqvi+3fUhe0ro3tV9/pm9ZV/o+0jyfRSP4SH6hk2uJzcxcleKft1MnUxeFlCtyu
J8MZz8LNVBZBVrGAvuqB3EhmsTDPhe8GfkC0wmc3d2MXA4JtHoODfBghkkx0wjq9ufINZJtT
uA4RX2u99pgMzu0fYftCf3saIDdyztXOXzhZBtVAHsk1pw/yswPyO++8UwigunJWFX5/p6jx
TMk5oi4VVOnTJdl+2e9ZF1qnswjW+CTkOfzrXKUpMJmzUOGRQByrvr3LyX6MJisKZNs9ZRkw
mzP85eODtldkwWxKQannHA5207LII8mSFrxdyGzGXO6edp3xdO5S9wNabqU31YhudUH8s2y/
j9d8j1LL92KWLeZeD7ZCA7NlnQx0N0eaqcun/mU8M56pLIK2BvdVC+QGM4tt74lsnJaPi4+f
UojZNpmbV/Nc9DMTndEpccMav9W/1nrtMdRew+0L47d33EC9Cudcbcpew1kGdbwDYV1z+iA/
OyDPzs7Ga6+9JgC77f1eRbVz7Q5U887PWJm1CjnFZ4XkFPdU5MAcL4JWKed44PZZgsUeHR2L
2FhJ0dxFz7a7VMrzdexJutR1jr5+pgvigbDIG+Fhrn5XXT2aWtvDA3lHl2CRt6lmSOtCaQIb
523+wmeRP+a1QhWtzC9lFrlOpi4jQWGRZjwLN1OZXlv1+mrAIg8rs1i4AVdCpPpoxNhK/O5t
izxrXJiZ6BQt3Fz1MmogD8ci17vWeu0x2l6j7Qvnt6dgkYd1zlUDMXWyDGpY5GFfc/ogPzsg
v/XWW4XxcW5tdzJAl9bt1dUK1z40vnsYyXdUDYJFzsozi7zIqdxe+iBXilo3kCVNa7u8/jYv
zDuMg9w7Rs7HzTv87vb2Nn+ZUtM3qBMCttg4Lxsjn+MbAw/OlnUadanBY+QamboMgTzCjGfh
ZiozklVMq68B6UAVsoyFm1lMGBvVyRoW1P+Dmzv909tqngsDmei8Y87y86dVRjXbnHcMWhqr
ZVbuPrUxcr1rrdceo+012j6t9gjj2PbQ4Qj5GHk451x+/sLKMnhCM5NgeNkH6YP8rID85ptv
RlVVJXOjV+LNf/ZhZeO/dLWiYR9c2w4zN/xa5TFyW3zAGPiskDHy6NDtWf4x8uIUMxIz2Bi4
F8wuByoqHP7yFEGu9x45g7M7KCo90GrW2B78oCDBvFkJ5iog90atu31udXZd3P7t7y76CkXM
zTyfwcmx6Es8Jo9K55HcU74V3NDqUesqmboMWaERZjzzRq0bzVSm11a9vgb0RSHLmC/q3WBm
MS/ItbKGaU7KonAuwslEFxTVLEaBV6qX0cz/Loue1oxa17vWeu0x2F7D7dNoD095O0+MdPdl
BwyJWg/jnAd4UMLMMqiRSTDs7IP0QT70IM/IyBCC3MYz67p1Zw+eb/oXnlPRMwzgTzv34Mk3
PsCGtz9RAbk3aj0R8ULUuRm2LO2o9SRZVLovaj3LJkatMxd7vNmKtIIquiCnP0UrfY1EDbf3
xPXaM9Leaz+HRR/kYYL8hhtuwPPPPy8EuVW1H8BTzg/xxOsfoLj6n3h43W48+Or7WPjye7hv
zS7c+9JOQQuqdmFF/V5Y73o5bLApgZj+FK30QU5f9EFOH+T0RR/kEYJ86tSpKCsrg5WBfDkb
/35o3fsoXPuepopeeQ/Fjvdx2Yy19EFOH+T0QU5f9EFOX/RBfrZBvvCxZwSQT3msFemPtxnS
tQsbkJLvoA9y+iCnD3L6oi/6og/yswny+fcVBrwbblS2WS+jfJ2b/jSswxXkQzB/elggDwhk
GoaZrQZ9TvUw+j8Szg990Rd9kA8fkNPXWQL5OZDRLGKQjxS38GCBnL47l77oiz7I6YP8HAH5
CM9oRh/k9EFOX/RFH+T0QU4f5MMio5k417rbzfapq0WtyyPV3w5Pk8tXf0NT4LvpQoIVtr/g
TWhQfq+9lnkbalndAe9fh7yPq5N9bEqy4fe4hy7L2U5UzUuFxRQT+r6xXn2y/utmwBrg80Nf
9DUQGmzRBzl9kI9QkJ/NjGZiUpb6plbZgwLzELD66331t7OHBvnx2cNBa6sEdtb2prrQtstm
kgvIGhYMKq3sY2HNrDZUWc66UZttwXjvTF4M6qsyLbAVdvrTgGrVpzWxyPHBPT/0RV8jQfRB
Th/kI2iMfLhkNONJU1yBdXXw+oPWcY+Bt/7gOoRtTeK2jtC2BWQNCwGZVgYnO1YZnes8SIOX
5awa6ZbArE99HYUYb5OmwNSrL1yQD9L5oS/6og9y+iCnr8G0yIc0o5lCXQEPGpL49zr/Q0E7
c9e76qT1XLXqbTOURcoLsUizjw1ZljNuJY8W3PdxcZL48RJy+5dFSxXkA3V+6Iu+6IOcPsjp
a+jGyIc0o5lCWySL3KOa0cwTOB+7TtsDLEWjoArX4hyyLGeVgkVepZrlTKe+gQI5fYucvuiD
nD7I6Ws4R60PZUYzpQh3PkZez8bNZQFubJy8tU16IGhvQUNtPdxtUlvYGLnPIg9pW1vg2K1R
UEljwON5AgojY8BDluWMj5EnC4kxdvmynO2Eu2Ovf4xcq76AVJU6GbD6c370Mp/RF33RBzl9
kCvLg4qCNCQJCVGiEWtKRIqU8IRvdxRlwJpoEnOMx5qQlJKHMmmWN2eRDaakPDjk9TkKYI23
osAhS6iSYRUTqrDy1uCEK+fSe+RDltFM5VU1KWqdu+gFFzuzshvdbbIHDzb+LkSlN6CpuSko
4p61jcHcWNS6dvax4qDsY+Mt6oAduixnPGo9HeNNYoS8yWJHzrItsixnGvUFtEUnA1Z/zo9e
5jP6oi/6IKcPckUJ4E1ETplLAq8TDofLt91ZWooKp0fKklaBArsJ8fZiOIVc5iWwM/DPqvL4
9q/KS4LJJm3vcqIkxSSkQBXgzaHOyidmlfkeFOjP7HZuT9HKg8YsycXqeZWJi/75oS/6IKcP
8v7LWcRAbkZaUQWcBixlT0UWzKY0lAn7ulCaZvLnJvdUIIdZ7ykl0oOAsxg2k8w65+XLMmA2
Z6DCQx/k5yTI97jRtUN6b3pPjfAa13jfa170Rf/80Bd9kNMH+aC41h2leUiz8XzksTBZ01Dg
tc75tpJZSLGapVzlsczFPgpRsf5c4l4wc7B7yhjkzWn+bVWzkMj25znKY2MlcRd9fMqwzEVO
H+T9B3lfRzEbQ+bua2nildxy+tYm/fNDX/RBTh/kQycXKvJsiPdazMxatzFrPaPE4XOFCxZ5
vB/k3ArPYlZ4WqmDWedmmOVuc27tM4u8yEk/aQr97Gf0RV/0RR/k9EE+SK71CpRWOODyWuBF
dgbyLBHk0vh5lmShe5xlmGWLxyiZRc7LVM1i4+JJdiSx8fKcCo+sfieKU8xIzGBj5N79XQ5U
VDjoj5HTBzl90Rd90Qc5fZAPTLBbMTK465y7vJkL3JSUhjyZa72iIAWJ8bJtBcyVbrIHusYd
eUiKjkJ0cAS7N2o9yyZGrbM64s1WpMmi4umDnD7I6Yu+6Is+yOmDnL7og5w+yOmLvuiLPsjp
g5y+6IOcPsjpi77oiz7I6YOcPsjpg5y+6Iu+6IOc/kIfqvRBTh/k9EVf9EUf5PRBTl9higPc
Kw60IRY6h4no35zoi77oiz7I6YN8RIoD3KvhBFb6IKcv+qIv+iCnD3L6og9y+iCnL/qiL/og
P9sgf25tBZ6ocOCx8moULK3C3+5dgd/f8SSumlWCG+5/FCWrVtMHMn2Q0wc5fdEXfdEH+XAF
+Yq1Tix/rQ3V7rdR987HePejY3hz7xE83/ERZpS8iAlzHkdzSyN9KNMHOX2Q0xd90Rd9kA9H
kC8pfxE598zFbXfnY1JuMa6a9xyuKajA6tYP0f5hH/7+yOtIvasQs++eGaKy51bShzV9kNMH
OX3RF33RB/nZBPnMe2aj+9N/Cfv868BuvL37X5hdVi+41x1bulHasAvXFz6P9z86FFDfqVOn
BJjThzV9kNMHOX3RF33RB/lZBHle/kx8//33OHr0KD7//HN81L0f9658QwD5fS9vxtM123D5
zKeY672TbWf78P2Ofo4vTn1BH+T0QU4f5PRFX/RFH+RnG+Qcxt99+x36jhwR4C0XB/nU0paQ
9UfYvl98oQZynhglDUmmWERHRyPWlIgUWVITR1EGrIkmMY94rAlJKXkokxKmOItsMAUnShEy
pllR4JC+86QpGVYxaQorb80oQpVHHaRax9NrK32Q0wc5fdEXfdEH+YgA+TfffIOenl5s3t4l
gHpl6z7cU9Hq09yKNjzT/IGwbcWrr6OX7Xvy5EllkEupSnO8Gc88TjgcLt92Z2kpKpxSalJX
BQrsJsTbi+Hk350lsDOYzqrypy6tykuCySZt73KiJMUEc1qxCG8OdVY+UZ6zPEiax9NpK32Q
0wc5fdEXfdEH+YgA+ddffy3A/JNPPsGbW1p9MOcA53K89ZGwrnRttbAPHx8/ceKEMsidRQyO
ZqQVVcDp0QedpyILZlMayoR9XShN42CuEMHsqUAOs6ZTSiS4OothM8msc16+LANmc4aY77wr
zOOF2Vb6IKcPcvqiL/qiD/JhC3I+Rh4M8+otBwWgXzbzaR/E+T58X1WQM3e1ozQPabZExMfG
wmRNQ4EsH7mjZBZSeL5ywTUey1zeoxAV689H7gUzB62njEHXnObfVjULiWx/noc8NlYSd5nH
pwTmM5e3RfN4Wm2lD3L6IKcv+qIv+iAfISA/c+YMDh486IM517b33oJt1lMC0J97rVZY9913
3wn78H2PHz9uINjNhYo8G+K9FjOzgG3MAs4ocfhc4YKFHO8HObfCs5gVnlbqYNa5GWa525xb
0MwiL3IaBKmR46m1lT7I6YOcvuiLvuiDfKSAfE3li3iJaU2YUnatV6C0wgGX1yIusjM4Zolw
lMaksySr1+MswyxbPEbFysHqQdUsNi6eZEcSGy/PqfDI6neiOMWMxAw2Ru7d3+VARYVDeYxc
73habQ2uy1OKlPhoJM2qUv5OH+T0QU5f9EVf9EF+tkC+b98+7Nu7l/3dK33eJ34W/u7DXvZ5
L/sbFRUlrOef+XrlYLdiZHBXNnd5Mxe4KSkNeTLXekVBChLjZdsKmCvdFGQhO/KQFB2F6OAI
dm/UepZNjFpndcSbrUhTjTTXOZ5mWxVAzo6ZKAe5/Dt9kNMHOX3RF33RB/nZAvmxY8fw+hvr
8dobr7G/r7G/64Xvch07ekwA+dFjR5l7/Zjwnf575PRd6/RBTl/0RV/0QT4MQM6XBle9pvjC
QS5f6IOcPsjpg5y+6MsnnKT/d0BEH+QRgtzIQh/k9EFOH+T0RV/0RR/kwwzkPPGJUkIUI6Kf
NIU+yOmDnL7oi77og/wsg5y+6IOcPsjpi77oiz7I6YOcvuiDnD7I6Yu+6Is+yOmDnD7I6YOc
vuiLvuiDnD7IBwzkb1U+irdWLaAPZPogpw9y+qIv+qIP8pEG8jc9jdh+Rwy23x6NN5tr6EOZ
Psjpg5y+6Iu+6IN8OIP8rVX34e2yPGx8YxXe7GjHlkdS8NGjyTi45Eq8U2TDm50d2LjhBbz9
XD7efnbOgAPPU5WDxHg7SlyDA1ShfpNdJbkKfZDTBzl90Rd90Qf5CAf52ytmYkd2NHbN/C9s
v2UUduT8//B1yz34pm0eds78T2Hdzhk/xs47Y7D5yQz6IKcPcvogpy/6oi/6IB9OIN9U/YwA
8e/a83HaNQunanLwbUMmvq29AV/W3onTDTPxbfs8fHDvL4Sxc/ogpw9y+iCnL/qiL/ogH0Yg
f7Pdg21Z/xunnbfhm1euwjcvX4kfPmkVxD9/s/YKfO26E9uz/h+86a7VAbINeQVZsJnjA3OF
84QnGVYx4UmsCdaMIlR5VEDuKkNeShJMfN94M2w5JXDIspI5ijJgTTSJ+chZXUkpeSiTQ9pV
ill2s7A9PjEFs5SSs9AHOX2Q0xd90Rd9kJ8LIOdg3vrQBOZaPw+n1k7G1y9a8dUzFwK97wji
n79efTG+dNyAXcy1/s7CP2Jj0wZ1kDN4mtOKA8DLU5CWpJiE9QK8OdTtJiRK+cYDQe5k2+Jh
SpHqYFDPSYpHYk6FL8uZs7QUFU4pxamrAgWsrnh7MZzSsYpsgeVnWWMRFUsf5PRBTl/0RV/0
QX6Ogfyt8gJsv+1H+GhhAs6sTcXXL12Fr0ovwFdLfuIHOfv81dKfMsBfjjOv/A3dD/2alfn/
FIPeBCDHJqHAEZynvBg2kzVgvaeMWcnmDCH/dwDInUWwxichT7avqzQFJrVc4byuiixmcaeh
zKNePj6ePsjpg5y+6Iu+6IP8XAT59PPwUeEvcbpiAr567hJ825Tng7hX3zbdg69WjsPpF+04
8OBYbZArjHV7qmYxS32UkPc7NlYSd4tLrnd5OWHfoDo8FTkw8309Yp5xR8kspPBc4oKbntc1
ymdxq5enD3L6IKcv+qIv+iA/V13rD16Dd2//EU4suwRnFl+Abxty/RBnn08/cT5OPTMeO+/4
d7xTqONaVwpa41Yys8iLnAaC3fQscrbdxsbNM0ocPle7YJF7QU3fIqcPcvqiL/qiD3KSwW6Z
/xsnF/8Gpx/5T5wujsU3tTOZ7hI+f7nox/iy1ML2+V8Ggt2Uos+dKE4xIzGDjZH7AtocqKhw
KI+RszFu3zg7H+OWj5E7ChioE5FV5hKP6WTb2f6jfGPgjtDy9MfI6YOcvuiLvuiD/Fx//WxH
9o9w+smf4/ijP8fRYhMDeBxOPxyLY8UXsnU/E7a9d9d/aL5+FgjkIPEAtyybGLXOXOzxZivS
CqoEOIeUc/Go9UTJdW6GLUsete5BRUEK21+sx5SUhrzgqHSnVtR6F4R9hkD0QU4f5PRFX/RF
H+RDNiHMu7eOEtzr22/5f9nn/4OTj12AL54wYcft/4btfNv0/w87pv+fQZkQ5lwVfZDTBzl9
0Rd90Qf52ZmiddEk7Lk7Fv+a+594Z+EVgz5FK32Q0wc5fdEXfdEXfZAPdNKUnH/H9tv+jX7S
FPogpw9y+qIv+qIP8hGZxnRNsWCp0wcyfZDTBzl90Rd90Qf5CAQ5fdEHOX2Q0xd90Rd9kNMH
OX2Q0wc5/ZsTfdEXfdEH+WCA/KXtR+iLvgZF9EFOX/RFX/RBfhZA/kznJ7htSTv+XPAG/jDz
FVwz73WkFzehaP37eOGdvoB9Z6/ajPK3P6MPLfqiD3L6oi/6og/y4QDyB17bjT/OehV3lbbj
6Td24ZWOj/BK+34s2/AebnvSjStmr0Oh4z1h33ur3sUl2ZX0QU5f9EFOX/RFX/RBPhxAvtRz
AFfkvoqS9buwqmUfXvT8C7VbDqF1Vw+2/uso3u8+jtadh/HXBU78/cEG2Oe9hvF3VqF8c88A
A+AQHr7velzwf/8d//Z/L0XqK4cGBTKrXluAX/zkesztoA9c+iCnL/qiL/ogPwdAPn1pJ+5a
2o68lW/ij8ylfmlOJbPOX8GtjzfhJfcefPDJCez99CT+9dkXePyV7Xjrg15czsC/aqBB7i7D
JT+5FBmDBHD6IKcPcvqiL/qiD/JzEuSX567DVXc7hL825kK/u2ILVr55CMU1H+K6wlrc/mQz
3tnbh+6+L/Hp0dOCLmdu+NVbegYYsA8NCWDpg5w+yOmLvuiLPsjPKZAn51QJ4+NFr+7G1XnV
WNZ+MOCmfN8rOwQrfdM/e7Dxgz4cPPIlA/krDOS9KpBMQWZRHi751QX4t5/chAIvMN/ehBmZ
EyTXuRmWzDI89rZU7sXpiI8ejaio0fh/o9n2X83Ewrcjr09w0xdNx69/Fod/Y/X9+88uha1o
E1bJ2jj9kYdgtVwgbI9PnokZdYfoQ5g+yOmLvuiLPshHIMjvqEJB1bt4ftNnIe7yF7f14e8P
NGDJ+h04zCxx7mLnFjl3vVdsVQE5A+MFN7yIxW/Lt+3G3L+bhfUCbDmE/2LGL253CXBVs5Qj
rq9uKSzMTX/9i/sl6O/G4rr9IXWK4N+Ngszf4T//uBSL6UOYPsjpi77oiz7IRxrItca6b17c
KkSoT7r3dfz1/g2iFmwQ1qmC/P9egel1wePfL+KSn00IWL/qxZm4gFneD7+tA/JI6mPj7Zaf
/A7XPNKKZW8reQ2Cyr6Shwt+xqz9t+lDmD7I6Yu+6Is+yEcYyMffuZa5zqt84hZ68h1rkfaw
S3i3fOXGT0P0TNehsMafhfFv5jr/t+g4/Pv/lcRd6DJXuSrII6rvEBY/9ziu+dOl+E+2Lf6P
0zH9xf3ax/nZ9X63PX3RBzl9DZBOgP5f+gpH9EEeoWv90OdfMp3GJ2z8e5XrA0zIf13xPfEK
Ni6+svNTocwqhWA31UAybiEzC3qGO7wgtP7U59d+PHxfCv5Tstbpg5w+yOmLvuiLPsjPMYu8
Shj37vpnH97+sFewyvPXbA+4MfMIddvd1Sh+/UPkLOsSXOvBs71pR4Tvxuy//w6/yGTj0t5t
Hdvw8Cvb9MfII6nP3YoC9nmlFPi2+JHrGcjz6IOcPsjpi77oiz7Izz2Q/5651jnIeTT6J8wy
b9/5Kf5eWIO/FtXhycZ/CftwsF8z9zX89R/1uGzmK/jDzJfDf7WLB6TdniJGmTOX+H/+agKu
kSLJwwe5Tn11L+Ivf/wd/jNa3BafPB2Z9F3r9EFOX/RFX/RBfi6C3DrjZWHSl2dq3sfHPaeE
iV+27vscS17bhb/9o4ZZ7C+zfdbiD3e9LEwEk1LwBjIXt9IHFn3RBzl90Rd90Qf5cLHIMx9t
xF/u24DJC2tRu/kg3t5zBO4dh/HG2wfxgmc/HnPsxENV2/AUgzuH+RLPAfrAoi/6IKcv+qIv
+iAfDiDn4923Lxe/L1z/PmyzHchY5MKitdvwbP0HKGvciyeqd2H2ik5h4ph/rNtFH1b0RR/k
9EVf9EUf5MMF5DeXBLrJeRAbT106ZVEjrs5bj98zt7o9/3XmTvdgWXs3fVDRF32Q0xd90Rd9
kA+3NKb0RV/0QU5f9EVf9EE+wkBOX4Ov+to6n4LhRkn0b070RV/0RR/k9EFOH+T0QU5f9EVf
9EFOH+T0RR/k9EFOX/RFX/RBfi6CvHkJul6IMvaXPqDpg5w+yOmLvuiLPsiHD8ir1zsESH/9
2UZDfwcadp6qHCSa7Ch18c+zkGROET7TBzl9kNMXfdEXfZDTXwyA/LEnigVA92243NDfpzP+
l6ANq4sGHOSK2+LtKHHRBzl9kNMXfdEXfZDTB7kqyPv6+gRIu91u4a/L5VL8ywF+tHcjtq+/
R/hMH+T0QU4f5PRFX/RFH+TDAOR8OXLkiKp27dolgPtY3ybsrL4LLy26QR3knioUZVhhjo1G
dKwJ1owiVHlk212lmGU3IzY6GvGJKZhVkAGzz7UuA7erBPb4UYiKGoVRbN/o6HjYipz0QU4f
5PRFX/RFH+T0QS6XF+R79+7F1q1bQ9TQ0BAA8cpHRYg3vb5aKB8oJ0pSTDCnFYvw5lC3m5CY
VQaPtL3IFg9TSjEcfLurDLOssYiKVQB5F32LnD7I6Yu+6Is+yOkvwqIFGy/ItSxxwZ2+bgZe
eDhdA+JMzmLYTFYUOPzrPGXM4jZnoIKD21kEa3wS8mTbXaUpiI+nD3L6IKcv+qIv+qIP8n6B
fO/evYqW+Oefvolta+/EC5I7ne+vVhePOk+MHsXc4LGIjZXE3eLxKb6o9GAweypyYKYPcvog
py/6oi/6og/ygbPIefCbAPFDXXir4nafO/2ee+7RBLlgcTOLvMipsT0si3wWfZDTBzl90Rd9
0Qc5/SUci3zLli3Iz8/H3Tda0eF4AmuKp4ivnD39NB555BFtkLMx8OIUMxIz2Bi5F74uByoq
HNIYuUMYI+dj6EbGyLscBSL4qzz0QU4f5PRFX/RFH+T0QW7EIu/p6RHAnXK1GTNvSBY+r1q1
Crt378Zrr72mA3IpwC3LJkatMxd7vNmKtIIqCeTcKjcYtS49GJRmWWGSIuDtxfSj1umDnL7o
i77og5w+yFUtcm6N83VRUeI749OnT0dJSQk2b96MPXv2wOl0Cvvzm/NItJDpg5w+yOmLvuiL
PsjPaYucj4339vYK4pa59zv/y7d7QU4f0vRBTh/k9EVf9EUf5MMI5EePHhUgraYNGzb4PtMH
OX2Q0wc5fdEXfdEH+TAC+eqKcgHORsX3pw9p+iCnD3L6oi/6og/yYQJy+qIPcvogpy/6oi/6
IKcPcvqiD3L6IKcv+qIv+iCnD3L6IKcPcvqiL/qiD3L6IKcPcvogpw9y+qIv+qIPcvogpy/6
IKcPcvqiL/qiD3L6ID/HxeeDTzKLSWH0QN5SmY3E+Al4skEZeHrb6YOcvuiLvuiDnD7Iz1GY
Ds8safRBTh/kqjp+gv5f+qIvBdEHOX2Q0wc5fZDTF33RF32Q0wd5/4BqQ15BFmzmeF8ecl8y
lQyrmEwl1gRrRhGqPN6yHlQUpCHJFIvo6GjEmhKRIk+0olXWVQJ7/ChERY3CKJ77PDoetqLQ
5CrOIhtMSXlwyNcL2dWsKJDSqjqKMmBNNIk51NlxklLyUObS7lvwQ4S8jvP+46ew2GfgqVfl
ILdiZt5UWIW+sr5MLca6FhWQt1SiaKqs31OLUNniBWQLVhdMDjpnlWihD3L6oi/6og9y+iDv
F8gZVHxpSmXpTUtSTMJ6AcAczHYTErPKRFgLQE1ETplLArcTDofLWFmjFrmTAZ/BbpYsJWpV
XhJMtmI4vbAvLUWFU9ruqkABO068Xdyu1rfgY8vrqH91Ge6+8qcYc+UCbPCCOnoUzJMleDes
RHZSPBKzVwsADgT5BjzJ+832FeDNoT6B9TtzpQjrdeI5y17ZIEF/A9ata6BvkdMXfdEXfZDT
B3k/QR6b5LNw/RAths1kDVjvKcuA2ZyBCg5FZxGDkhlpRRVwesIsa9i17kJpGn8AqBAfADwV
yGGWc0qJS70/FVkwm9JQ5lHvm9axuUt9Q+lU/PynKVjZIoGa1ZG3zg+5hqUpMJkzsbolCOQb
pH7L9m1ZOZX1e6qwb+cG8ZxNLlqNDS30Xev0RV/0RR/k9EE+iGPVPLKbW6I8P3lsrCTuvva5
3j1wlOYhzZaIeLbNZE1DgWSd65c1PkbufQAQwFzGIG1Ok0WbszaUzEKK1czawF3Z/DjMZR+r
litd6diBdZz3H/+B/ziP1fEfV2Jpg/IYeMvqbJhZX5YGgbylcqZqv5c2iK71dUvzMNl3ziaj
YCV9i5y+6Iu+6IOcPsgHI+iMW9zMuixyGqnHhYo8G+Ll1rpOWQH2RoLdmBWexazwtFIHs87N
MMvc8/w4NmbhZpQ4/C57bpHHhwHyoDp8FvkYGcgNW+RSvzcYgWUDVgvnTLLW6YOcvuiLvuiD
nD7IBzZ63IniFDMSM9g4t3eby4GKCgmazgqUss8ur2VcZGdQypJc5zplfWPsDJCy8W9leVA1
i42LJ9mRxMbLcyo8QYFvicjyegKcZZhli8eocCzyoDo2VC7G7X8Yg1Fyi5yPs8vGyGfyMfJM
5TFyod9T2Ri514JvWIfVq9eJY+QbVmMp+9wgBb6tK5rAzlkmfZDTF33RF32Q0wf5IL0GxoPU
smxiBDZzF8ebrUjzRqY7ipHB3dHR4jZTUhryylzGykoPCqVZVpik6G57sVO9nY48JEVHITo4
gl2InE9h7Ze1oYC54k3hudbldfyPJQV3zZnMxsjlrvXAqPUkWSS6YtR6ZmC/J3sj09cVY2rA
OZuMPPqudfqiL/qiD3L6IKcv+lO00gc5fdEXfdEHOX2Q0xd9kNMHOX3RF33RBzl9kNMHOX2Q
0xd90Rd9kNNfsHPnTvpgpQ/ys6Jt72yjf3OiL/qiL/og7+/y/vvv0wcrfZCfFb377rv0b070
RV/0RR/k/V32799PH6z0QX5W9ME/P6B/c6Iv+qIv+iDv73L06FH6YKUP8rOiTw5+Qv/mRF/0
RV/0QT4Qy969e+nDlT7Ih1R8SIf+jYm+6Iu+whHnN9eAghzniM6cOUN/rJw+yId0bLyvt0/4
h0lf9EVf9GVUnN9c9EGuAXP6ljl9kA+FJU4f4vRFX/RFH+SDuPAxcx4Ax2+49F9Now/ygXjF
jFvgPLCN/pg4fdEXfdEHOf3lnFlspot8ov8PlL7oi77oiz7I6S/0QU5f9EVf9EUf5PQX+gt9
kNMXfdEXfdEHOf2F/kIf5PRFX/RFX/RBTn+hD3L6oi/6oi/6og9y+gt9kNMXfdEXfdEHOf2F
/kIf5PRFX/RFX/RBTn+hv9AHOX3RF33RF32Q01/og5y+6Iu+6Is+yOkv9Bf6IKcv+qIv+qIP
cvoL/YU+yOmLvuiLvuiDnP5CH+T0RV/0RV/0RR/k9Bf6IKcv+qIv+qIPcvoL/YU+yIehTh6n
/5e+6Iuy6IOc/jKsFvogpy/6oi/6og9y+gt9kNMXfdEXfdEHOf2F/kIf5PRFX/RFX/RBTn+h
v9AHOX3RF33RF32Q01/og5y+6Iu+6Iu+6IOc/kIf5PRFX/RFX+cyyNdXrA1bGyrX0RdBbXS3
6yqS3xN9kNMXfdEXffUT5PlZdxlWZsoU4aZeeEcefRHS7ZNvNAzycH9P9EFOX/RFX/RFH+T0
NQxBPmdaNn2Q0xd90Rd9nW2Q35g6BZnp0+iDnD7IwwZ5dtZtwm9nRnoWfZDTF33RF30NNcg5
wO/OnYOioiLhhkwf5PRBHgnI+e+HSw3o9EFOX/RFX/Q1wCCXA9wr+iCnr/6CXA3o9EFOX/RF
X/Q1QCDnN9dggNMHOX0NNMi5+O/MC3P6IKcv+qIv+hpAi5zfXLnFRB/k9DUYIOcA5x4f+q51
+qIv+qKvQR4jDwY6fZDTV39ArgRw+iCnL/qiL/oagqh1L9Dpg5y+IgE5/+2oAZw+yOmLvuhr
pGg4Kuz3yOXvA9MHOX2Q058Qhr7oi77oa4SBnP6EMPRFH+T0RV/0RV/DGOT8ZhqOOMj5jZ2+
aMkoyMP9PdEHOX3RF33RVz9ATv+E0NfZFn2Q0xd90Rd90Qc5fdEHOX3RF33RF32Q0xd90Qc5
fdEXfdEXfZDTF33RBzl90Rd90Rd9kNMXfZDTF33RF33RF32Q0xd9kNMXfdEXfdEHOX3RF32Q
0xd90Rd90Qf5CNKRI59h2Rv34lDPxxHXseCFqdi1723655M+yOmLvuiLvuiDfOh0HF076jD7
2QmY/MjPcODTPRHXNbEwFrcv+wNWNSzCsaOf0z+39EFOX/RFX/RFH+SDqWPHPsfLLUuQ9fTF
KHPPx8rme/sF8ruetaHm3TLkrZooWOefHP6I/nmmD3L6oi/6oi/6IB8sPf7qDOSs+APWbXkS
7XtfxXPN9/cL5DNXXoXNH9eh8f0KFL92C2Ysu0pw2dM/1/RBTl/0RV/0RR/kA6jevk9x76rJ
+Mfa6/HGjqV4cfM/sGZzIZ5ruQ+Xz/8/+MPc/8cn+4JYxTqufSA+YD+uOeXXoGn3arz41v2o
2bkcz3vux5yVEwXXPXfh0z/39EFOX/RFX/RFH+T9DGhb01wiWOGL6+7A82/OxRPuG/FIYzqe
6ZyJN3YuwYadSwXxz80fvIA72L5KdXFwt+6pwvp3F7OHgSVw7lyGml3L8fI7D+Pp9luwtOM2
rHp7Lp7vmI95L16LxetnY1/3+/R/kPRBTl/0RV/0RR/kkeiz3oNYXD0HM1ZejhWe2VjeMQP/
qJ2Iwvo/48GGFDzoug5F9ddiQa0dC2omsG1/xstbFyF7+e9VQc5BX1R3rVCO/33IlYpH3Gl4
oi0dT3RMweMdk7Hy7RlY9dZ8LHhlMh6ovAnv/WszfZCbLvKJf++HcJL+X/qiL/oiIPogZ3qo
6hYhqO2lTQuxuCUTs6p/h7s3JCGvNgn31F6MWRsSke34OW5cMwYZL/wXbn7pv7GiYyZuLU1S
rI+DfMPOUtzxylhMX/sLZFX+D3Icv8Scmt/h3qZkLPD8Af9ovQz3tzDrvysdL2wpQEFVKuat
SiX/g+QA94r+P1D6oi/6oi/6IDekjh01mPt8Ch6oTsdjTTdgfv3vcfuGeNzyxn/g5jeiceNr
P8LUdf+G618ajb+tGoXU50bhkaZ03LwkURXkazYvFPbz6vo1o5Hh+DfcvOE83Fofgzua4lDQ
Og6Pdf4VxfXpyH8hBdXtK+iDnD7I6Yu+6Iu+6IM8EvHJWuaV/xVzK+14vCUD8zy/xR3N/4Xp
Tf+Ou5p/gns9zEJvGIfZb1gw0/E7LGmdrgvyu9b9TtBMZuHfU3cRchvMuKU+GjktP8bczl/i
iTf/joUbUjF31SQ0bXkFx48dpQ9y+iCnL/qiL/qiD/JIxd8db3irEnmr/oKFNZOwdMdkLNxm
wUPv/B7PbLoTtz1jQWbpbwWAc1330E8U6+HR7N59vLp/fQpKt96I3Nb/wRPbJqKk63rc88IE
rG5cRP+dcvogpy/6oi/6og/ygdNxHO7txj/WpGPuuitQuj0d5R/ciifcGWjZVi28S+5V9+F9
inXw9fL9uPhDwAu75mDxlr/jAdck3L36T9i57y0cPXqE/jmnD3L6oi/6oi/6IB9o8dfBnlx/
F3Jf+gOe7rgZxQ3p/ZoQJnNZIp7bnIv8V6/G/Beuk94fp3+e6YOcvuiLvuiLPsgHTdzlvdr1
MOas+hNzqSf2C+QpD4/B7NU2PLouGzv3bMIJ+pPA0Ac5fdEXfdEXfZAPvrjre+e+Tbi/YgoD
+/6I65mx7ErUbnoBvUcO0z+v9EFOX/RFX/RFH+T0RR/k9EVf9EVf9EUf5PRFH+T0RV/0RV/0
QU5f9EUf5PRFX/RFX/RBTl/0RR/k9EVf9EVf9EFOX/RBTl/0RV/0RR/k9EVf9EFOX/RFX/RF
H+T0RV/0QU5f9EVf9EUf5PRFH+T0RV/0NZxFX2dRnN9zUjMRNfkiu4/q9EVf9EVf9EVf9DUy
lGm9Fs3VNYgaP/EfuO6Sv9E/KfRFX/RFX/RFXyNE3BLnEP/qq68Q9csbXoDl70tgu3oOrh0/
BfQtdPqiL/qiL/qir+FpgRdk3ImXnlqJPbv+KUCc6/8PxfcRuBMZFUgAAAAASUVORK5CYII=')); add: ('/home/marian/Escritorio/smalltalk-logo.png'->(EruditeForm fromBase64String:'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
AAAAAElFTkSuQmCC')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 23:27:26'!
initialize
    super initialize.
    title _ 'Erudite Manual'.
        self addSection: self Introduction.
        self addSection: self BookReaderAndEditor.
        self addSection: self SyntaxReference.
        self addSection: self LiterateProgramming.
        self addSection: self SyntaxTest.
        self addSection: self Implementation.
        self addSection: self Extensions.
        self addSection: self Extras.
! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 13:52'!
contents: aString

	self document: (self documentClass contents: aString asString)! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:27'!
documentClass
	^ EruditeDocument.! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 13:54'!
findSectionNamed: aString ifAbsent: aBlock

	subsections do: [:aSection |
		aSection title = aString ifTrue: [^ aSection]].
	
	subsections do: [:aSection |
		aSection findSectionNamed: aString ifAbsent: [^ aBlock value]].
	
	^ aBlock value! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/19/2018 17:39:26'!
latestAndDeepestSection

	^ subsections 
		ifEmpty: [self]
		ifNotEmpty: [subsections last latestAndDeepestSection]! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/18/2018 19:30:59'!
nextSection

	^ subsections 
		ifNotEmpty: [subsections first]
		ifEmpty: [parent sections after: self ifNone: [parent parent ifNotNil: [:parentParent | parentParent sections after: parent]]]! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/19/2018 17:42:13'!
previousSection
	|beforeMe| 
	
	beforeMe _ self parent sections
					before: self
					ifNone: [nil].
		
	^ beforeMe 
		ifNil: [
			(parent isKindOf: EruditeBookSection) ifTrue: [ parent ]]
		ifNotNil: [
			beforeMe latestAndDeepestSection]! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 18:04'!
removeSection: aSection

	subsections remove: aSection! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 17:48'!
sections

	^ subsections! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 20:12'!
updateParents

	subsections do: [:subsection |
		subsection parent: self.
		subsection updateParents]! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 12/4/2018 17:59'!
addSection: aBookSection

	subsections add: aBookSection.
	aBookSection parent: self! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 12/10/2018 21:28'!
addSection: aString contents: anotherString
	self addSection:
		(EruditeBookSection
			title: aString
			contents: anotherString).! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 12/10/2018 21:28'!
addSection: aString document: aDocument
	self addSection:
		(EruditeBookSection
			title: aString
			document: aDocument).! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:27'!
document
	"Answer the value of document"

	^ document! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:27'!
document: anObject
	"Set the value of document"

	document _ anObject! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:27'!
parent
	"Answer the value of parent"

	^ parent! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:27'!
parent: anObject
	"Set the value of parent"

	parent _ anObject! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:27'!
subsections
	"Answer the value of subsections"

	^ subsections! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 7/21/2020 23:18:51'!
subsections: anObject
	"Set the value of subsections"

	subsections _ anObject.
	subsections do: [:ss | ss parent: self]! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:27'!
title
	"Answer the value of title"

	^ title! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:27'!
title: anObject
	"Set the value of title"

	title _ anObject! !

!EruditeBookSection methodsFor: 'initialization' stamp: 'MM 11/30/2018 13:38'!
initialize

	subsections _ OrderedCollection new.! !

!EruditeBookSection class methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 13:27'!
title: aString contents: anotherString

	^ self new 
		title: aString;
		contents: anotherString;
		yourself! !

!EruditeBookSection class methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 13:28'!
title: aString document: aDocument

	^ self new 
		title: aString;
		document: aDocument;
		yourself! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/18/2018 12:15:23'!
addImageFromPath: aString

	|form|
	
	form _ EruditeForm fromFileNamed: aString.
	
	self imageAt: aString put: form.
	
	^ form! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:00:39'!
imageAt: aKey

	^ self imageAt: aKey ifAbsent: [nil]! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:00:47'!
imageAt: aKey ifAbsent: aBlock

	^ images at: aKey ifAbsent: aBlock! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:00:54'!
imageAt: aKey put: anEruditeForm

	images at: aKey put: anEruditeForm! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:14:31'!
images

	^ images! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:14:42'!
images: aDictionary

	images _ aDictionary! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:00:08'!
initialize

	images _ Dictionary new! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:02:02'!
removeImage: aKey

	images removeKey: aKey! !

!EruditeDocument methodsFor: 'accessing' stamp: 'MM 11/29/2018 19:25'!
contents
	"Answer the value of contents"

	^ contents! !

!EruditeDocument methodsFor: 'accessing' stamp: 'MM 12/10/2018 21:38'!
contents: anObject
	"Set the value of contents"

	contents _ anObject! !

!EruditeDocument class methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 23:33'!
contents: aCollection
	
	^ self new contents: aCollection; yourself! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 14:56:41'!
editBook
	EruditeBook withBookSelectionDo: [ :book |
		book edit ].! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 15:20:02'!
eruditeWorldMenu
	"Build the Erudite menu for the world."

	^ (self menu: 'Erudite...')
		addItemsFromDictionaries: `{
			{
				#label 			-> 		'New...'.
				#selector 		-> 		#newBook.
				#icon 			-> 		#newIcon.
				#balloonText 	-> 		'Create a new book.'
			} asDictionary.
			{
				#label 			-> 		'Read...'.
				#selector 		-> 		#readBook.
				#icon 			-> 		#openIcon.
				#balloonText 	-> 		'Read a book.'
			} asDictionary.
			{
				#label 			-> 		'Edit...'.
				#selector 		-> 		#editBook.
				#icon 			-> 		#textEditorIcon.
				#balloonText 	-> 		'Edit a book.'
			} asDictionary.
		}`! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 7/21/2020 22:45:40'!
initialize

	Preferences addPreference: #eruditeBrowserClassComments 
					category: 'erudite'  
					default: true  
					balloonHelp: 'Enabled/disable Erudite markup in browser class comments'.
					
	Preferences setPreference:  #tapAndHoldEmulatesButton2 toValue: false.
					 
	EruditeManual open! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 14:58:27'!
menu: titleString
	"Create a menu with the given title, ready for filling"

	| menu |
	(menu _ MenuMorph entitled: titleString) 
		defaultTarget: self; 
		addStayUpIcons.
	^ menu! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 14:59:45'!
newBook
	| book title |
	title _ FillInTheBlankMorph request: 'Book title:'.
	title ifNotEmpty: [
		book _ EruditeBook titled: title.
		book edit ].! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 15:17:52'!
openEruditeMenu
	"Build and show the preferences menu for the world."

	self eruditeWorldMenu popUpInWorld: self runningWorld! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 14:59:53'!
readBook
	EruditeBook withBookSelectionDo: [ :book |
		book open ].! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 15:15:17'!
worldMenuOptions

	^`{{
		#itemGroup 		-> 		10.
		#itemOrder 		-> 		50.
		#label 			-> 		'Erudite...'.
		#object             ->             EruditeSystem.
		#selector 		-> 		#openEruditeMenu.
		#icon 			-> 		#addressBookIcon.
		#balloonText 	-> 		'Submenu to manage Erudite books'.
	} asDictionary.
	}`! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/20/2019 10:38:17'!
escapeLatex: aString
	
	|escapedString|
	
	escapedString _ aString copyReplaceAll: '\' with: '\textbackslash'.
	escapedString _ escapedString copyReplaceAll: '&' with: '\&'.
	escapedString _ escapedString copyReplaceAll: '%' with: '\%'.
	escapedString _ escapedString copyReplaceAll: '#' with: '\#'.
	escapedString _ escapedString copyReplaceAll: '$' with: '\$'.
	escapedString _ escapedString copyReplaceAll: '_' with: '\_'.
	escapedString _ escapedString copyReplaceAll: '{' with: '\{'.
	escapedString _ escapedString copyReplaceAll: '}' with: '\}'.
	escapedString _ escapedString copyReplaceAll: '~' with: '\textasciitilde'.
	escapedString _ escapedString copyReplaceAll: '^' with: '\textasciicircum'.
	escapedString _ escapedString copyReplaceAll: '
' with: '\leavevmode\\
'.
	^ escapedString
	! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:06:48'!
initialize: aBook

	book _ aBook.
	stream _ WriteStream on: String new.
	documentClass _ #book.
	highlightSyntax _ true! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 16:21:07'!
linkRendererFor: aLinkType

	|handlerClassName|
	
	handlerClassName _ aLinkType asString capitalized, 'DocLinkRenderer'.
	^ Smalltalk at: handlerClassName asSymbol ifAbsent: ["self error: 'No link renderer for: ', aLinkType asString" nil]! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:02:33'!
render

	self renderWithTemplate: [
		book sections do: [:aBookSection | 
			self renderSection: aBookSection]].
	
	texFilePath fileContents: stream contents! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 17:02:11'!
renderArticle

	documentClass _ #article.
	self render! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 17:01:59'!
renderBook

	documentClass _ #book.
	self render! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:47:36'!
renderCode: aDocCode

	highlightSyntax 
		ifTrue: [stream nextPutAll: '\begin{minted}[fontsize=\footnotesize]{smalltalk}'; newLine]
		ifFalse: [stream nextPutAll: '\begin{code}';newLine].
		
	stream nextPutAll: aDocCode code.
		
	highlightSyntax
		ifTrue: [stream newLine;nextPutAll: '\end{minted}'; newLine]
		ifFalse: [stream newLine;nextPutAll: '\end{code}'; newLine].
	
	"Besides rendering the code, try to evaluate it, since there may be variable assignments."
	"[requestor 
		ifNil: [Compiler evaluate: aDocCode code for: self logged: false]
		ifNotNil: [Compiler evaluate: aDocCode code notifying: requestor logged: false]]
	on: Error do: [:error | error]"! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 16:21:07'!
renderCodeDoIt: aDocCode

	|text button textModel |
	
	text _ Text string: aDocCode code.							.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
		
	stream nextPut: textModel actualContents.
	stream nextPut: ' '.
	
	button _ Text string: '[doIt]' attributes: 
					{TextEmphasis underlined. 
						BlockTextAction do: [:anObject | Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false]}.
	stream nextPut: button.
	
	"button _ PluggableButtonMorph model: nil action: #doIt label: 'DoIt'.
 	button morphExtent: 40@15.
	stream nextPut: (Text withForm: button)."! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 16:21:07'!
renderCodeDoItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false]})! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 16:21:07'!
renderCodeEmbedIt: aDocCode

	| evalString result |
	
	evalString _ aDocCode code.
	
	requestor 
		ifNil: [
			result _ [Compiler evaluate: evalString for: self logged: false]
				on: Error do: [:error | error]]
		ifNotNil: [
			result _ [Compiler evaluate: evalString notifying: requestor logged: false]
				on: Error do: [:error | error]].
	
	stream nextPut: (Text streamContents: [:s | result printOn: s])! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 16:21:07'!
renderCodeExploreIt: aDocCode

	|text button evalString textModel |
	
	evalString _ aDocCode code.
	
	text _ Text string: aDocCode code.							.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
		
	stream nextPut: textModel actualContents.
	stream nextPut: ' '.
	
	button _ Text string: '[exploreIt]' 
		attributes: {TextEmphasis underlined. 
					BlockTextAction do: [:anObject | (Compiler evaluate: evalString notifying: anObject textProvider logged: false) explore]}.
	stream nextPut: button.! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 16:21:07'!
renderCodeExploreItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | (Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false) explore]})! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 16:21:07'!
renderCodeInspectIt: aDocCode

	|text button evalString textModel |
	
	evalString _ aDocCode code.
	
	text _ Text string: aDocCode code.							.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
		
	stream nextPut: textModel actualContents.
	stream nextPut: ' '.
	
	button _ Text string: '[inspectIt]' 
		attributes: {TextEmphasis underlined. 
					BlockTextAction do: [:anObject | (Compiler evaluate: evalString notifying: anObject textProvider logged: false) inspect]}.
	stream nextPut: button.! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 16:21:07'!
renderCodeInspectItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | (Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false) inspect]})! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 16:21:07'!
renderCodePrintIt: aDocCode

	|text button evalString textModel |
	
	evalString _ aDocCode code.
	
	text _ Text string: aDocCode code.							.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
		
	stream nextPut: textModel actualContents.
	stream nextPut: ' '.
	
	button _ Text string: '[printIt]' 
		attributes: {TextEmphasis underlined. 
					BlockTextAction do: [:anObject | Transcript show: (Compiler evaluate: evalString notifying: anObject textProvider logged: false) printString]}.
	stream nextPut: button.! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 16:21:07'!
renderCodePrintItHere: aDocCode

	|text evalString result textModel |
	
	evalString _ aDocCode code.
	
	text _ Text string: aDocCode code.							.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
		
	stream nextPut: textModel actualContents.
	stream nextPut: ' '.
	
	requestor ifNil: [
		result _ [Compiler evaluate: evalString for: self logged: false]
			on: Error do: [:error | error]]
		ifNotNil: [
			result _ [Compiler evaluate: evalString notifying: requestor logged: false]
				on: Error do: [:error | error]].
	
	stream nextPut: '==> ';
			nextPut: (Text streamContents: [:s | result printOn: s]).! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 22:32:36'!
renderDocument: aDocument
	
	|doc|
	
	doc _ EruditeMarkupParser parse: aDocument contents.
	
	doc contents do: [:node |
		node isString ifTrue: [
			stream nextPutAll: (self escapeLatex: node)]
		ifFalse: [
			node accept: self]]! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 17:00:55'!
renderSection: aBookSection

	documentClass caseOf: {
		[#book] -> [stream nextPutAll: '\chapter{'].
		[#article] -> [stream nextPutAll: '\section{'].
	}.
	stream nextPutAll: aBookSection title;
			nextPutAll: '}'; newLine.
			
	self renderDocument: aBookSection document.
	
	aBookSection sections do: [:section |
		self renderSubsection: section]! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 17:01:18'!
renderSubsection: aBookSection

	documentClass caseOf: {
		[#book] -> [stream nextPutAll: '\section{'].
		[#article] -> [stream nextPutAll: '\subsection{'].
	}.
	stream nextPutAll: aBookSection title;
			nextPutAll: '}'; newLine.
			
	self renderDocument: aBookSection document.
	
	aBookSection sections do: [:section |
		self renderSubsubsection: section]! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 17:00:26'!
renderSubsubsection: aBookSection

	documentClass caseOf: {
		[#book] -> [stream nextPutAll: '\subsection{'].
		[#article] -> [stream nextPutAll: '\subsubsection{'].
	}.
	stream nextPutAll: aBookSection title;
			nextPutAll: '}'; newLine.
			
	self renderDocument: aBookSection document.
	
	! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 3/5/2021 13:19:14'!
renderWithTemplate: aBlock

	stream nextPutAll: '\documentclass[11pt,pdflatex,makeidx]{scrbook}   % Book class in 11 points'; newLine;
			nextPutAll: '\usepackage[margin=0.5in]{geometry}'; newLine;
			nextPutAll: '\usepackage{color}'; newLine;
			nextPutAll: '\usepackage{makeidx}'; newLine;
			nextPutAll: '\usepackage{hyperref}'; newLine.
		
	highlightSyntax 
		ifTrue: [ stream nextPutAll: '\usepackage{minted}'; newLine]
		ifFalse: [ stream nextPutAll: '\usepackage{listings}'; newLine].
	
	stream nextPutAll: '\usepackage{hyperref}'; newLine;
			nextPutAll: '\usepackage{courier}'; newLine;
			nextPutAll: '\hypersetup{colorlinks=true,linkcolor=blue}';newLine.
			
	highlightSyntax ifFalse: [
		stream nextPutAll: '\lstloadlanguages{Lisp}'; newLine;
				nextPutAll: '\lstset{frame=none,language=Lisp,basicstyle=\ttfamily\small,
keywordstyle=\color{black}\bfseries,stringstyle=\ttfamily,showstringspaces=false,breaklines}'; newLine;
				nextPutAll: '\lstnewenvironment{code}{}{}']
	ifTrue: [stream nextPutAll: '\definecolor{bg}{rgb}{0.95,0.95,0.95}'; newLine].
	
	stream nextPutAll: '\parindent0pt  \parskip10pt             % make block paragraphs'; newLine;
			 nextPutAll: '\raggedright                            % do not right justify'; newLine;
			nextPutAll: '% Note that book class by default is formatted to be printed back-to-back.'; newLine;
			nextPutAll: '\makeindex'; newLine;
			nextPutAll: '\begin{document}                        % End of preamble, start of text.'; newLine;
			nextPutAll: '\title{\textbf '; nextPutAll: book title; nextPutAll: '}'; newLine;
			nextPutAll: '\date{\today}                           %   Use current date.'; newLine;
			nextPutAll: '\frontmatter                            % only in book class (roman page #s)'; newLine;
			nextPutAll: '\maketitle                              % Print title page.'; newLine;
			nextPutAll: '\tableofcontents                        % Print table of contents'; newLine;
			nextPutAll: '\mainmatter                             % only in book class (arabic page #s)'; newLine;
			nextPutAll: '\long\def\ignore#1{}'; newLine.
			aBlock value.
	stream "nextPutAll: '\chapter{Index}'; newLine;"  "No index for now..."
			"nextPutAll: '\printindex'; newLine;"
			nextPutAll: '\end{document}'! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 18:45:27'!
visitActionLink: aDocLink

	stream nextPutAll: '\underline{';
			nextPutAll: aDocLink title;
			nextPutAll: '}'! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 17:10:24'!
visitCode: aDocCode

	self renderCode: aDocCode

	"aDocCode action ifNil: [
		^ self renderCode: aDocCode].
						
	(aDocCode action at: #action) caseOf: {
		[#doIt] -> [self renderCodeDoIt: aDocCode].
		[#exploreIt] -> [self renderCodeExploreIt: aDocCode].
		[#inspectIt] -> [self renderCodeInspectIt: aDocCode].
		[#printIt] -> [self renderCodePrintIt: aDocCode].
		[#printItHere] -> [self renderCodePrintItHere: aDocCode].
		[#embedIt] -> [self renderCodeEmbedIt: aDocCode].
		[#doItWithButton] -> [self renderCodeDoItWithButton: aDocCode].
		[#exploreItWithButton] -> [self renderCodeExploreItWithButton: aDocCode].
		[#inspectItWithButton] -> [self renderCodeInspectItWithButton: aDocCode].
		[#printItWithButton] -> [self renderCodePrintItWithButton: aDocCode]
	}."! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:40:58'!
visitHeading: aEruditeHeading

	aEruditeHeading level caseOf: {
		[1] -> [stream nextPutAll: '\section*{'].
		[2] -> [stream nextPutAll: '\subsection*{'].
		[3] -> [stream nextPutAll: '\subsubsection*{'].
		[4] -> [stream nextPutAll: '\textbf{']
	}.
	stream nextPutAll: aEruditeHeading heading; nextPutAll: '}'; newLine; newLine! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:32:41'!
visitLink: aDocLink
	
	"(self linkRendererFor: aDocLink type) ifNotNil: [:aLinkRenderer |
		aLinkRenderer render: aDocLink in: document on: stream]"
	
	aDocLink label 
		ifNotNil: [
			stream nextPutAll: '\href{'; nextPutAll: aDocLink target;
					nextPutAll: '}{'; nextPutAll: aDocLink label; nextPutAll:'}']
		ifNil: [
			stream nextPutAll: '\url{';
				nextPutAll: aDocLink target;
				nextPutAll: '}']! !

!LatexEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 18:50:37'!
visitStyledText: aStyledText

	aStyledText style caseOf: {
		[#bold] -> [stream nextPutAll: '\textbf{';
							    nextPutAll: aStyledText text;
								nextPutAll: '}'].
		[#italic] -> [stream nextPutAll: '\textit{';
							    nextPutAll: aStyledText text;
								nextPutAll: '}'].
		[#unformatted] -> [stream nextPutAll: '\begin{verbatim}'; newLine;
										nextPutAll: aStyledText text; newLine;
										nextPutAll: '\end{verbatim}'; newLine].
	}! !

!LatexEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 1/19/2019 19:03:51'!
book: aBook

	book _ aBook! !

!LatexEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 1/19/2019 16:21:07'!
requestor

	^ requestor! !

!LatexEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 1/19/2019 16:21:07'!
requestor: anObject

	requestor _ anObject! !

!LatexEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 1/19/2019 18:52:04'!
texFilePath

	^ texFilePath! !

!LatexEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 1/19/2019 18:51:49'!
texFilePath: aFilePath

	texFilePath _ aFilePath! !

!LatexEruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:05:45'!
on: aBook

	^ self new initialize: aBook! !

!LatexEruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:05:57'!
render: aBook
	
	^ (self on: aBook) render! !

!LatexEruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:06:11'!
render: aBook notifying: anObject
	
	^ (self on: aBook)
		requestor: anObject; 
		render! !

!DocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 22:58:57'!
render: aLink in: aDocument on: aStream

	^ self subclassResponsibility! !

!ClassDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 15:22'!
browse: aClass selector: aSymbol

	| browser |
	browser _ Browser new.
	browser
		setClass: aClass
		selector: aSymbol.
				
	BrowserWindow
			open: browser
			label: 'System Browser' ! !

!ClassDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 16:26:20'!
embed: aDocLink on: aStream

	|text class textModel |
	
	class _ Smalltalk at: aDocLink target asSymbol ifAbsent: [^nil].
	
	text _ Text string: class definition.
	
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
							
	aStream nextPut: textModel actualContents.
	aStream nextPut: Character newLineCharacter asString.
	
	aStream nextPut: 
		(Text string: '[browse]' 
				attributes: {BlockTextAction do: [:x | 
							self browse: class
								selector: nil]. 
							TextEmphasis underlined})! !

!ClassDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:06:24'!
render: aDocLink in: aDocument on: aStream

	aDocLink optionAt: #embed ifPresent: [:val |
		val ifTrue: [
			^ self embed: aDocLink on: aStream]].
	
	self renderLink: aDocLink on: aStream! !

!ClassDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/18/2018 15:06:13'!
renderLink: aDocLink on: aStream

	aStream nextPut: (Text string: aDocLink labelOrTarget 
				attribute: (BlockTextAction do: [:x | |class className|
						className _ aDocLink target withBlanksTrimmed asSymbol.
						class _ Smalltalk 
									at: className
									ifAbsent: [self error: 'Class not found: ', className asString].
						self browse: class selector: nil]))! !

!ImageDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 7/2/2020 16:56:53'!
render: aDocLink in: aDocument on: aStream

	|filePath form imageMorph |
	
	filePath _ aDocLink target withBlanksTrimmed.
	form _ aDocument imageAt: filePath ifAbsent: [
				[aDocument addImageFromPath: filePath] 
					on: Error
					do: [:e | ^aStream nextPut: e printString]].
	
	imageMorph _ ImageMorph new
						image: form.
							
	aStream nextPut: (Text streamContents: [:s | imageMorph printOn: s])
	! !

!MessageDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:06:35'!
render: aDocLink in: aDocument on: aStream

	|action selector renderLink |
	
	selector _ aDocLink target withBlanksTrimmed asSymbol.
	renderLink _ [:anAction | 
		aStream nextPut: (Text string: selector printString
				attributes: {BlockTextAction do: anAction})].
	
	aDocLink optionAt: #senders ifPresent: [:val |
		action _ [:anObject | Smalltalk browseAllCallsOn: selector].
		^ renderLink value: action].
	
	aDocLink optionAt: #implementors ifPresent: [:val |
		action _ [:anObject | Smalltalk browseAllImplementorsOf: selector].
		^ renderLink value: action].
	
	action _ [:anObject | Smalltalk browseAllImplementorsOf: selector].
	renderLink value: action! !

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 15:52'!
browse: aClass selector: aSymbol

	| browser |
	browser _ Browser new.
	browser
		setClass: aClass
		selector: aSymbol.
				
	BrowserWindow
			open: browser
			label: 'System Browser' ! !

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 1/23/2019 12:21:03'!
embed: aDocLink on: aStream

	|text methodReference textModel |
	
	methodReference _ self methodReferenceFor: aDocLink.
	
	methodReference ifNil: [^nil].
	
	text _ Text string: ([methodReference sourceCode] on: Error do: [:e | 'Method not found']).
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel classOrMetaClass: methodReference actualClass;
				formatAndStyle.
	
	aStream nextPut: (Text string: methodReference classSymbol asString attribute: TextEmphasis bold).
	aStream nextPut: '>>'.	
	aStream nextPut: textModel actualContents.
	aStream nextPut: Character newLineCharacter asString.
	
	aStream nextPut: 
		(Text string: '[browse]' 
				attributes: {BlockTextAction do: [:x | 
							self browse: methodReference actualClass 
								selector: methodReference selector]. 
							TextEmphasis underlined})! !

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:44'!
methodReferenceFor: aDocLink 

	|classAndMethod|
	
	classAndMethod _ aDocLink target subStrings: '>>'.
	
	^ MethodReference 
		class: (Smalltalk at: classAndMethod first asSymbol ifAbsent: [^ nil])
		selector: classAndMethod second withBlanksTrimmed asSymbol! !

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:06:43'!
render: aDocLink in: aDocument on: aStream

	aDocLink optionAt: #embed ifPresent: [:val |
		val ifTrue: [
			^ self embed: aDocLink on: aStream]].
	
	self renderLink: aDocLink on: aStream! !

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:44'!
renderLink: aDocLink on: aStream

	|methodReference|
	
	methodReference _ self methodReferenceFor: aDocLink.

	methodReference ifNotNil: [
		aStream nextPut: 
			(Text string: aDocLink labelOrTarget 
					attribute: (BlockTextAction do: [:x | 
							self browse: methodReference actualClass
								selector: methodReference selector]))]! !

!SectionDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:06:58'!
render: aDocLink in: aDocument on: aStream

	|bookTitle sectionTitle bookAndSection|
	
	bookAndSection _ aDocLink target subStrings: '#'.
	bookAndSection size = 1 
		ifTrue: [ "Book not specified"
			sectionTitle _ bookAndSection first withBlanksTrimmed]
	ifFalse: [ "Book specified"
		bookTitle _ bookAndSection first withBlanksTrimmed.
		sectionTitle _ bookAndSection second withBlanksTrimmed].

	aStream nextPut: (Text string: aDocLink labelOrTarget withBlanksTrimmed 
				attribute: (BlockTextAction do: [:aTextModel |
					bookTitle ifNil: [
						aTextModel triggerEvent: #gotoSection with: sectionTitle]
					ifNotNil: [|book|
						book _ EruditeBook bookNamed: bookTitle ifNone: [^nil].
						book openInSection: sectionTitle]]))! !

!SelectorDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:07:06'!
render: aDocLink in: aDocument on: aStream

	|action selector renderLink |
	
	selector _ aDocLink target withBlanksTrimmed asSymbol.
	renderLink _ [:anAction | 
		aStream nextPut: (Text string: selector printString
				attributes: {BlockTextAction do: anAction})].
	
	aDocLink optionAt: #senders ifPresent: [:val |
		action _ [:anObject | Smalltalk browseAllCallsOn: selector].
		^ renderLink value: action].
	
	aDocLink optionAt: #implementors ifPresent: [:val |
		action _ [:anObject | Smalltalk browseAllImplementorsOf: selector].
		^ renderLink value: action].
	
	action _ [:anObject | Smalltalk browseAllImplementorsOf: selector].
	renderLink value: action! !

!UrlDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/19/2018 16:38:52'!
render: aDocLink in: aDocument on: aStream

	|url |
	
	url _ aDocLink target withBlanksTrimmed.
	
	aStream nextPut: (Text string: aDocLink labelOrTarget
				attributes: {EruditeTextURL url: url}).! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 23:28'!
initialize: aDocument

	document _ aDocument.
	stream _ WriteStream on: Array new.! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:40'!
linkRendererFor: aLinkType

	|handlerClassName|
	
	handlerClassName _ aLinkType asString capitalized, 'DocLinkRenderer'.
	^ Smalltalk at: handlerClassName asSymbol ifAbsent: ["self error: 'No link renderer for: ', aLinkType asString" nil]! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 15:38'!
render

	document contents isString ifTrue: [^ stream nextPutAll: document contents].

	document contents do: [:elem |
		elem isString ifTrue: [
			stream nextPut: elem]
		ifFalse: [
			elem accept: self]].
	
	^ stream contents inject: '' into: [:x :y | x, y]! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/18/2018 19:06:59'!
renderCode: aDocCode

	|text textModel|
	
	text _ Text string: aDocCode code.
	
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
	
	stream nextPut: textModel actualContents.
	
	"Besides rendering the code, try to evaluate it, since there may be variable assignments."
	[requestor 
		ifNil: [Compiler evaluate: aDocCode code for: self logged: false]
		ifNotNil: [Compiler evaluate: aDocCode code notifying: requestor logged: false]]
	on: Error do: [:error | error].! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 16:27:04'!
renderCodeDoIt: aDocCode

	|text button textModel |
	
	text _ Text string: aDocCode code.							.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
		
	stream nextPut: textModel actualContents.
	stream nextPut: ' '.
	
	button _ Text string: '[doIt]' attributes: 
					{TextEmphasis underlined. 
						BlockTextAction do: [:anObject | Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false]}.
	stream nextPut: button.
	
	"button _ PluggableButtonMorph model: nil action: #doIt label: 'DoIt'.
 	button morphExtent: 40@15.
	stream nextPut: (Text withForm: button)."! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 17:24'!
renderCodeDoItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false]})! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 18:36'!
renderCodeEmbedIt: aDocCode

	| evalString result |
	
	evalString _ aDocCode code.
	
	requestor 
		ifNil: [
			result _ [Compiler evaluate: evalString for: self logged: false]
				on: Error do: [:error | error]]
		ifNotNil: [
			result _ [Compiler evaluate: evalString notifying: requestor logged: false]
				on: Error do: [:error | error]].
	
	stream nextPut: (Text streamContents: [:s | result printOn: s])! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 16:27:16'!
renderCodeExploreIt: aDocCode

	|text button evalString textModel |
	
	evalString _ aDocCode code.
	
	text _ Text string: aDocCode code.							.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
		
	stream nextPut: textModel actualContents.
	stream nextPut: ' '.
	
	button _ Text string: '[exploreIt]' 
		attributes: {TextEmphasis underlined. 
					BlockTextAction do: [:anObject | (Compiler evaluate: evalString notifying: anObject textProvider logged: false) explore]}.
	stream nextPut: button.! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 17:27'!
renderCodeExploreItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | (Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false) explore]})! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 16:27:27'!
renderCodeInspectIt: aDocCode

	|text button evalString textModel |
	
	evalString _ aDocCode code.
	
	text _ Text string: aDocCode code.							.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
		
	stream nextPut: textModel actualContents.
	stream nextPut: ' '.
	
	button _ Text string: '[inspectIt]' 
		attributes: {TextEmphasis underlined. 
					BlockTextAction do: [:anObject | (Compiler evaluate: evalString notifying: anObject textProvider logged: false) inspect]}.
	stream nextPut: button.! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 17:25'!
renderCodeInspectItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | (Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false) inspect]})! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 16:27:38'!
renderCodePrintIt: aDocCode

	|text button evalString textModel |
	
	evalString _ aDocCode code.
	
	text _ Text string: aDocCode code.							.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
		
	stream nextPut: textModel actualContents.
	stream nextPut: ' '.
	
	button _ Text string: '[printIt]' 
		attributes: {TextEmphasis underlined. 
					BlockTextAction do: [:anObject | Transcript show: (Compiler evaluate: evalString notifying: anObject textProvider logged: false) printString]}.
	stream nextPut: button.! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 16:28:32'!
renderCodePrintItHere: aDocCode

	|text evalString result textModel |
	
	evalString _ aDocCode code.
	
	text _ Text string: aDocCode code.							.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
		
	stream nextPut: textModel actualContents.
	stream nextPut: ' '.
	
	requestor ifNil: [
		result _ [Compiler evaluate: evalString for: self logged: false]
			on: Error do: [:error | error]]
		ifNotNil: [
			result _ [Compiler evaluate: evalString notifying: requestor logged: false]
				on: Error do: [:error | error]].
	
	stream nextPut: '==> ';
			nextPut: (Text streamContents: [:s | result printOn: s]).! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 14:11'!
visitActionLink: aDocLink

	stream nextPut: (Text string: aDocLink title attributes: {BlockTextAction do: [:x | aDocLink action value]. TextEmphasis underlined})! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 15:42'!
visitCode: aDocCode

	aDocCode action ifNil: [
		^ self renderCode: aDocCode].
						
	(aDocCode action at: #action) caseOf: {
		[#doIt] -> [self renderCodeDoIt: aDocCode].
		[#exploreIt] -> [self renderCodeExploreIt: aDocCode].
		[#inspectIt] -> [self renderCodeInspectIt: aDocCode].
		[#printIt] -> [self renderCodePrintIt: aDocCode].
		[#printItHere] -> [self renderCodePrintItHere: aDocCode].
		[#embedIt] -> [self renderCodeEmbedIt: aDocCode].
		[#doItWithButton] -> [self renderCodeDoItWithButton: aDocCode].
		[#exploreItWithButton] -> [self renderCodeExploreItWithButton: aDocCode].
		[#inspectItWithButton] -> [self renderCodeInspectItWithButton: aDocCode].
		[#printItWithButton] -> [self renderCodePrintItWithButton: aDocCode]
	}.! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'jmv 6/11/2020 16:33:17'!
visitHeading: aEruditeHeading

	|pointSizes|
	
	pointSizes _ #(17 14 12 11).

	stream nextPut: (Text string: aEruditeHeading heading attributes: 
							{TextColor blue.
							TextEmphasis bold.
							TextFontFamilyAndSize familyName: FontFamily defaultFamilyName pointSize: (pointSizes at: aEruditeHeading level)})! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 22:57:31'!
visitLink: aDocLink
	
	(self linkRendererFor: aDocLink type) ifNotNil: [:aLinkRenderer |
		aLinkRenderer render: aDocLink in: document on: stream]! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:34'!
visitStyledText: aStyledText

	|emphasis|
	emphasis _ aStyledText style caseOf: {
		[#bold] -> [TextEmphasis bold].
		[#italic] -> [TextEmphasis italic].
		[#unformatted] -> [^ stream nextPut: aStyledText text].
	}.
	
	stream nextPut: (Text string: aStyledText text attribute: emphasis)! !

!MorphicEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 12/11/2018 18:27'!
requestor

	^ requestor! !

!MorphicEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 12/11/2018 18:26'!
requestor: anObject

	requestor _ anObject! !

!MorphicEruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:30'!
example1
	"self example1"
	| erudite |
	erudite _ SmalltalkEruditeParser parse: 'This is an Object.

Look at Object>>at:

Properties are defined via #triggerEvent:'.
	(MorphicEruditeDocRenderer on: erudite) render edit.! !

!MorphicEruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:30'!
example2
	"self example2"
	| erudite |
	erudite _ SmalltalkEruditeParser parse: Object comment.
	(MorphicEruditeDocRenderer on: erudite) render edit.! !

!MorphicEruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 23:21'!
on: aDocument

	^ self new initialize: aDocument! !

!MorphicEruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 15:58'!
render: aDocument
	
	^ (self on: aDocument) render! !

!MorphicEruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 18:28'!
render: aDocument notifying: anObject
	
	^ (self on: aDocument)
		requestor: anObject; 
		render! !

!DocActionLink methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 14:02'!
accept: aVisitor

	^ aVisitor visitActionLink: self! !

!DocActionLink methodsFor: 'accessing' stamp: 'MM 11/29/2018 22:45'!
action
	"Answer the value of action"

	^ action! !

!DocActionLink methodsFor: 'accessing' stamp: 'MM 11/29/2018 22:45'!
action: anObject
	"Set the value of action"

	action _ anObject! !

!DocActionLink methodsFor: 'accessing' stamp: 'MM 11/29/2018 22:45'!
title
	"Answer the value of title"

	^ title! !

!DocActionLink methodsFor: 'accessing' stamp: 'MM 11/29/2018 22:45'!
title: anObject
	"Set the value of title"

	title _ anObject! !

!DocActionLink class methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 22:44'!
title: aString do: aBlock

	^ self new title: aString; action: aBlock; yourself! !

!DocCode methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 18:18'!
accept: aVisitor

	^ aVisitor visitCode: self! !

!DocCode methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 18:18'!
initialize: aString action: aSymbol

	code _ aString.
	action _ aSymbol! !

!DocCode methodsFor: 'accessing' stamp: 'MM 11/30/2018 18:19'!
action
	"Answer the value of action"

	^ action! !

!DocCode methodsFor: 'accessing' stamp: 'MM 11/30/2018 18:19'!
action: anObject
	"Set the value of action"

	action _ anObject! !

!DocCode methodsFor: 'accessing' stamp: 'MM 11/30/2018 18:19'!
code
	"Answer the value of code"

	^ code! !

!DocCode methodsFor: 'accessing' stamp: 'MM 11/30/2018 18:19'!
code: anObject
	"Set the value of code"

	code _ anObject! !

!DocCode class methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 18:17'!
code: aString action: aSymbol

	^ self new initialize: aString action: aSymbol! !

!DocHeading methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 16:00'!
accept: aVisitor

	^ aVisitor visitHeading: self! !

!DocHeading methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 15:47'!
initialize: aString level: aNumber

	heading _ aString.
	level _ aNumber! !

!DocHeading methodsFor: 'accessing' stamp: 'MM 11/30/2018 16:03'!
heading
	"Answer the value of heading"

	^ heading! !

!DocHeading methodsFor: 'accessing' stamp: 'MM 11/30/2018 16:03'!
heading: anObject
	"Set the value of heading"

	heading _ anObject! !

!DocHeading methodsFor: 'accessing' stamp: 'MM 11/30/2018 16:03'!
level
	"Answer the value of level"

	^ level! !

!DocHeading methodsFor: 'accessing' stamp: 'MM 11/30/2018 16:03'!
level: anObject
	"Set the value of level"

	level _ anObject! !

!DocHeading class methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 15:47'!
heading: aString level: aNumber

	^ self new initialize: aString level: aNumber! !

!DocLink methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 14:02'!
accept: aVisitor

	^ aVisitor visitLink: self! !

!DocLink methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 14:04'!
initialize: anObject type: aSymbol label: aString

	target _ anObject.
	type _ aSymbol.
	label _ aString.
	options _ Dictionary new! !

!DocLink methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 15:18'!
labelOrTarget

	^ label ifNil: [target]! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/1/2018 14:03'!
label
	"Answer the value of label"

	^ label! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/1/2018 14:03'!
label: anObject
	"Set the value of label"

	label _ anObject! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/6/2018 18:15'!
optionAt: aSymbol

	^ options at: aSymbol! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/6/2018 18:15'!
optionAt: aSymbol ifAbsent: aBlock

	^ options at: aSymbol ifAbsent: aBlock! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/6/2018 18:15'!
optionAt: aSymbol ifPresent: aBlock

	^ options at: aSymbol ifPresent: aBlock! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/6/2018 18:16'!
optionAt: aSymbol put: anObject

	^ options at: aSymbol put: anObject! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/1/2018 14:03'!
options
	"Answer the value of options"

	^ options! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/1/2018 14:03'!
options: anObject
	"Set the value of options"

	options _ anObject! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/1/2018 14:03'!
target
	"Answer the value of target"

	^ target! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/1/2018 14:03'!
target: anObject
	"Set the value of target"

	target _ anObject! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/1/2018 14:03'!
type
	"Answer the value of type"

	^ type! !

!DocLink methodsFor: 'accessing' stamp: 'MM 12/1/2018 14:03'!
type: anObject
	"Set the value of type"

	type _ anObject! !

!DocLink class methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 14:08'!
target: anObject type: aSymbol label: aString

	^ self new initialize: anObject type: aSymbol label: aString! !

!EruditeStyledText methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:09'!
accept: aVisitor

	^ aVisitor visitStyledText: self! !

!EruditeStyledText methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:07'!
initialize: aString style: aSymbol

	text _ aString.
	style _ aSymbol! !

!EruditeStyledText methodsFor: 'accessing' stamp: 'MM 12/1/2018 12:11'!
style
	"Answer the value of style"

	^ style! !

!EruditeStyledText methodsFor: 'accessing' stamp: 'MM 12/1/2018 12:11'!
style: anObject
	"Set the value of style"

	style _ anObject! !

!EruditeStyledText methodsFor: 'accessing' stamp: 'MM 12/1/2018 12:11'!
text
	"Answer the value of text"

	^ text! !

!EruditeStyledText methodsFor: 'accessing' stamp: 'MM 12/1/2018 12:11'!
text: anObject
	"Set the value of text"

	text _ anObject! !

!EruditeStyledText class methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 12:07'!
text: aString style: aSymbol

	^ self new initialize: aString style: aSymbol! !

!Browser methodsFor: '*Erudite' stamp: 'MM 3/5/2021 17:25:35'!
eruditeSources
	^ self classCommentText ! !

!Browser methodsFor: '*Erudite' stamp: 'MM 3/5/2021 17:28:59'!
eruditeSources: aString notifying: aRequestor
	editSelection _ #editComment.
	^ self contents: aString notifying: aRequestor! !

!Browser methodsFor: '*Erudite' stamp: 'MM 12/13/2018 18:25'!
selectionInterval

	^ 1 to: 1! !

!Browser methodsFor: '*Erudite' stamp: 'MM 12/13/2018 18:26'!
text
	^ ''! !

!InnerTextMorph methodsFor: '*Erudite' stamp: 'MM 12/7/2018 12:59'!
enableEditing: aBoolean

	self setProperty: #disablesEdition toValue: aBoolean.
	aBoolean ifFalse: [self stopBlinking]
				ifTrue: [self removeProperty: #disablesEdition. self startBlinking]! !

!HierarchicalListMorph methodsFor: '*Erudite' stamp: 'MM 12/13/2018 18:42'!
expandRoot
	scroller submorphs first toggleExpandedState ! !

!TextModelMorph methodsFor: '*Erudite' stamp: 'MM 12/7/2018 12:55'!
enableEditing: aBoolean
	self textMorph enableEditing: aBoolean! !
EruditeSystem initialize!
