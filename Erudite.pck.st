'From Cuis 6.0 [latest update: #5399] on 29 July 2022 at 8:39:22 pm'!
'Description Documenter and Literate Programming system for Cuis Smalltalk.

Author: Mariano Montone (marianomontone@gmail.com)'!
!provides: 'Erudite' 1 204!
!requires: 'Cuis-Base' 50 4854 nil!
!requires: 'PetitParserBinding' 1 0 nil!
!requires: 'PetitParser' 1 2 nil!
!requires: 'SqueakCompatibility' 1 29 nil!
!requires: 'Graphics-Files-Additional' 1 22 nil!
SystemOrganization addCategory: 'Erudite-Books'!
SystemOrganization addCategory: 'Erudite-Core'!
SystemOrganization addCategory: 'Erudite-Latex'!
SystemOrganization addCategory: 'Erudite-Morphic'!
SystemOrganization addCategory: 'Erudite-Parser'!
SystemOrganization addCategory: 'Erudite-Test'!
SystemOrganization addCategory: 'Erudite'!


!classDefinition: #EruditePluggableTextModel category: 'Erudite-Morphic'!
PluggableTextModel subclass: #EruditePluggableTextModel
	instanceVariableNames: 'editing sourceGetter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditePluggableTextModel class' category: 'Erudite-Morphic'!
EruditePluggableTextModel class
	instanceVariableNames: ''!

!classDefinition: #EruditeSmalltalkTextModel category: 'Erudite-Morphic'!
TextModel subclass: #EruditeSmalltalkTextModel
	instanceVariableNames: 'styler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeSmalltalkTextModel class' category: 'Erudite-Morphic'!
EruditeSmalltalkTextModel class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookExplorer category: 'Erudite-Morphic'!
AbstractHierarchicalList subclass: #EruditeBookExplorer
	instanceVariableNames: 'book'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeBookExplorer class' category: 'Erudite-Morphic'!
EruditeBookExplorer class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocEditor category: 'Erudite-Morphic'!
TextEditor subclass: #EruditeDocEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeDocEditor class' category: 'Erudite-Morphic'!
EruditeDocEditor class
	instanceVariableNames: 'menu2'!

!classDefinition: #EruditeTextURL category: 'Erudite-Morphic'!
TextURL subclass: #EruditeTextURL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeTextURL class' category: 'Erudite-Morphic'!
EruditeTextURL class
	instanceVariableNames: ''!

!classDefinition: #BlockTextAction category: 'Erudite-Morphic'!
TextAction subclass: #BlockTextAction
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'BlockTextAction class' category: 'Erudite-Morphic'!
BlockTextAction class
	instanceVariableNames: ''!

!classDefinition: #EruditeForm category: 'Erudite-Morphic'!
Form subclass: #EruditeForm
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeForm class' category: 'Erudite-Morphic'!
EruditeForm class
	instanceVariableNames: ''!

!classDefinition: #InnerEruditeDocMorph category: 'Erudite-Morphic'!
InnerTextMorph subclass: #InnerEruditeDocMorph
	instanceVariableNames: 'editing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'InnerEruditeDocMorph class' category: 'Erudite-Morphic'!
InnerEruditeDocMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocEditorMorph category: 'Erudite-Morphic'!
TextModelMorph subclass: #EruditeDocEditorMorph
	instanceVariableNames: 'acceptContentsOnChange'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeDocEditorMorph class' category: 'Erudite-Morphic'!
EruditeDocEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocViewerMorph category: 'Erudite-Morphic'!
TextModelMorph subclass: #EruditeDocViewerMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeDocViewerMorph class' category: 'Erudite-Morphic'!
EruditeDocViewerMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeClassCommentMorph category: 'Erudite-Morphic'!
EruditeDocViewerMorph subclass: #EruditeClassCommentMorph
	instanceVariableNames: 'separator code separatorHeight proportionalHeight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeClassCommentMorph class' category: 'Erudite-Morphic'!
EruditeClassCommentMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookReaderMorph category: 'Erudite-Morphic'!
SystemWindow subclass: #EruditeBookReaderMorph
	instanceVariableNames: 'explorerMorph eruditeViewerMorph explorer currentSection viewSources styledDocuments sourcesChanged bindings'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeBookReaderMorph class' category: 'Erudite-Morphic'!
EruditeBookReaderMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookEditorMorph category: 'Erudite-Morphic'!
EruditeBookReaderMorph subclass: #EruditeBookEditorMorph
	instanceVariableNames: 'sourceMorph liveEditing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeBookEditorMorph class' category: 'Erudite-Morphic'!
EruditeBookEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocEditorWindow category: 'Erudite-Morphic'!
SystemWindow subclass: #EruditeDocEditorWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeDocEditorWindow class' category: 'Erudite-Morphic'!
EruditeDocEditorWindow class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookSectionExplorerWrapper category: 'Erudite-Core'!
ListItemWrapper subclass: #EruditeBookSectionExplorerWrapper
	instanceVariableNames: 'section'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeBookSectionExplorerWrapper class' category: 'Erudite-Core'!
EruditeBookSectionExplorerWrapper class
	instanceVariableNames: ''!

!classDefinition: #EruditeMarkupGrammarTest category: 'Erudite-Test'!
TestCase subclass: #EruditeMarkupGrammarTest
	instanceVariableNames: 'parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Test'!
!classDefinition: 'EruditeMarkupGrammarTest class' category: 'Erudite-Test'!
EruditeMarkupGrammarTest class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkEruditeGrammarTest category: 'Erudite-Test'!
TestCase subclass: #SmalltalkEruditeGrammarTest
	instanceVariableNames: 'parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Test'!
!classDefinition: 'SmalltalkEruditeGrammarTest class' category: 'Erudite-Test'!
SmalltalkEruditeGrammarTest class
	instanceVariableNames: ''!

!classDefinition: #EruditeMarkupAutoCompleter category: 'Erudite-Parser'!
AutoCompleter subclass: #EruditeMarkupAutoCompleter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeMarkupAutoCompleter class' category: 'Erudite-Parser'!
EruditeMarkupAutoCompleter class
	instanceVariableNames: ''!

!classDefinition: #ClassMethodCommentTextStyler category: 'Erudite-Parser'!
SHTextStylerST80 subclass: #ClassMethodCommentTextStyler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'ClassMethodCommentTextStyler class' category: 'Erudite-Parser'!
ClassMethodCommentTextStyler class
	instanceVariableNames: ''!

!classDefinition: #ClassCommentTextStyler category: 'Erudite-Parser'!
SHTextStyler subclass: #ClassCommentTextStyler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'ClassCommentTextStyler class' category: 'Erudite-Parser'!
ClassCommentTextStyler class
	instanceVariableNames: ''!

!classDefinition: #SHTextStylerClassComment category: 'Erudite-Parser'!
SHTextStyler subclass: #SHTextStylerClassComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'SHTextStylerClassComment class' category: 'Erudite-Parser'!
SHTextStylerClassComment class
	instanceVariableNames: ''!

!classDefinition: #EruditeMarkupGrammar category: 'Erudite-Parser'!
PPCompositeParser subclass: #EruditeMarkupGrammar
	instanceVariableNames: 'heading4 heading3 heading2 heading1 heading markup unformatted erudite codeAction code bold italic plainText linkOptions linkOptionsList linkOption falseLinkOption trueLinkOption assignLinkOption link buttonCodeAction simpleCodeAction underlined'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeMarkupGrammar class' category: 'Erudite-Parser'!
EruditeMarkupGrammar class
	instanceVariableNames: ''!

!classDefinition: #EruditeMarkupParser category: 'Erudite-Parser'!
EruditeMarkupGrammar subclass: #EruditeMarkupParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeMarkupParser class' category: 'Erudite-Parser'!
EruditeMarkupParser class
	instanceVariableNames: ''!

!classDefinition: #EruditeMarkupTextStyler category: 'Erudite-Parser'!
EruditeMarkupGrammar subclass: #EruditeMarkupTextStyler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeMarkupTextStyler class' category: 'Erudite-Parser'!
EruditeMarkupTextStyler class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkEruditeGrammar category: 'Erudite-Parser'!
PPCompositeParser subclass: #SmalltalkEruditeGrammar
	instanceVariableNames: 'smalltalkClass smalltalkClassMethod smalltalkClassMethodName smalltalkSelector text erudite smalltalkClassName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'SmalltalkEruditeGrammar class' category: 'Erudite-Parser'!
SmalltalkEruditeGrammar class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkEruditeParser category: 'Erudite-Parser'!
SmalltalkEruditeGrammar subclass: #SmalltalkEruditeParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'SmalltalkEruditeParser class' category: 'Erudite-Parser'!
SmalltalkEruditeParser class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkEruditeStyler category: 'Erudite-Parser'!
SmalltalkEruditeGrammar subclass: #SmalltalkEruditeStyler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'SmalltalkEruditeStyler class' category: 'Erudite-Parser'!
SmalltalkEruditeStyler class
	instanceVariableNames: ''!

!classDefinition: #EruditeBook category: 'Erudite-Core'!
Object subclass: #EruditeBook
	instanceVariableNames: 'title sections storageMethod author'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeBook class' category: 'Erudite-Core'!
EruditeBook class
	instanceVariableNames: ''!

!classDefinition: #CuisManual category: 'Erudite-Books'!
EruditeBook subclass: #CuisManual
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Books'!
!classDefinition: 'CuisManual class' category: 'Erudite-Books'!
CuisManual class
	instanceVariableNames: ''!

!classDefinition: #EruditeManual category: 'Erudite-Books'!
EruditeBook subclass: #EruditeManual
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Books'!
!classDefinition: 'EruditeManual class' category: 'Erudite-Books'!
EruditeManual class
	instanceVariableNames: ''!

!classDefinition: #EruditeCompositeBook category: 'Erudite-Core'!
EruditeBook subclass: #EruditeCompositeBook
	instanceVariableNames: 'books'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeCompositeBook class' category: 'Erudite-Core'!
EruditeCompositeBook class
	instanceVariableNames: ''!

!classDefinition: #EruditeDynamicBook category: 'Erudite-Core'!
EruditeBook subclass: #EruditeDynamicBook
	instanceVariableNames: 'collectedMethods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeDynamicBook class' category: 'Erudite-Core'!
EruditeDynamicBook class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookSection category: 'Erudite-Core'!
Object subclass: #EruditeBookSection
	instanceVariableNames: 'title parent subsections document'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeBookSection class' category: 'Erudite-Core'!
EruditeBookSection class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocRenderer category: 'Erudite-Core'!
Object subclass: #EruditeDocRenderer
	instanceVariableNames: 'document stream requestor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeDocRenderer class' category: 'Erudite-Core'!
EruditeDocRenderer class
	instanceVariableNames: ''!

!classDefinition: #LatexEruditeDocRenderer category: 'Erudite-Latex'!
EruditeDocRenderer subclass: #LatexEruditeDocRenderer
	instanceVariableNames: 'highlightSyntax'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Latex'!
!classDefinition: 'LatexEruditeDocRenderer class' category: 'Erudite-Latex'!
LatexEruditeDocRenderer class
	instanceVariableNames: ''!

!classDefinition: #MorphicEruditeDocRenderer category: 'Erudite-Morphic'!
EruditeDocRenderer subclass: #MorphicEruditeDocRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'MorphicEruditeDocRenderer class' category: 'Erudite-Morphic'!
MorphicEruditeDocRenderer class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocument category: 'Erudite-Core'!
Object subclass: #EruditeDocument
	instanceVariableNames: 'contents parser data'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeDocument class' category: 'Erudite-Core'!
EruditeDocument class
	instanceVariableNames: ''!

!classDefinition: #EruditeSystem category: 'Erudite-Core'!
Object subclass: #EruditeSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeSystem class' category: 'Erudite-Core'!
EruditeSystem class
	instanceVariableNames: 'Prefs'!

!classDefinition: #LatexEruditeBookRenderer category: 'Erudite-Latex'!
Object subclass: #LatexEruditeBookRenderer
	instanceVariableNames: 'stream requestor highlightSyntax book documentClass texFilePath beforePreamble afterPreamble'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Latex'!
!classDefinition: 'LatexEruditeBookRenderer class' category: 'Erudite-Latex'!
LatexEruditeBookRenderer class
	instanceVariableNames: ''!

!classDefinition: #DocLinkRenderer category: 'Erudite-Morphic'!
Object subclass: #DocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'DocLinkRenderer class' category: 'Erudite-Morphic'!
DocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #ClassDocLinkRenderer category: 'Erudite-Morphic'!
DocLinkRenderer subclass: #ClassDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'ClassDocLinkRenderer class' category: 'Erudite-Morphic'!
ClassDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #ImageDocLinkRenderer category: 'Erudite-Morphic'!
DocLinkRenderer subclass: #ImageDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'ImageDocLinkRenderer class' category: 'Erudite-Morphic'!
ImageDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #MessageDocLinkRenderer category: 'Erudite-Morphic'!
DocLinkRenderer subclass: #MessageDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'MessageDocLinkRenderer class' category: 'Erudite-Morphic'!
MessageDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #MethodDocLinkRenderer category: 'Erudite-Morphic'!
DocLinkRenderer subclass: #MethodDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'MethodDocLinkRenderer class' category: 'Erudite-Morphic'!
MethodDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #SectionDocLinkRenderer category: 'Erudite-Morphic'!
DocLinkRenderer subclass: #SectionDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'SectionDocLinkRenderer class' category: 'Erudite-Morphic'!
SectionDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #SelectorDocLinkRenderer category: 'Erudite-Morphic'!
DocLinkRenderer subclass: #SelectorDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'SelectorDocLinkRenderer class' category: 'Erudite-Morphic'!
SelectorDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #UrlDocLinkRenderer category: 'Erudite-Morphic'!
DocLinkRenderer subclass: #UrlDocLinkRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'UrlDocLinkRenderer class' category: 'Erudite-Morphic'!
UrlDocLinkRenderer class
	instanceVariableNames: ''!

!classDefinition: #DocNode category: 'Erudite-Parser'!
Object subclass: #DocNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocNode class' category: 'Erudite-Parser'!
DocNode class
	instanceVariableNames: ''!

!classDefinition: #DocActionLink category: 'Erudite-Parser'!
DocNode subclass: #DocActionLink
	instanceVariableNames: 'title action'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocActionLink class' category: 'Erudite-Parser'!
DocActionLink class
	instanceVariableNames: ''!

!classDefinition: #DocCode category: 'Erudite-Parser'!
DocNode subclass: #DocCode
	instanceVariableNames: 'code action'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocCode class' category: 'Erudite-Parser'!
DocCode class
	instanceVariableNames: ''!

!classDefinition: #DocHeading category: 'Erudite-Parser'!
DocNode subclass: #DocHeading
	instanceVariableNames: 'heading level'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocHeading class' category: 'Erudite-Parser'!
DocHeading class
	instanceVariableNames: ''!

!classDefinition: #DocLink category: 'Erudite-Parser'!
DocNode subclass: #DocLink
	instanceVariableNames: 'target type label options'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocLink class' category: 'Erudite-Parser'!
DocLink class
	instanceVariableNames: ''!

!classDefinition: #DocList category: 'Erudite-Parser'!
DocNode subclass: #DocList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocList class' category: 'Erudite-Parser'!
DocList class
	instanceVariableNames: ''!

!classDefinition: #DocUnformatted category: 'Erudite-Parser'!
DocNode subclass: #DocUnformatted
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocUnformatted class' category: 'Erudite-Parser'!
DocUnformatted class
	instanceVariableNames: ''!

!classDefinition: #EruditeStyledText category: 'Erudite-Parser'!
DocNode subclass: #EruditeStyledText
	instanceVariableNames: 'text style'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeStyledText class' category: 'Erudite-Parser'!
EruditeStyledText class
	instanceVariableNames: ''!

!classDefinition: #EruditeDynamicTestBook category: 'Erudite-Test'!
Object subclass: #EruditeDynamicTestBook
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Test'!
!classDefinition: 'EruditeDynamicTestBook class' category: 'Erudite-Test'!
EruditeDynamicTestBook class
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

!EruditeCompositeBook commentStamp: '<historical>' prior: 0!
A book that is composed from other books.!

!EruditeDynamicBook commentStamp: 'MM 2/26/2022 19:13:06' prior: 0!
A book that is build dynamically from tagged methods.

Methods with <booksection> pragmas are collected, and an Erudite book is built from them.

Pragma is:

<booksection: sectionName parent: sectionParent order: orderInteger book: bookTitle>

If parent is nil, then it is a top-level section. Otherwise, it should be the name of the parent section.

Test book:

(EruditeDynamicBook titled: 'Dynamic book test') open!

!EruditeBookSection commentStamp: '<historical>' prior: 0!
A section of a Book.!

!MorphicEruditeDocRenderer commentStamp: '<historical>' prior: 0!
Renders a Document to a TextMorph.

Example:

| erudite |

erudite _ 
SmalltalkEruditeParser parse: 'This is an Object.

Look at Object>>at:

Properties are triggered via #triggerEvent:'.

(MorphicEruditeDocRenderer on: erudite) render edit.!

!EruditeDocument commentStamp: '<historical>' prior: 0!
An Erudite document. A piece of text meant to be formatted.!

!LatexEruditeBookRenderer commentStamp: '<historical>' prior: 0!
Renders a Book to a Latex file.

Example:

(LatexEruditeBookRenderer on: CuisManual new)
	texFilePath: '/home/marian/src/Cuis/Erudite/CuisManual.tex';
	render.
	
(LatexEruditeBookRenderer on: EruditeManual new)
	texFilePath: '/home/marian/src/Cuis/Erudite/EruditeManual.tex';
	render.

Then process with pdflatex -shell-escape <file.tex>!

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

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:02:46'!
addAndSelectString: aString

	|from to|
	
	from _ self stopIndex.
	
	self addString: aString.
	
	to _ self stopIndex  - 1.
	
	self selectFrom: from to: to.
	
	^ self! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:04:09'!
addAndSelectString: aString then: aBlock

	|from to|
	
	from _ self stopIndex.
	
	self addString: aString.
	
	to _ self stopIndex  - 1.
	
	aBlock value.
	
	"Text selection need to be done at the end in order for it to work ..."
	self selectFrom: from to: to.
	
	^ self! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:09:04'!
embedClass

	self insertMarkup: [
		self addString: '{';
			addAndSelectString: '<class name>' then: [
				self addString: '::class}[embed]']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:10:35'!
embedMethod

	self insertMarkup: [
		self addString: '{';
			addAndSelectString: 'Class>>selector' then: [
				self addString: ' ::method}[embed]']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 23:30:06'!
getInsertMarkupMenu
	
	| menu |
	menu _ (MenuMorph new
				addTitle: 'Insert Erudite markup';
				defaultTarget: self)
			add: 'Heading' action: #insertHeading;
			add:  'SubHeading' action: #insertSubheading;
			add:  'SubSubHeading' action: #insertSubSubheading;
			addLine;
			add: 'Bold' action: #insertBold;
			add: 'Italics' action: #insertItalics;
			addLine;
			add: 'Link' subMenu: ((MenuMorph new defaultTarget: self)
				add: 'Link' action: #insertLink;
				add: 'Link to section' action: #insertSectionLink;
				add: 'Link to selector' action: #insertSelectorLink;
				add: 'Link to class' action: #insertClassLink;
				add: 'Embed class' action: #embedClass balloonText: 'Embed class definition';
				add: 'Link to method' action: #insertMethodLink;
				add: 'Embed method' action: #embedMethod balloonText: 'Embed a method source code';
				add: 'Url' action: #insertUrlLink;
				yourself);
			addLine;
			add: 'Image' action: #insertImage;
			add: 'Verbatim' action: #insertVerbatim;
			addLine;
			add: 'Code' subMenu: ((MenuMorph new defaultTarget: self)
				add: 'Code' action: #insertCode;
				add: 'Code (doIt)' action: #insertCodeDoIt balloonText: 'Renders a link besides the code with which to evaluate the code.';
				add: 'Code (exploreIt)' action: #insertCodeExploreIt balloonText: 'Renders a link besides the code with which to explore the result of code evaluation.';
				add: 'Code (inspectIt)' action: #insertCodeInspectIt balloonText: 'Renders a link besides the code with which to inspect the result of code evaluation';
				add: 'Code (printIt)' action: #insertCodePrintIt balloonText: 'Renders a link besides the code with which to print the result of code evaluation to the Transcript.';
				add: 'Code (printItHere)' action: #insertCodePrintItHere balloonText: 'Renders the result of code evaluation in place.';
				add: 'Code (embedIt)' action: #insertCodeEmbedIt balloonText: 'The code is not shown. The result is printed to the document in place';
				add: 'Code (doItWithButton)' action: #insertCodeDoItWithButton balloonText: 'Does not render the code. Instead, it makes a link with label that evaluates the code. Syntax: [[[code]]] doItWithButton: label';
				add: 'Code (exploreItWithButton)' action: #insertCodeExploreItWithButton balloonText: 'Does not render the code. Instead, it makes a link with label that evaluates the code and explores the result';
				add: 'Code (exploreItWithButton)' action: #insertCodeInspectItWithButton balloonText: 'Does not render the code. Instead, it makes a link with label that evaluates the code and inspects the result';
				yourself);
			yourself.
			
	menu popUpInWorld: morph world.! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:01:34'!
insertBold

	self insertMarkup: [
		self addString: '**';
			addAndSelectString: 'text in bold'
				then: [self addString: '**']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:08:54'!
insertClassLink

	self insertMarkup: [
		self addString: '{';
			addAndSelectString: '<class name>' then: [
				self addString: '::class}']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:02:12'!
insertCode

	self insertMarkup: [
		self addString: '[[[';
			addAndSelectString: 'code' then: [
				self addString: ']]]']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:59:23'!
insertCodeDoIt

	self insertMarkup: [
		self addString: '[[[';
			addAndSelectString: 'code' then: [
				self addString: ']]] doIt']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 20:08:12'!
insertCodeDoItWithButton

	self insertMarkup: [
		self addString: '[[[';
			addAndSelectString: 'code' then: [
				self addString: ']]] doItWithButton: label.']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 20:08:54'!
insertCodeEmbedItWithButton

	self insertMarkup: [
		self addString: '[[[';
			addAndSelectString: 'code' then: [
				self addString: ']]] embedIt']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:59:31'!
insertCodeExploreIt

	self insertMarkup: [
		self addString: '[[[';
			addAndSelectString: 'code' then: [
				self addString: ']]] exploreIt']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 20:08:25'!
insertCodeExploreItWithButton

	self insertMarkup: [
		self addString: '[[[';
			addAndSelectString: 'code' then: [
				self addString: ']]] exploreItWithButton: label.']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:59:45'!
insertCodeInspectIt

	self insertMarkup: [
		self addString: '[[[';
			addAndSelectString: 'code' then: [
				self addString: ']]] inspectIt']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 20:08:35'!
insertCodeInspectItWithButton

	self insertMarkup: [
		self addString: '[[[';
			addAndSelectString: 'code' then: [
				self addString: ']]] inspectItWithButton: label.']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 20:09:14'!
insertCodePrintItHereWithButton

	self insertMarkup: [
		self addString: '[[[';
			addAndSelectString: 'code' then: [
				self addString: ']]] printItHere']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 20:09:08'!
insertCodePrintItWithButton

	self insertMarkup: [
		self addString: '[[[';
			addAndSelectString: 'code' then: [
				self addString: ']]] printIt']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:03:07'!
insertHeading

	self insertMarkup: [
		self addString: '!!!! ';
			addAndSelectString: 'heading']! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 20:01:02'!
insertImage

	self insertMarkup: [
		self addString: '{';
			addAndSelectString: 'imageFilePath' then: [
				self addString: ' ::image}']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:03:43'!
insertItalics

	self insertMarkup: [
		self addString: '//';
			addAndSelectString: 'text in italics' then: [
				self addString: '//']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 15:30:47'!
insertLink

	self insertMarkup: [
		self addString: '{target::type|label}']! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 15:26:57'!
insertMarkup: aBlock

	aBlock value.
	model changed: #refetchContents.
	self runningWorld activeHand newKeyboardFocus: morph! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 15:29:50'!
insertMarkupMenu: aKeyboardEvent
	
	self getInsertMarkupMenu .
	^ true! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:10:24'!
insertMethodLink

	self insertMarkup: [
		self addString: '{';
			addAndSelectString: 'Class>>selector' then: [
				self addString: ' ::method}']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:00:06'!
insertSectionLink

	self insertMarkup: [
		self addString: '{';
			addAndSelectString: '<sectionName>' then: [
			self addString: '::section}']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:05:53'!
insertSelectorLink

	self insertMarkup: [
		self addString: '{';
			addAndSelectString: '<selectorName>' then: [
				self addString: '::selector}']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:06:12'!
insertSubSubheading

	self insertMarkup: [
		self addString: '!!!!!!!! ';
			addAndSelectString: 'subsubheading']! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:06:35'!
insertSubheading

	self insertMarkup: [
		self addString: '!!!!!! ';
			addAndSelectString: 'subheading']! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:12:00'!
insertUrlLink

	self insertMarkup: [
		self addString: '{';
			addAndSelectString: 'url' then: [
				self addString: '::url|optional label}']]! !

!EruditeDocEditor methodsFor: 'markup-insertion' stamp: 'MM 2/17/2022 19:07:08'!
insertVerbatim

	self insertMarkup: [
		self addString: '```';
			addAndSelectString: 'verbatim' then: [
				self addString: '```']]! !

!EruditeDocEditor methodsFor: 'actions' stamp: 'MM 3/5/2021 17:24:02'!
editEruditeSource

	|sourceModel| 
	
	sourceModel _ EruditePluggableTextModel on: model textProvider.
	
	sourceModel textGetter: #eruditeSources textSetter: #eruditeSources:notifying: selectionGetter: nil.
	
	EruditeDocEditorWindow open: sourceModel label: 'Edit Erudite source'.! !

!EruditeDocEditor methodsFor: 'actions' stamp: 'MM 2/17/2022 15:11:35'!
getMenu

	|menu|
	
	menu _ super getMenu.
	
	menu addLine;
		   " add: 'Toggle editing' action: #toggleEditing;
		    add: 'Insert markup (i)...' action: #getInsertMarkupMenu."
		add: 'Edit Erudite source' action: #editEruditeSource icon: #textEditorIcon;
		add: 'Insert Erudite markup (i)' action: #getInsertMarkupMenu icon: #textEditorIcon.
		
	^ menu! !

!EruditeDocEditor methodsFor: 'actions' stamp: 'MM 12/6/2018 11:26'!
save: aKeyboardEvent

	self acceptContents.
	^ true! !

!EruditeDocEditor methodsFor: 'actions' stamp: 'MM 12/13/2018 16:56'!
toggleEditing
	|editing|
	
	editing _ morph toggleEditing.
	model editing: editing
	! !

!EruditeDocEditor methodsFor: 'accessing' stamp: 'MM 3/5/2021 14:47:44'!
sourceContents
	model sourceContents ! !

!EruditeDocEditor class methodsFor: 'as yet unclassified' stamp: 'MM 2/17/2022 15:26:12'!
cmdShortcutsSpec
	"
	Editor initialize
	"
	"arranged in QWERTY keyboard order"
	^#(
		#(		$s	#save:								'Save (i.e. accept)')
		#(		$l	#cancelEdits:						'Cancel')
		#(       $i  #insertMarkupMenu:                         'Insert markup')
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

!EruditeForm methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:46:23'!
storeOn: aStream

	aStream nextPutAll: '(EruditeForm fromBase64String:'.
	self base64String storeOn: aStream.
	aStream nextPut: $).
	
	! !

!EruditeForm class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 20:16:23'!
fromBase64String: aString

	|form|
	
	form _ ImageReadWriter formFromStream: aString base64Decoded asByteArray readStream.

	^ form as: EruditeForm! !

!EruditeForm class methodsFor: 'as yet unclassified' stamp: 'AS 7/29/2022 20:36:06'!
fromFileNamed: aString

	| form |
	form _ super fromFileNamed: aString.
	form _ form class = ColorForm
		ifTrue: [ form asFormOfDepth: 32 ]
		ifFalse: [ form ].
	^ form as: EruditeForm! !

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

!EruditeClassCommentMorph methodsFor: 'as yet unclassified' stamp: 'jmv 5/10/2021 12:38:47'!
hidePane

	self hide.
	separator visible ifTrue: [
		proportionalHeight _ self layoutSpec proportionalLayoutHeight ].
	separator layoutSpec fixedHeight: 0.
	self layoutSpec proportionalHeight: 0.
	code layoutSpec proportionalHeight: 1.0.
	separator hide.! !

!EruditeClassCommentMorph methodsFor: 'as yet unclassified' stamp: 'jmv 5/10/2021 12:38:38'!
separator: adjusterMorph code: codeMorph
	separator _ adjusterMorph.
	code _ codeMorph.! !

!EruditeClassCommentMorph methodsFor: 'as yet unclassified' stamp: 'jmv 5/10/2021 12:38:56'!
showPane

	self show.
	proportionalHeight ifNotNil: [
		self layoutSpec proportionalHeight: proportionalHeight.
		code layoutSpec proportionalHeight: 1.0 - proportionalHeight ].
	separator layoutSpec fixedHeight: Theme current layoutAdjusterThickness.
	separator show! !

!EruditeClassCommentMorph methodsFor: 'as yet unclassified' stamp: 'jmv 5/10/2021 12:39:36'!
update: anAspect
	super update: anAspect.
	anAspect == #editSelection ifFalse: [ ^self ].
	model textProvider isEditingExistingClass
		ifTrue: [ self showPane ]
		ifFalse: [ self hidePane ]! !

!EruditeBookReaderMorph methodsFor: 'bindings' stamp: 'MM 12/11/2018 16:28'!
bindingNamesDo: aBlock

	bindings keysDo: aBlock! !

!EruditeBookReaderMorph methodsFor: 'bindings' stamp: 'MM 12/11/2018 17:20'!
bindingOf: aString

	(bindings includesKey: aString) ifFalse: [
		aString first isUppercase
			ifTrue: [^nil]
			ifFalse: [bindings at: aString put: nil]].
	^bindings associationAt: aString! !

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

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'Install-Erudite 7/6/2022 06:36:25'!
drawLabelOn: aCanvas

	| x0 y0 f w availableW l |
	f _ Preferences at: #windowTitleFont.
	x0 _  f lineSpacing * 5 + borderWidth.
	y0 _ borderWidth * 6 // 10.
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

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:37:20'!
getStyledText: aDocument
	^ styledDocuments
		at: aDocument
		ifAbsent: [ | erudite text |
			erudite _ aDocument parsedContents.
			erudite data: aDocument data.
			text _ model morphicRendererClass render: erudite notifying: self.
			styledDocuments at: aDocument put: text.
			aDocument data: erudite data.
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

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 2/8/2022 12:07:11'!
gotoSectionNamed: aString
	
	|section|
	
	section _ model findSectionNamed: aString.
						
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

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 2/8/2022 22:20:45'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	EruditeManual open! !

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

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 7/13/2022 12:19:17'!
saveBookAs

	| title |
	title _ FillInTheBlankMorph request: 'A name for the new book:'.
	
	title ifNotEmpty: [ |newBook newBookClass|
		newBook _ model copy.
		newBook title: title.
		newBookClass _ newBook store.
		"Copy some of the methods from the original book class"
		newBookClass class copyAllCategoriesFrom: model class class.
		model class hasComment ifTrue: [newBookClass comment: model class comment].
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

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'AS 6/16/2022 15:51:59'!
exportToLatex
	
	| defaultFilePath |
	
	defaultFilePath _ DirectoryEntry currentDirectory / (model title, '.tex').
	self request: 'Export to:' initialAnswer: defaultFilePath asString do: [:filePath |
		(model latexRendererClass on: model)
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

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 3/12/2021 15:11:37'!
assignLinkOption

	^ #word asParser plus flatten, $= asParser, {$,.$]} asChoiceParser negate plus flatten! !

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

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 15:29:41'!
markup

	^ heading / code / bold / italic / underlined / unformatted / link! !

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

!EruditeMarkupGrammar methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 15:29:26'!
underlined

	^ ($_ asParser min: 2 max: 2) flatten,
	   ($_ asParser min: 2 max: 2) negate plus flatten,
	   ($_ asParser min: 2 max: 2) flatten! !

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

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 6/12/2022 10:44:08'!
documentClass

	^ EruditeDocument! !

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

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 6/12/2022 10:43:57'!
start
	^ super start ==> [ :contents | 		(self documentClass contents: contents)
								parser: self;
								yourself ].! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 14:18'!
trueLinkOption

	^ super trueLinkOption ==> [:res |
		res asSymbol -> true]! !

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 15:30:03'!
underlined

	^ super underlined ==> [:res | EruditeStyledText text: res second style: #underlined]! !

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

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/13/2022 11:55:28'!
asMethodName: aString
	"Return a string that can be used in a method name."
	^ aString asCamelCase select: [:char | char isAlphaNumeric ]! !

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

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/13/2022 12:17:52'!
store

	"^ self storeOnMethod: self storageMethod"
	^ self storeAsClass.
	! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/18/2020 17:35:59'!
storeAsClass
	^ self storeAsClassNamed: self defaultNameForClass! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/21/2020 22:38:59'!
storeAsClassNamed: className
	^ self storeAsClassNamed: className category: (self defaultStorageCategory: className asSymbol)
	! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/13/2022 11:56:10'!
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
			s nextPutAll: '        self addSection: self section_'; 
			  nextPutAll: (self asMethodName: section title); 
			  nextPutAll: '.'; newLine]].
	
	bookClass compile: initialize.
	
	sections do: [:sect |
		self storeSection: sect on: bookClass].
		
	^ bookClass! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 12/4/2018 20:16'!
storeOn: aStream

	aStream nextPutAll: '(';
	              nextPutAll: self class name;
	              nextPutAll: ' basicNew';
	              nextPutAll: ' title: '; store: title;
	              nextPutAll: '; sections: '; store: sections;
			   nextPutAll: '; updateParents; yourself)'! !

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

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/13/2022 11:43:08'!
storeSection: aBookSection on: aClass
	^ self storeSection: aBookSection on: aClass prefix: 'section_'! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 7/13/2022 11:57:00'!
storeSection: aBookSection on: aClass prefix: prefix

	| source subsectionPrefix |
	
	subsectionPrefix _ prefix, aBookSection title asCamelCase, '_'.
	
	source _ String streamContents: [:s |
		s nextPutAll: (prefix, (self asMethodName: aBookSection title)); newLine.		
		s
		nextPutAll: '^('; 
	 	nextPutAll: aBookSection class name;
		nextPutAll: ' basicNew';
		nextPutAll: ' title: '; store: aBookSection title;
		nextPutAll: '; document: '; store: aBookSection document;
		nextPutAll: '; subsections: (OrderedCollection new'.
		aBookSection subsections do: [:subSection |
			s nextPutAll: '        add: self '; nextPutAll: subsectionPrefix; 
		        nextPutAll: (self asMethodName: subSection title); nextPutAll: ';'	; newLine].
		s nextPutAll: ' yourself)';
		  nextPutAll: '; yourself)'].
	
	aClass compile: source.
	aBookSection subsections do: [:ss |
		self storeSection: ss on: aClass prefix: subsectionPrefix].! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 2/26/2022 19:09:16'!
addSection: aBookSection

	sections addLast: aBookSection.
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

!EruditeBook methodsFor: 'accessing' stamp: 'MM 2/8/2022 12:06:56'!
findSectionNamed: aSectionName

	^ self findSectionNamed: aSectionName ifAbsent: [self error: 'Section not found: ', aSectionName]! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 2/8/2022 12:09:03'!
findSectionNamed: aString ifAbsent: aBlock

	sections do: [:aSection |
		aSection title = aString ifTrue: [^ aSection]].
	
	sections do: [:aSection | |found|
		found _ aSection findSectionNamed: aString ifAbsent: [nil].
		found ifNotNil: [^ found]].
	
	^ aBlock value
		 ! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 12/18/2018 19:32:55'!
parent

	"For navigation. BookSection interface."
	^ nil! !

!EruditeBook methodsFor: 'accessing' stamp: 'MM 12/4/2018 18:06'!
removeSection: aSection

	sections remove: aSection! !

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

!EruditeBook methodsFor: 'rendering' stamp: 'AS 6/16/2022 15:53:22'!
latexRendererClass
	^ LatexEruditeBookRenderer ! !

!EruditeBook methodsFor: 'rendering' stamp: 'MM 6/12/2022 10:52:36'!
morphicRendererClass
	^ MorphicEruditeDocRenderer ! !

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:48'!
edit
	EruditeBookEditorMorph open: self.! !

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 14:15'!
open
	^ EruditeBookReaderMorph open: self.! !

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 14:15'!
openInSection: aString

	|bookReader|
	bookReader _ self open.
	bookReader gotoSectionNamed: aString! !

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 6/11/2022 19:32:00'!
parser
	^ self class parser! !

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

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 17:53:21'!
booksList

	^ (self booksListInMethods, (EruditeBook subclasses collect: [:cls | cls new]))
		select: [:book | ({EruditeCompositeBook.EruditeDynamicBook} includes: book class) not]! !

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

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 2/8/2022 12:02:54'!
openInSection: aSectionName
	self new openInSection: aSectionName
	! !

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 6/11/2022 19:32:21'!
parser
	^ EruditeMarkupParser new! !

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

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
AdditionalPackagesForCuis
^(EruditeBookSection basicNew title: 'Additional Packages for Cuis'; document: ((EruditeDocument contents: '!!!! Additional Packages for Cuis

The Cuis base image includes only kernel functionailty, very basic libraries, and development tools. Optional functionality, that can be loaded as needed, is stored in separate code Packages. The Cuis community developes and maintains several dozens of such Packages.

Some of them are included in the main Cuis GitHub repository, at https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev in the ''Packages'' folder. Loading ''Core-Packages.pck.st'' loads them all:

[[[Feature require: ''Core-Packages'']]] doIt') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
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

* Exit the image. Usually without saving.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
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

Cuis is continuously evolving towards simplicity. Each release is better (i.e. simpler) than the previous one. At the same time, features are enhanced, and any reported bugs fixed. We also adopt recent enhancements from Squeak and share our work with the wider Squeak and Smalltalk community.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new        add: self CuisSmalltalkAboutTheNameCuis;
        add: self CuisSmalltalkLearningAboutCuisSmalltalk;
        add: self CuisSmalltalkContributingToCuis;
        add: self CuisSmalltalkLicense;
 yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
CuisSmalltalkAboutTheNameCuis
^(EruditeBookSection basicNew title: 'About the name Cuis'; document: ((EruditeDocument contents: '!!!!!! About the name Cuis

Cuis is the common name of a {https://en.wikipedia.org/wiki/Southern_mountain_cavy::url|small animal} that lives in Argentina''s countryside. Cuis Smalltalk was originally forked from Squeak Smalltalk and many of us are also active in the Squeak community. So, picking the onomatopoeia of the voice of a mouse for the name makes sense. As the project was started in Buenos Aires, ''Cuis'' (essentially ''Squeak'' in Rioplatense Spanish) was the obvious choice.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
CuisSmalltalkContributingToCuis
^(EruditeBookSection basicNew title: 'Contributing to Cuis'; document: ((EruditeDocument contents: '!!!!!! Contributing to Cuis

Cuis is maintained on {https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev::url}. The main meeting point for Cuis users and developers is the mail list {http://cuis-smalltalk.org/mailman/listinfo/cuis-dev_cuis-smalltalk::url}.org . You can broswse the archives for a glimpse of our discussions.

If you want to contribute code to the project, please read {Managing your code in Cuis::section}, about developing packages for Cuis, and {Cuis and Github::section}. While Cuis should work equally well with any file-based DVCS, we encourage the use of Git and GitHub.

In any case, we also accept contributions as ChangeSet files in email. Any contribution must be under the MIT license.

To contribute code, please use an image with all included packages already loaded, using updated versions, especially, of any affected packages. This will ensure we don''t break them while we evolve Cuis.
Here is a Smalltalk script to load all packages currently included:

[[[Feature require: ''Core-Packages'']]] doIt') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
CuisSmalltalkLearningAboutCuisSmalltalk
^(EruditeBookSection basicNew title: 'Learning about Cuis Smalltalk'; document: ((EruditeDocument contents: '!!!!!! Learning about Cuis Smalltalk

If you are learning Smalltalk, the Cuis community can help you. Check the {https://github.com/Cuis-Smalltalk-Learning/Learning-Cuis::url|"Learning Cuis Smalltalk"} repository. It includes several great tutorials. Also, the TerseGuide.pck.st package (in the /Packages folder in this repo) is useful both as a guide and a reference.

Additionally, there are many tutorials and references for Smalltalk in the web. They apply quite well to Cuis, especially those written originally for Smalltalk-80 or Squeak. These books {http://stephane.ducasse.free.fr/FreeBooks/BlueBook/Bluebook.pdf::url|"Smalltalk-80 the language and its implementation"} and {http://stephane.ducasse.free.fr/FreeBooks/InsideST/InsideSmalltalk.pdf::url|"Inside Smalltalk volume I"} are great introductory texts, and they are also the reference for the language and basic class library. Both are freely available.

The user interface enables you to access most of the code and conduct Smalltalk experiments on your own. You can review its features at {https://github.com/Cuis-Smalltalk-Learning/Learning-Cuis/blob/master/Quick-UI-Tour.md::url|"Quick Tour of the UI"}. ') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
CuisSmalltalkLicense
^(EruditeBookSection basicNew title: 'License'; document: ((EruditeDocument contents: '!!!!!! Cuis License

Cuis is distributed subject to the MIT License. See the LICENSE file. Any contribution submitted for incorporation into or for distribution with Cuis shall be presumed subject to the same license.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
Introduction
^(EruditeBookSection basicNew title: 'Introduction'; document: ((EruditeDocument contents: '!!!! Introduction

This is a manual about Cuis Smalltalk.

NOTE: Most of its content was taken from Cuis documentation at: {https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev/tree/master/Documentation::url}') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
ManagingYourCodeInCuis
^(EruditeBookSection basicNew title: 'Managing your code in Cuis'; document: ((EruditeDocument contents: '!!!! Managing your code in Cuis

Cuis includes tools and procedures for managing Smalltalk code. Code that is not part of the Cuis Core image itself, like applications, frameworks and libraries, should be stored in {CodePackage::class|Packages}. New code that are meant as patches, fixes or additions; that could eventually become part of Cuis itself, is not part of any //Package//, and is therefore automatically stored in {ChangeSet::class|ChangeSets}.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new        add: self ManagingYourCodeInCuisPackages;
        add: self ManagingYourCodeInCuisChangesToTheCuisBaseImage;
        add: self ManagingYourCodeInCuisLoadingChangeSetFilesIntoCuis;
 yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
ManagingYourCodeInCuisChangesToTheCuisBaseImage
^(EruditeBookSection basicNew title: 'Changes to the Cuis base image'; document: ((EruditeDocument contents: '!!!!!! Changes to the Cuis base image

The way //ChangeSets// are created and managed in Cuis is different from Squeak. This was done to make ChangeSets a good way to manage changes to the base Cuis Core image, while keeping code in Packages out of the way, so they don''t get mixed together.

What is not in a Package belongs (at least temporarily) to the Cuis Core image. Such code is automatically captured in a //ChangeSet//. The ChangeSet for Core changes is created automatically and named like //"1243-CuisCore-JuanVuletich-2012Apr03-22h50m"//. The number at the beginning is the next number for the Cuis update stream, and is provided only as a suggestion. The "CuisCore" part is to reveal that the code belongs in the base image and not in some package. Then we have author name and date / time of creation. These //ChangeSets// are created automatically. There is no longer a way to manually create them, or make them "current" or "active". It is best to rename them, replacing //''CuisCore''// with some meaningful name. These //ChangeSets// will not capture any code that belongs in a Package.

Opening a [[[ChangeSorterWindow openChangeSorter]]] doItWithButton: Change Sorter. will show the CuisCore change set. This is useful, for example, to check that no code that was intended for a Package ends here by mistake (because of the wrong class or method category). But it is also useful when doing changes to the base system. Now, we can do changes both to the base system and to a number of packages, all in the same session, without having to be careful about selecting the proper change set before saving a method: The code is automatically added to the proper //Package// or //ChangeSet//, simply following the class or method category. Gone are the days of messed up change sets and lost code!!!!

When the changes to the base system are complete, it is a good time to review the CuisCore change set and, maybe remove from it changes that we don''t want to keep (for example, experiments, halts, etc). Then, just do right click / File out and remove. This saves the //ChangeSet// on disk. It also removes it from the **ChangeSorter** (but it doesn''t remove any code). This is good, because the next changes done will end in a new CuisCore change set, and there''s no risk of having undesired changes in the old one. As changes to the base image progress, and several CuisCore //ChangeSets// are saved to disk, these numbered files are created in sequence. They will be ready to be loaded back in proper order in a fresh Cuis image, or to be sent to Cuis maintainers for integration in the update stream and in next releases of Cuis.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
ManagingYourCodeInCuisLoadingChangeSetFilesIntoCuis
^(EruditeBookSection basicNew title: 'Loading ChangeSet files into Cuis'; document: ((EruditeDocument contents: '!!!!!! Loading ChangeSet files into Cuis

There are two ways to load //ChangeSet// files (.cs): **[FileIn]** and **[Install]**.

**[FileIn]** loads the code without creating a new //ChangeSet// object. This means that changes that belong in the base image (and not in a package) will be added to the current ChangeSet for Cuis core changes, as if they were done by the user. This is appropriate when we are combining code from more than one source into a single ChangeSet. Any change that belongs in an installed package will be added to it, and the package will appear as dirty.

**[Install]** loads the code into a separate //ChangeSet// object (viewable in the [[[ChangeSorterWindow openChangeSorter]]] doItWithButton: ChangeSorter tool). This is appropriate for loading Cuis updates, or other code that we are not authoring, as it doesn''t add new items (class or method definitions) to the current ChangeSet for our changes to Cuis. Usually any ChangeSets should be installed before doing changes to the image. The reason is that an installed ChangeSet could overwrite changes done by you, or packages you have installed. If this is the case, the affected packages would appear as dirty, and your change set would include any installed changes (that don''t belong in a package). Be careful when saving packages or change sets if this was the case!!!!') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
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

This is not unlike using Git or GitHub with a file-based development environment such as Eclipse or a text editor. Like Cuis, these tools don''t do version handling themselves, they just load and save files; and let Git do its magic.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
Tools
^(EruditeBookSection basicNew title: 'Tools'; document: ((EruditeDocument contents: '!!!! Tools

Subchapters explain how the tools provided by Cuis work.

- Workspace
- System Browser
- Debugger
- Transcript
- Packages') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new        add: self ToolsWorkspace;
        add: self ToolsTheSystemBrowser;
        add: self ToolsTheDebugger;
        add: self ToolsTheTranscript;
        add: self ToolsInstalledPackages;
 yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:10'!
ToolsInstalledPackages
^(EruditeBookSection basicNew title: 'Installed Packages'; document: ((EruditeDocument contents: '!!!! Installed Packages

(Adapted from "CodeManagementInCuis" documentation)

The Package implementation in Cuis is based on PackageInfo, the standard way to specify packages in Squeak and its derivatives, and used, for example, by Monticello. It uses Package names to specify prefixes for Class and Method categories. Classes and Methods whose categories match a Package''s prefixes belong in that Package. More details about how PackageInfo decides what code belongs in a package are available at http://wiki.squeak.org/squeak/3329 .

To install packages (.pck.st files) in Cuis, use the [[[FileListWindow openFileList]]] doItWithButton: FileList., navigate to the appropriate directory (on disk, or in a GitHub repository, etc), select the package file and click on [Install Package].

Cuis includes a tool to manage installed Packages. It is at World / Open / Installed Packages. To create a new package (instead of installing an existing one from a file), click on [Create Package] This creates a new package, and associates with it all the existing code in the image that matches the package name.

{/home/marian/src/Cuis/Erudite/installedpackages.png ::image}

[[[CodePackageListWindow openPackageList]]] doItWithButton: Open the Installed Packages tool.

The operations available on installed or newly created packages are:

**[Save]** Saves a package on the file system. Overwrites any existing version. It is good to save the package from time to time, to reduce the risk of losing code.

**[Delete]** Removes the Package instance from the image. Does not remove any code. This means, effectively, to merge back the code into Cuis.

**[Browse unsaved Changes]** This opens a ChangeSorter on the ChangeSet that captures all the changes done to the Package since it was last saved. Therefore it shows the work done on the package that would be lost if the package is not saved.

**[Browse package code]** This opens a Class Browser that only shows the code that belongs in the package. This is useful for working on a package, or studying it.

**[Add requirement]** This opens a select list of loaded packages. Each package provides a Feature. You can CANCEL, require the current Cuis base version (at a minimum) or require any of the packages on the list. Required packages will be loaded before the selected package (Feature require: #''your-package''.). When a package is selected, the lower browser pane shows its requirents, which may be deleted. Don''t forget to Save your package after adding or deleting requirements!!
Also, use the buttons on the right of the requirements list for deleting and updating requirements. When a requirement is updated, the requirement version number changes to match the latest version of the requirement available. Don''t forget to save your package after that.

The tool shows, for each Package, the name, whether it is dirty (has unsaved changes) and the file it was installed from / saved to.
Packages have a description too. It is considered good practice to fill in package descriptions: edit the description and accept it (cmd-s), then save the package.

Handling Packages like this, Cuis behaves as a sort of document editor (like, for example a regular text editor) whose documents are Package files (.pck.st). Cuis doesn''t handle Package versions, ancestries, etc. If versioning of Packages is desired, the best is to use a versioning file repository, such as Git or Mercurial. The recommendation is to use a GitHub repository with a name beginning with ''Cuis-Smalltalk-'', so it will be easy for anybody to find it. Cuis Package files are uncompressed, use Lf (ASCII 10) as newLine, and are encoded in ISO 8859-15. This means they are Git friendly, and Git/GitHub can diff and merge them, and browse them with syntax highlighting.

This is not unlike using Git or GitHub with a file-based development environment such as Eclipse or a text editor. Like Cuis, these tools don''t do version handling themselves, they just load and save files; and let Git do its magic.') data: ((Dictionary new) add: ('/home/marian/src/Cuis/Erudite/installedpackages.png '->(EruditeForm fromBase64String:'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
zhuq3dIh1UxAo+Fe/PU29+arRsavtmRGwIIjDzT6z1pC28vakeec7xjXUTOmbdI5pZug6lJ+
kU747/lNV7kyuUMu5FfEv1OgsxHHTOEIe64ZrVG790iOhLOd1Xrt+lvWuY1oMyLKDAj77pN8
sONXnbYu3Injomdt3y9f/+JtRn1HS5gRi6wtn2J2cCR3tfleHNZG1Gw0vo29v0WrU5Fy//Uv
R7Aj3Gxo9w2hCWjMTZk5t5dduxtlEcggaI9CsA5SuXVNDfqtCzdW/GZU+n4pm6Gyt2Hz8472
7GQTjvZSgq1JXfUta3s85kzO93n0bazsNmYf007is+RqppNZykCOZyZb/e1Mr2WO7ysn5dvX
wa7MsVA2nlq+x5LLuO13xPqztTNH2UTtO6L0NfrveV+TW55Rsm86cURe9lSs7WGDRjbo83gn
KsuQD58Yr02JbNS3asoZaGhkoxYWSHjAlO3EPtu/Wh0B69dFFVmelbKspomcphKU7zxTsfmo
Xsb8leXaiH3bUVMG3TPdRNp1WfUKTLWcUoLCfOWd7rMU7uQX6eSvx3aizWcqM8kGLSyLcFj3
vP57uzVy3LBt3yMbVJVyJmF5fBDHTxZ2ZoPM0XNTrScHsZaN1Jdr66Ucn7V5v0z9S7UZbf2g
bEZLKavdmMlyKbdde7RoU2aC9rJrd4MsUjLYt4ejDo7uxXpGPvwrK7tngr5fyvulnQ2LnjfY
s5NNOH5XOVtzZXs85rCOu83FskP6NiZrY4I2ziXx+HIcvuZ9MtYm05WJ71osd7ArYyyUiKdO
77GZbXfV70joz37Jh0gHTnYk09eU7pu2HJENBgJrdqtl8wG8Qu53l7XfkMxQD7KRxkS0bTJm
lP3RfHbMDscZmZ7GGm+9zqBLKa9sGWqzsRxcxxxPF2AkCLrj+h/9BhVNDqvPHGVLqyNJlrk/
ftBtUHUnv1gn3UoWg0/hejxZKBtOF9s+L7tGTv8e+SxFBiP7N2J5mGWBPHyaqx3bzEGTZSW4
bJ/tb1eCxeBJF88W6M99/d3ajPP6QSbzW91YymZ2WpRpuglqlky3+aI4ubtt18rZfi/wlQJy
IJBB1B7CAMo6g1bZgS19v6yoXzrZsPF5kT072YT9d5W2NVnb4zFH+fxEsetW6duYYzmObZwn
yRFPAzzh7QZeUZn47mSTplhYBu4hXOvs2N5i/cmuoS4oV2RHlt/PL6tv2nNE0yAjac8RK76G
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
RU5ErkJggg==')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
ToolsTheDebugger
^(EruditeBookSection basicNew title: 'The Debugger'; document: ((EruditeDocument contents: '!!!! The Debugger

(this chapter was adapted from The Cuis Book)

The top pane in the debugger shows a view of the execution stack for this bit of execution context. The way to think of this, the model of execution, is that each time a method sends a message, it and its current state, arguments and local variables, are placed on a stack until the result of that message is received. If that message causes another message to be sent, then the new state is pushed onto the stack. When a result is returned, the stack frame is poped and processing continues. This works like a stack of trays in a cafeteria.

{/home/marian/src/Cuis/Erudite/debugger.png::image}

The stack frames are displayed to show the stacked receiver and method. The focus object, the receiver, for the selected stack frame has an inspector in the lower left debugger panes at the bottom or the window.

The next two lower panes are an inspector for the arguments and local variables, or temporaries, of the context frame.

The larger area displays the code being processed and hilights the next message to be sent.

The stack of (framed) execution contexts gives a history of the computation so far. You can select any frame, view instance values in the receiver, view the arguments and method variables at that point.

The two rows of buttons above the code pane give additional views and control of how the execution processing is to proceed.

Notable buttons in the second row:

* **Proceed**. Continue execution
* **Restart**. Start execution of the current method from the beginning.
    You can edit a method shown in the code pane, save it, and restart it!!
* **Into**. Step Into the code of the next message send.
* **Over**. Step Over the message send.
    Do the next message send, but stay in the current method.
* **Through**. Step into a block of code by going through - skipping - the intermediate message sends.
    Useful when you need to examine what is going on in a block of code, argument of the stepped message, for example the {do: ::selector} message. ') data: ((Dictionary new) add: ('/home/marian/src/Cuis/Erudite/debugger.png'->(EruditeForm fromBase64String:'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
bFmDMg/VNR2hVZxHLqfLgY1xIlMphFxpZR2ateaVmtzPuB8N6tPtamtxRKjIoMYpwrMLrdIK
HGGhiCxp0XyJz5zfBe8LhnXX6z+9bfzBhh9++OGHH374Ba+m4A1kHV75zXzpcbL0dn0U0ivM
vJnvv5yNVulFpUZV1rMBG+1e6/BWaqzDq1ePDpFFtkYhPNRVh8g4keVUPfa+3FSJ9Kgw1zZr
GfbUlYmMtpHgVV6uktoWprQtSojW2t4PhLS3OU2sFmBuP1P9qFsfRVjawjBKJQjlbPaoMOQ0
dppaLk53e5C+YFh3vf4z6Ft++OGHH3744WfIC17xuF0WDxbEV3l+aU1/vig//PDDDz/88MMP
P/wMA8HLDz/88MMPP/zwww8//IKXH3744Ycffvjhhx9++AUvP/wMd/jhhx9++OGHn+EEv+Dl
hx9++OGHH3744Ydf8PLDDz/88MMPP/zwww+/4OWHH3744Ycffvjhhx9+wcsPP/zwww8//PDD
Dz/8gpcffvjhhx9++OGHH374BS8//PDDDz/88MMPP/zwC15++OGHH3744YcffvgFL7/g5Ycf
fvjhhx9++OGHX/Dyww8//PDDDz/88MMPv+Dlhx9++OGHH3744YcffsHLDz/88MMPP/zwww8/
AwV+6vb9yy94+eGHH3744YcffvgZ0fALXn744Ycffvjhhx9++AUvP/zwww8//PDDDz/88Ate
fvjhhx9++OGHH3744Re8/PDDDz/88MMPP/zwwy94+eGHH3744Ycffvjhh1/w8sMPP/zwww8/
/PDDD7/g5Ycffvjhhx9++OGHX/DyC15++OGHH3744YcffvgFLz/88MMPP/zwww8//PALXn74
4Ycffvjhhx9++Blmgpcffvjhhx9++BkUcIgffvgZNPgFLz/88MMPP/zwww8//IKXH3744Ycf
fvjhhx9+RoTg5Z/zwQ8//PDDDz/88MMP/0tr/PDDDz/88MMPP/zwwy94+eGHH3744Ycffvjh
h1/w8sMPP/zwww8//PDDD7/g5Ycffvjhhx9++OGHn2EteLvbqhAfVYjmTv7O6S87drdVItZi
x8FOf/v1bhvatu9Ca7Ud0WGhCA2LwVpH1yDYUNgmwj4k7THQfaXnM/wMt1hw9f14uMR1fr/n
hx9+wUsTXEZiwDMreId0O5x1SLfEYNsgCN2rJhS62lBfZkWkJOpFW3OqWnCFfxwMjzo6m7Cx
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
+OGHH3744YcCfsHLDz/88MMPP/zwww+/4OWHH3744Ycffvjhhx9+wcsPP/zwww8//PDDDz/8
gpcffvjhhx9++OGHH374BS8//PDDDz/88MMPP/zwC15++OGHH3744YcffvjhF7z88MMPP/zw
ww8//PALXn7Byw8//PDDDz/88MMPv+Dlhx9++OGHH3744YcffsHLDz/88MMPP/zwww8//IKX
H3744YcffvjhRxd++Olv+AUvP/zwww8//PDDDz/8gpcffvjhhx9++OGHH374BS8//PDDDz/8
8MMPP/zwC15++OGHH3744YcffvjhF7z88MMPP/zwww8//PDDL3j54Ycffvjhhx9++OGHX/Dy
ww8//PDDDz/88MMvePUELz/88MMPP/zwww8//Iw0+AUvP/zwww8//PDDDz/8gpcffvjhhx9+
+OGHH35GhOBtXbCAH3744Ycffvjhhx9+hjX8gpcffvjhp59oXcD/lx9++OFnKMIvePnhhx9+
+OGHH3744Re8/PDDDz/88MMPP/zwwy94+eGHH3744Ycffvjhh1/w8sMPP/zwww8//PDDD7/g
5Ycffvjhhx9++OGHH37Byw8//PDDDz/88MMPP/yClx9++OGHH3744YcffsHLL3j54Ycffvjh
hx9++OEXvPzwww8//PDDDz/88MMvePnhhx9++OGHH3744YdA8J7InoIp192GZwr4jTuUkPtl
7G3YWzAS2hKHaeHRA9YWfh9mHB8D61NDvU0D5fMj0a79FUeGqm2Gavxj9iX+69oQFbxH0+/F
rHvj8HA+v4MNJeR+mRaHKj/9Mtw4kTcXpcnp2D9/YMqXbTXEfZg/eA0vnxrqbRoon/euA5Pf
Gtl0qPrcUI1//Wkvxvg5HK5rA02/C97D+YuwwL4YVYv4L6JDCblf8hbj6RHQLydWPIf2Y6/j
/LIBtNUQ92H+4DW8fGqot2mgfN67Dkx+a2TToepzQzX+9ae9GOMnvzYbQMH7YNJkJIwdg+uv
GYuEyQk4WKS+s5qA9TPuRHL4dbj+OtUjioI0rI8eh4ljrhG/hyN5SlLPccdS78CkcXF4UznP
m3HjRNnjsSlHVW74HeLfRXhtxh2YJp/7Gtw49ibkzMjGCXcdi7Lx+OTxmCSdY4xUt5l4s+hq
GD/4erptuGlmHDJvuk4+fuK4yXg8p6i3/IJUrLktHDeKbZE3RaM8fSGK1YLXRPm+fWRQ56uQ
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
CtGbu36959QAU4L3dZSk3oMJN0jluERt6A23I37RDpUQ81qlIUR7lQbzgvcXmLhMtXKEtEqD
1zq9z29dKsTwmN5pG1qrNOw/iWSRcR09U1qF4TyuzxPZWJNTGlyCVlqlQZoOIY4XojZm7TEv
Ye2aq/vf1Vnf587i+unnMfVp94tyBi+tBeg//IKXH3744YefYS94pZUJEi0x2NjSSf/Z4It1
doRHlemuWDHQnbnvuaWYIMTtz34xRs7o8n9pbQC5yl9eGz64vrQmLdn2s9FC6PMLXn744Ycf
foad4O3uxPEqO2Ijwlwvr3URil3p08JS+6OsKNd5YW0wBO9ACBZ+wcsvePsb/sDLDz/88MPP
MBO8/AQCv+DlF7z88Atefvjhhx9++AUvv+AdYoKXH374BS8//PDDDz/8gpcffvjhhx9++OGH
H36GCfyCd2SDn/j/8sMPP/zwww8/5PALXn744Ycffvjhhx9++AUvP/zwww8//PDDDz/88Ate
fvjhhx9++OGHH3744Re8/PDDDz/88MMPP/zwwy94+eGHH3744Ycffvjhh1/w8sMPP/zwww8/
/PDDD7/g5Ycffvjhhx9++OGHX/DyC15++OGHH3744YcffvgFLz/88MMPP/zwww8//PALXn74
4Ycffvjhhx9++OEXvPzwww8//PDDDz/8CH7q5v/LL3j54Ycffvjhhx9++OGHX/Dyww8//PDD
Dz/88MMPv+Dlhx9++OGHH3744Ydf8PILXn744Ycffvjhhx9++AUvP/zwww8//PDDDz/88Ate
fvjhhx9++OGHH3744Re8/PDDDz/88MMPP/zwwy94+eGHH3744Ycffvjhh1/w8sMPP/zwww8/
/PDDD7/g5Ycffvjhhx9++OGHX/DyC15++OGHH3744YcffvgFLz/88MMPP/z81M3/lx9++Ble
8Atefvjhhx9++OGHH374BS8//PDDDz/88MMPP/zwC15++OGHH3744YcffvjhF7z88MMPP/zw
ww8//PDDL3j54Ycffvjhhx9++OGHX/Dyww8//PDDDz/88MMPv+Dlhx9++OGHH3744Ydf8PIL
Xn744Ycffvjhhx9++AUvP/zwww8//PDDDz/88Atefvjhhx9++OGHH3744Re8/PDDDz/88MMP
P/zwwy94+eFnIOCHH3744YcffjjhF7z88MMPP/zwww8//PALXn744Ycffvjhhx9++OEXvPzw
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
Yr91U0S2LGBbhJiNKlGVb94GPrZrqkapLUYcJ03FKMGeFv4MLz/88MdbfsHLD38A5oeablyt
v5rjR2Qp00WWsryxo2c6gJzdtAQjeKv8ZHhFFjTCM1vreUyQgjegDG+3nNVdK7K6pU0dItsb
hWhlSkWgNtC2cSdaq20IVzLXV7u/B8xf+OGHn4DGD7/g5Yc/APPDz1AYP8o81LVKZrLb2YJt
NgtGBZHhdZUlhKhqrqw0//ZAYRRipfm47uM6O9Dq6OidwxuM4FXPqe0UdZbm8FY4dF4Y60J7
VRwi4+yIj4jBRkdXUDbwvFlwoFm044pS/sU6uxC8FfyClx9++OMtv+Dlhz8A88PP0Bo/0koD
hULQhcrTDiLjSlBTKx7/RwQheOWXy6yIVFZjyGlQrdJQYXOt0iDOER5lRamymkHwUxo8V2mI
V638oElHNeJDQxDqvWJDADbwLK8B5dI0iFDVcfxTGvjhhz/e8gtefvgDMD/88I+fvsK/3i+/
v/DDD7/g5Yc/APPDDz/8gpcffn/hhx9+wcsPfwDmhx/+8cMvePnhj7f88MMvePnhD8D88MM/
fvjh9xd+e/DDD7/g5Yc/APPDD//44YffX/jhhx9+wcsPfwDmhx/+8cMPv7/www+/4OU3ED/8
AZgffvjHDz/8/sIPP/yClx9+B+L3F3744R8//PD7Cz/88AtefvgDMD/88MM/fvjh9xd++OEX
vPwERDeGwl9+f+GHH/7xww+/v/DDz3AaP/yClx/+AMwPP/zjhx9+f+GHH37Byw8//AGYH374
xw8//P7CDz/8gpcf/gDMDz/88I8ffvj9hR9++AUvP/wBmB9++McP//jhh99f+OGHX/Dywx+A
+eGHf/zwww+/v/DDD7/g5Yc/APPDD//44YffX/jhhx9+wcsPfwDmhx/+8cMPv7/www+/4OUX
vPzwB2B++OEfP/zw+ws//PALXn744Q/A/PDDP3744fcXfvjhF7z88Adgfvjhh3/88MPvL/zw
wy94+eEPwPzwwz9++McPP/z+MhLBT938f4cS/IKXn35zIH578MMP//jhh99f+OGHX/Dywx+A
+eGHH/7xww+/v/DDD7/g5Yc/APPDD//44Ycffn/hhx9+wcsPfwDmhx/+8cMPv7/www8//IKX
H/4AzA8//OOHH35/4YcffvgFLz/8AZgffvjHDz/8/sIPP/yClx9++AMwP/zwjx9++P2FH374
BS8//AGY3x788MM/fvjh9xd++OEXvPzwB2B++OGHf/zww+8v/PDDL3j54Q/A/PDDP3744Yff
X/jhh1/w8sMfgPnhh3/88MPvL/zwww+/4OWHPwDzww//+AkEfoYw/P7CDz/9M35+l5DEL3j5
4Q/A/PDDP3744fcXfvgZuePn+dlz+AUvP/wBmB9++McPP/z+wg8/I3f8PJpayi94+eEPwPzw
wz9++OH3F374GbnjZ17mRoRUpSziH1D88AdgfvjhHz/88PsLP/yMuPEj6dwJc/chZHb2k/Lc
Bu+32fjhhx9++OGHH3744We4IulbSeeOlwSv9J/szCp+0csPP/zwww8//PDDz4gRu5K+lXRu
j+CVkBSwenoDP/zwww8//PDDDz/8DDckPevO7Lr5/wHdAwDI5tvHpgAAAABJRU5ErkJggg==')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
ToolsTheSystemBrowser
^(EruditeBookSection basicNew title: 'The System Browser'; document: ((EruditeDocument contents: '!!!! The System Browser

(this chapter was adapted from The Cuis Book)

Smalltalk organizes instance behaviors using classes. A class is an object which holds a set of methods to be executed when one of its instances receives a message that is the name of one of these methods.

The System Browser, in short the Browser, is a tool to rule all the classes in Cuis-Smalltalk. It is both a tool to explore the classes (system or user ones) and to write new classes and methods. 

To access the tool ...World menu  Open...  Browser... 

{/home/marian/src/Cuis/Erudite/system-browser.png ::image}

[[[BrowserWindow openBrowser]]] doItWithButton: Open a system browser.

At the top left are the class categories, groups of classes sharing the same theme. A category can also be used to create a Package, which is an organisational element to save code in a file system. In figure above, the selected class category is Kernel-Numbers, a group of classes we already started using. The term Kernel- indicates it is part of fundamental categories, but it is only a convention. See the other categories such as Kernel-Text and Kernel-Chronology related to text and date entities.

Next to the right are the classes in the selected class category. They are nicely presented in a parent-child class hierarchy. When a class is first selected in this pane, its declaration appears in the large pane below, the Number class declaration is: 

{Number::class}[embed]

A few important points in this declaration:

* {Number::class} is a subclass of {Magnitude::class}. This means Number is a kind of specialized Magnitude.

* The declaration itself is Smalltalk code, indeed the message #subclass:instanceVariableNames:classVariableNames:... was sent to Magnitude to create this class.

* The **subclass:** argument Number is prefixed with "#". It is a symbol, a kind of unique string. Indeed when declaring the Number class, the system does not know about it yet, so it is named as a symbol.
    
* The instanceVariableNames: argument is a string: the instance variables of the class are declared by names separated by a space. There are none in this class definition. 

A subclass inherits behaviors from its parent superclass, and so only needs to describe what is different from its superclass. An instance of Number adds methods (which define behaviors) unknown to an instance of Magnitude. We will explore this in detail as we go forward.

To learn about the purpose of a class, it is good practice to always visit the class comment. Often a comment also comes with code examples to learn how to use the object; these code snippets can be selected and executed in place as done from a Workspace. In the figure above, see the comment button to read or to edit the comment of the selected class.

To the right of the class panel is the method categories panel. A class may have many methods, so grouping them by category helps other users orient themselves in finding related methods. As a reference, {Number::class} has more than 100 instance side methods implemented in itself. Clicking the arithmetic category directly gives access to related methods in the next and last pane at the right. 

**Tip**: A right click on the Class Category pane brings up its context menu. You can select **find class ..** or, as the menu indicates, use **Ctrl-f (Find)**, to get a fill-in panel and type part of a class name to match.') data: ((Dictionary new) add: ('/home/marian/src/Cuis/Erudite/system-browser.png '->(EruditeForm fromBase64String:'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
UVnO3UhMipew4Cg5fiFcDlyOkpt+0XJa89+6ar53ouZ7J9y5rbnhjpQTF8Nl95lQOXg5Qq74
35ZYzc1rQuJtOX8xTF58pZ62k84+nSUtaPTVBA3/bDf6nnLx8D+ybf9J8UyfMqQO8vO+elyu
7d8mjpvXi+O//8pNx6sSEKr7bwIl2PuKuBzbJY5bNX+/fbtcPXlavL19JSTohrgcPyRuLu4S
GqGChuZmXBNMnBxOiX9IzkEjLDxInF385agmSPmEZ349xM9f9pzyE1ftzw2SoCB/uXTVT/49
6i2bjnjLXkfN6IVPkPb8DvWafH395fhZH9nq4C0HrnjL1sVX5a2xruKo+bkhoYHidN1Pdh31
lS3HfOXoTc3Ihoe/HHT0F4/QtP/ez8dPjp/xli2H3WXTCV/xiEj/ucH+csVJ898e85bNmp+7
57yvXPLW/dwg8dO8zpOaALpN83P3Xw7QjJj4y97T/uKWXq8ATdDoaYZBQy3Y5AcNPmPDH9Uw
bWprW/X+ZR+V5+Pj4wcNPiOgtnhUc1yzf/3G5m7ynKWt2L/6sQxbuFs8w3O+6TdVIX6+sueI
p2w6pgkLVzSjE5vd5O0u1+W7nf4SHFlIryvMWfYsGyrv1bKXkmVfk2H/mGfQyHowJB9fYVMB
Q7VLFTj49TA9uh3E1HpDfj34+PhBg8+IqDmtj5o2EBJwVS6ePylnLzjKDS/vLCdbm4kAX9m4
9rq8391JSn1yWWr0dpFRO9X0psJ8XZpREt/rcumipu7nz4lrkK9m1Cve7KY48M8u4DMmaq2G
bp6/OpeBXxPTDIrZd07k4+PjBw2+QqbmtKoOWt0AZv+7yJjQDBHRIUYdGiKiQx94veYk0QyD
Bn8uNZ+xWbVmpbZt8s9jMD26szT462z4+PhBg89InwT9MGhgrv8uNj7KiIJFsGT/My4xVvs6
+YybeuKo2hv/qTGfsVFr1CraV9ROJT12woFfExOiRqTU+1a+Qnl+Pfj4zBA/aOgR6R0q87eG
yfUY3dfixMs5XBau8ZfhKwPFJT5O3K4Gy/iFHjJsoXuGketDxTMx9++tTvf2vBkqS/aHy63b
+X9tv06epL3xU3/m2pEHXZS/F/0iQwYNkh+nrROXsJxv+A0h6MpK2Tdjmbj66b7mJ96nNsmR
ST/J5jGLxT00QG5d3SmzRgyUH4aMk6W7TkhgLD9o8IMGH9+T0fWH3w8cwK+HiVGjGeq9U9OB
+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
mw2czux9a8WY1pNqlygZ1WDYkaVR6r0sxDrl+TWaxXti5Nc5v82bfl/KDxpmEjTM7fP2bpEz
I+qOtaz8afDE7Re/8gqNrhwT4V/u+sH5H3eubXW1zOfLHHxSpaSha5mSnFysIB7qFOjnFv9a
4weNHIPG3Z22X5Wu5Np39a4ff2n/9rpGdaq6lK9YJ6TF+EOzQ++LlUjcs1f/6t+tWd2K10pa
FL9rVbp6TJMOE3ceCEx5UVL9iv/5Wam/LZ4tklLUskSS7YtD3I7dk4oJN9bWGfTZq/9WtrWI
KWZZ6m6117tennk8rKX2otH78zQXWNDhSlM6NVldzc4yysKmSnzjDpN3HlI/T9dZhZ8sP6/X
u4tfKFcy1KpE6YTqTTtenrjXt9M9kWdz7vhK7ni9V69tDcu09F4RdL9+5t+nFHGa2GhohTY9
jn9RupKnruN75PdP9bPI6ffVdXztFh0cO6tTo1WVbSxjrMrViWwx7tCckPTfKTngYJXJXd5Y
VbNMiXD1Pas1/tJpzA7PHkna13y/SKzj7416NHnupI21TULFup+6jdy8oH9nmxJeaRdsLu+B
WX5YBRZf+UXpdRYvD3E7GpP9aVFqEf+N/du07PHb+nPxYp+9Y8u17eVax3zWOB+vMff3XnXO
addEn+X//DS85RtbX61ezrvs8829xx1y73j+j6+//fC1uo7PlbMPq9/lz+1OiVIu3/9e3zWj
75p8xHXO7+hpbb6A+9L4vbX09aP8vtQUgoapf95m+51SXC1nvGG5r/rg46uz32PEX9nyypL1
p3r4J6cFjVx/bsy68m2sy/h+vfvu1xnfI/7vMu2ty/hov6a5rrvaVnHvt2TZyO4vl7lg03zR
qYBUKWHY+6F89DMGqGO+XhufGQcN7UVr4VKmUf9rm7zvNlCNJ+rw9x/UtqwbMeZC8mcpztPq
vG5dN2jALp+v41PvF78b6ljx9zZV11XptXNrrEhxSb5gPeZl6xMZTxySr1hNaGDpULndkv1O
kUmVk+N9bQ4Of21Cicq9/ffESXV9P09d1PPeK/Vv1S9/33/WP/qFaL8T1aY2K7fDrtkfpzzU
601xt/ijWZktNTr8uedC+L2qkhxZ3Gll9+61bN8ImXYt+YNHdXxvTN05d9qbtvvemev+a2rG
k5HTJYe/VOVUr81/DepUopKXtuPT9/2z/74ZT1iKu9jX73Jj2hHvtrEJEbbXV3Tq8ZxF3ejR
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
qhRLiXWz+6d37d9Kvj3H0S1F7CTFyXJiQ8sjNfrt3hgcHVsu9tTwN1+wqB35f3tCeibfTyjq
99/097u2fHN3bYsqUX32xfXQ+2GS4mw55x3bXeWbTzl51CeqbpTPiRqzW1b+x+79+WdvpYit
uoFa8GGpbaX+N/riAd/EuvdT44q67xj0RSO7FwIHH01or6/jk5SbllOalttftmyFyA4bwgem
7YSV2fHp/f7Zfl9VE/2/k4vmd7LbZf/5PIcLkSnPqUVRl/5o06eKzZth068nfyDxh0r1r25x
+fkea7c7xyRVTAg8VXlOhzprylqUSOi8JbGfv773wBynkniuqdmpusWNErXbeI1bdaD/+es3
Gzqd3fvW8pGfTalpVTb63SnnZmpHA9Jvujpvvdv33pnhTR7d9mJ7PLqOsxyPLG7xf/mtcZ5e
Y4pLiVzf+yxtpaCCRnKKm1WubTovQSOnds/v6FltvqD70jt7S+tvh/y+1JSChul93t7t99Dv
lHjeZvxrJf+zqdfDde6/57q4+YfUCA3yrnzNYfUHIz6032NZ+wePw7FSTW/bTL5o/fMrlide
GHBorXbb3yQ/y+0/NJlW1qJMwqOChhj6fig//cyT1vExXhsfdkTD13L3uHajm9Qo7WFdvHiS
VamqsY1aj9y3xf1uQ933c5r/Wb+qJaxiSlXv6b0pPOjlA2M+/rlWKauIkmVrRDXtOmvbiRCX
F/9sWWV9CbtaMQN3buur96lVwIEqkzq8tq6qrUV08RKVEhp8OWHPgYCUjPSdGnq8wpye7yyp
Va5EqJWV7Z1Kr7ZwGbL+Zj/9w/3qiUhqEd9FzXqWrPSN/+7bUiNtKkKWjk/v98/2+0befzEv
N2opQf9Vmtrl9VXVy9qEl7QpG1fjza4Xpx4K+DI5fZu4iBMz3urQwP58CQuru2Vf/Njzp80r
v+tXpYRT+7/jB0iyr0Xu74GZ3niFnK64ZEjb6W/UKu9WoljRexa2leNebfbN8am73Dsn6t7r
LDddkhpcLNe2t9vt60fW8TFrnJfXmPt7/xSChubn5Nqm8zR9Mod2z+/oWW2+oPvS4D2N9bdD
fdcTvy81qqBhip+3OfxeqeHnyi0b2m7aWy/aO9taFL2rDuwr/3wTn5b95604EnAvoy/U93ND
Do774LOXKlwrV7VOYMO32pwbs2P1t30r2zl133G396POBzHo/VB++pknvdYe87XxmUXQ4OPj
4+Pj4+Pj4+PjBw0+Pj4+Pj4+Pj4+Pj5+0ODj4+Pj4+Pj4+Pj4wcNPj4+Pj4+Pj4+Pj5+0ODj
4+Pj4+Pj4+Pj4wcNPj4+Pj4+Pj4+Pj4+ftDg4+Pj4+Pj4+Pj4+MHDT4+Pj4+Pj4+Pj4+ftDg
4+Pj4+Pjyz95ho+Pj48vDb8IfHx8fHx8fHx8fHwG9/+0zlBgI8MZ2wAAAABJRU5ErkJggg==')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:10'!
ToolsTheTranscript
^(EruditeBookSection basicNew title: 'The Transcript'; document: ((EruditeDocument contents: '!!!! The Transcript

The Transcript window is often used for logging and printing results of evaluations in Workspace.

To open the {Transcript ::class} use TheWorldMenu and choose //open...//. Then choose //Transcript//.

{/home/marian/src/Cuis/Erudite/transcript.png ::image}

[[[TranscriptWindow openTranscript]]] doIt

You can write to the Transcript from your Smalltalk code (or from the Workspace) with

[[[Transcript nextPutAll: myObject printString.]]]
[[[Transcript cr.  "carriage return"]]]

Or, abbreviated using a semicolon to cascade commands.

[[[Transcript nextPutAll: myNextObject printString; cr.]]]

{cr ::selector} is a message sent to {Transcript ::class} to add a Carriage Return to the stream. 

End your protocol writing by [[[Transcript endEntry.]]]

**Tip:** right click on the Transcript body to access a menu with several useful actions for clearing the Transcript, getting a Workspace with the Transcript contents, start/stop logging to files and stdout, etc.

{/home/marian/src/Cuis/Erudite/transcriptmenu.png ::image}

**Tip:** Transcript contents cannot be selected or edited. Use the //Workspace with Contents// menu to get a Workspace with the contents of the Transcript from where you can select and edit.') data: ((Dictionary new) add: ('/home/marian/src/Cuis/Erudite/transcript.png '->(EruditeForm fromBase64String:'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
WBzDnOdl3l+c3m3i54cffvjhhx9++Nk3+NkX+F0L88MPP/zwww8//PDDL3j54Ycffvjhhx9+
+OGHX/Dyww8//PDDDz/88MMPv+Dlhx9++OGHH3744YcffsHLDz/88MMPP/zwww8//IKXH374
4Ycffvjhhx9+TjjBK90TG7qd67b3sMF/LBk//PDDDz/88MPPERS8S3kOr506h7e7Pod334Tk
7g4aRh+z+IXFBLa6s3Ltyy94+eGHH3744YcffvjZV8EbeVprxz2tee7a09p+CklFQ1M30Jut
412Mbei6DlXlF7z88MMPP/zwww8//Oy74J1hYKgwh/NaAjDu2Sx5XXoxa8PQlNBS3IQduvgN
fmdh0LNgdN3A7S88OC0D7UEn4Slt7nRgNjUo0mObEMmGPUDosG0Vz9Dpo9VU/edoRgdO3E1x
iSe28vj5BS8//PDDDz/88MPP0RC88yFM1USB3q0neP34muit1KOH+TzlWth10BICdboMfm8Z
XUynadfAE7iRuXnhYtjSoLZGQh6H8QihqrdHCAzFHiYdYSE2h5ijquvhkvj5BS8//PDDDz/8
8MPP0RC8csNZmbirJXg9RwhePbE8YjMeDyNbWHUnHmYDE0ZvhkVKkG6kwe1C19q+SA7iSYr0
4LqNybKa4C2Pn1/w8sMPP/xswA8//PBzAnFwFl4sMZ8M0LaaUBUFmtnGcLrYiGcxsWG0eugY
JgaztCAVcYz7sE1htZWb6EQ8SmN3tamtXno2r28TPz/88MMPP/zwww8/h1XwVljDC3nsmGph
5MUE5LQNTS0TiAu4Awuq3oGbtpwuJmhru2jElyFEglRYiS1hJe6M54iMxL4FVq0oaEvSu038
/PDDDz/88MMPP/wcWsG7PqWhEz+lYTFbn9Lgi1MVVrj5DN4UfVPFbpZF1HMxcecIbbqYOy0h
eLubglc+d+ZiFt9oFgnWcB1wN7IMy+dZOc/LErwl6d0mfn744Ycffvjhhx9+DrHgDcTnCL1W
6hze3vocXm/Sg6XLkxfkMoUOhk4HeuamtRE6cqmAPP1A/tZoY5CxpCFNesmBO7TFb2NxDHOe
l3l/cXq3iZ8ffvjhhx9++OGHn0MuePnhhx9++OGHH3744Ydf8PLDDz/88MMPP/zwww+/4OWH
H3744Ycffvjhhx9+wcsPP/zwww8//PDDDz/8gpcffvjhhx9++OGHH374BS8//PDDDz/88MMP
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
5I7ctik6KblbWE7nRef/FQgt0el1tPWU39jOW58oBgoz3LxWJni3SUfOYOZNh2jL6ckontR5
vwcjeIOpO6O5XlaxEELDNsKd4Q1RTlY3sXO8uuANRJUjd0DLKVlhaVB1E+1hbINhale4sXGK
Q970Ww+Wrvhxyt3uQye+O10InKEt7g2eqRnC2hfbvV7+zuVAJmYBLKd42s7ftLIjZhAaSJyl
GZ+a9Hd5G9D8qdDUOZll91eJPy9NwoqzCkrMGrOUmzLDcztlHSzatFaWfjlYDlqrd+uXc2I6
NB2feC99uRs+bEvCeml146cGlMQXWeSadomFUK7VFZat2FIh39onZnpa8Rv9Xf/NcLmATEvx
rv/Mv8vNU6bmr4tO53c/ljQU1eNIKPbipzQM2punNOS0v+y2XL89ZpVJ3XIt62fL4i3rEwrb
fOYpDRXKr2zTWsW+VC7BUY2MWZO99i9V+usKz6gzHvDDD7/g5ecEJ/K0xr8qKxpEesJSYo8X
/GVxYr2YA/e0dsK35Pg0f+1qX395Fz/88MMPv+Dlh5/DKhrGcrNat/LGK374OTDE1P00OjFG
WnsNZX3KCL/g5YcffvjhF7z88LM54ssNfHJqsMTdLj/8nChVdtZfuYkucyzBL3j54YcffvgF
Lz/88MMPP/zwww8//IKXX/Dyww8//PDDDz/88MMvePnhhx9++OGHH3744Ydf8PLDDz/88MMP
P/zwww+/4OWHH3744Ycffvjhhx8JcEz/wS94+eGHH3744Ycffvg50vALXn744Ycffvjhhx9+
+AUvP/zwww8//PDDDz/88Atefvjhhx9++OGHH3744Re8/PDDDz/88MMPP/zwwy94+eGHH374
4Ycffvjhh1/w8sMPP/zwww8//PDDD7/g5Ycffvjhhx9++OGHX/DyC15++OGHH3744YcffvgF
Lz/88MMPP/zwww8//PALXn744Ycffvjhhx9++OEXvPzwww8//PBzdOCHH34OBXF9O/3oRfyC
lx9++OGHH3744Yefoyt4P/feK/gFLz/88MMPP/zwww8/R1fw3vrWV/ILXn744Ycffvjhhx9+
jq7gveIVNk5639tfxi94+eGHH3744Ycffvg5coJX6tzHntvDSUqz7a9tSO9m4w/8gT/wB/7A
H/gDf+AP/OGwBqlvpc59jCoEr/zHxS+9mV/08gf+wB/4A3/gD/yBP/CHIyN2pb6VOncleGWQ
Cji+vIE/8Af+wB/4A3/gD/yBP/CHwxakno0su1H4/wCBRax8RjYZxgAAAABJRU5ErkJggg==')); add: ('/home/marian/src/Cuis/Erudite/transcriptmenu.png '->(EruditeForm fromBase64String:'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')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
ToolsWorkspace
^(EruditeBookSection basicNew title: 'Workspace'; document: ((EruditeDocument contents: '!!!! Workspace

//A window used as a scratchpad area where fragments of Smalltalk code can be entered, stored, edited, and evaluated. (Inside Smalltalk, vol I, p. 71)//

A workspace is a place to quickly try out code snippets and thus develop code which later might be copied to instance or class methods.

{/home/marian/src/Cuis/Erudite/workspace.png::image}

[[[Workspace openWorkspace]]] doItWithButton: Open a workspace.

You can then type in any Smalltalk code inside the workspace window and execute it or inspect it.

This is normally done by typing in some code, highlighting it with the mouse, and then selecting //"do it"// or //"print it"// or //"inspect it"// from the pop-up menu. Or //"debug it"// to open a Debugger on the code.

For example, if you type [[[3 + 4]]] in a workspace, highlight it, and select //"print it"// from the pop-up menu, it will print the result [[[7]]]. You can type any small or large piece of Smalltalk code...

You can create and use temporary variables local to the workspace. You don''t need to declare them like in methods. Variable names starting with a lowercase letter will automatically be created as a local variable (e.g., i := 2). Variable names starting with an uppercase letter will cause a dialog box to question if you want to create a Global variable or pick from similar variables (e.g., I := 2).

**Tip:** Have a look at the window menu button (blue button on the top left of the window) for configuration options and actions like //Save as ...// for saving the contents of the workspace to a file.') data: ((Dictionary new) add: ('/home/marian/src/Cuis/Erudite/workspace.png'->(EruditeForm fromBase64String:'iVBORw0KGgoAAAANSUhEUgAAAooAAAFWCAYAAADuYLxFAABFDElEQVR4XuXdeXgUVaL+cZ77
1318nnlmnuudZ9wet4yDA7gAggFENpHVQDZIIBAhEBYJEDQICMgikV0xyg4i7kFUgqAgIIgY
iUBYQhISExAGQXAG+WXmzr04M+/vVHeWTtLdVU11HPX7x+dhOV2nTtWpqn77nKruRk0SXlHb
Yau0LmeM/vKX7nx8fHx8fHx8fHBWLrTyoScovrzpMX33XTc+Pj4+Pj4+Pj4+DysfNnp6+RRd
vNiNj4+Pj4+Pj4+Pr5ZGnx9K0LffPuzX6VMP6bOcttr6/P16L629NqV00fsjOypnRqR2rotU
WUnngMsGrPN0F+3d3Upb3mqqd5f8Qe8vvFPvPfcHbVrbWDs+uFtl5aHXeerrLsr5qLWeX3uv
xj57t4bPbqFRc+7VrKy79Ep2C5WUhl7nyVPd9O6WXpqzbICSJj2h6PRZ6p8xRU/MH6rlb8SY
Oh8Ouc5gvsr5g+658SY9tfuh2mXH71P/xtfqxgeaaffp2sscXxOhxrfeqrmfh6kdp9sotfFv
9dDc9mHdNj4+Pj4+Pr6fp0bnzj0sf8oKu+jjl9vqo6nd9flTA1X8zBMqnzddpZmTdXDaMO1+
Mlo5C9ro+IGOClRHvTpLO+njzc314Zr7tO/lzip6K0Hl7wxRaXaSDq7voU9WtdGm1+7S8YL2
jussPNFJL799n6a/2FbTVvZS5ptDtODd0ZqbPVwz1kZr8kudtHBFcx3If9BxnQVFPbT8tTiN
e3aSRs99SRNeyNGTy3Yo48UPNWbhOo18Zr5mvZCkvEM9HNdpp3xTZ/V+pJN6z6q97SVvtFDn
nr3Vu8v9mvW57zJd9MbAdurRs4snKIalHSc6KL5nd/VOezBs28XHx8fHx8f389Xom2+6qq6y
ws76JOsB7Z88QN8uzNRfly/TD+vW6Z/r1+sfr7yiv69aqctZL+jE1DHaPKW9Sg51kr96atVZ
0lGfvHOXvljTXuc3peqvHz+pH3bP1D8/fUb/2DNLf985RZc/TNeJ1x5Rzso/quR4e9s6C4s7
6cXXWmrKyof13JZxWrlnhl7Jnaf1xiu5c7X2s9lauvMpPf1afz31/L06dLSDbZ3HTEicu2qI
RmQu1ZTVX+jZN4v03Hsn9cKmr7Xk/VOav6FUs14t0KiFmzRmTpryDve2rdOR/Kl6Ij5GAx+N
1NHq/++iD8dHq398vGJjE/Xoix1rXn+yvcYn9lPssIn6uLhreNpwdLDGD4zTiNmPhKc+Pj4+
Pj4+vp+1Rn/6U1f5Ki/tou2rI/XFuL66/MxM/W3JEl1+4QX9NStLWmYC49KlqjD/vmz+/4fn
n1d5+khtnhXpWa5uXdV1lnfRtvfvVu6y5rq8MUn/3JYuffyEXz9sHaPytQ8p5+XGnuUC1Vn6
VRetebOF0l9sp2c/GKHlnz2lFXunafmOmXrloyVa9/FiExKnauXn05W1e6Iy1vXR7Bfv8iwX
uM6H9eIrsUqa/qLGLzukWW98pTlvldf3drmmri9R0jMfKmPBUM9ygep0rGiMlo2JU//Eh/R2
WdX/t9ecwQlKenKxFo5JUOIYM91f9fq9D2pwQoySp0/R8bKaeop2tFR6v5t0963X6tpbr1e7
fk21ckfnmvWURWqYmV7uPD1S75pp/x6tfqcbb71ZmZ+a/XKkJijWvP4BrRx2o25t9QdlfVq5
7w5HKnPYrWpl6rn22mt16903Kfqx5vq0rG79fzD1/1Y33vg7tYq+U1m+7fDU01qZj92uzqYN
t95optcb36gew+7Wu/v99JFZ50Lz2nZ3m/rMOhu3uln90ltWl5ft92lT1fq2dHbfL3x8fHx8
fGCNTp9+SL52vhOprWlt9e3oYfrb9On6+qWXVGRGEctXrtSlWbN0cd48Fa9erUIzuviXmTP1
w9Spyh3YQ7s2RqpuXdV1ftxSW164VedXRuqf78RL7yV5vT/Iy/r7uwOkjQlGf/3wdrRy50d4
lgtU58acVho3/48au76rnvloiObtGKlnPxqhpR89rX0HP9H2vPc05/1Ryvw4RXO2p2jGlkEa
PO8ez3KB6nzr/Z4aNOVxxczYpVEvFWrcimKP8ZV/WtKWFeuxpUUabaS+UKCuY1d4lgtUp2Ol
sdr2bIpiB8br8e2dvf936H6lJCXq8VVTtSVziJKSH9CWUu/rjy/proEx8Xri1eHVdZTuvkd9
72ms9o90Vb8YM10d011xj9ynJvfcoQW7K+s8/qBnevmhdneqY1wnDU3urZiYHlq005TnVwXF
3pWvjdScqFvUont3xaR019tfWHU8qBei7lDzLp3Uv1+UevfuoZjEbhqS0k5vHq9Tf98OGjq4
p6m/l/pFR+pu33ZY7d18v0amdjGv6a1Y096Y/j3V/5HmavZgE20u9dk3h+5TSqvfq3m3Lupv
XhNj1pkwqLsGD6485nJb6NEWv9cDj3TRwP6mTaauhPi2anF3hOb4rI+Pj4+Pj48vNI2+/voh
+do0r5X2De6ov6YM0aWxY1VsAmLB9u0q++gjnVy4UCeXL1fxrl0qMMrTzcigcapfjDbNb6W6
dVV5/9XG+mzhTfrrsnv0j3UddWX9w7ryanddea2H+bOH99/rOuvK2gd1ZU07/Wt9J51acLtn
uUB1zl9+l4bMu1MjXu2gJ96N0qT3Y/Xkxjgt+WCKCkuPat+xHXry9QRN2NhL4zf00MRNfTRg
SXMtMMsFqnP684nqPn6huk/5TInP5mnIwi81bNEBpT53QMMXH1CK+Xvy/C+VNDdP/Z/JVcKz
+WqX9oGmL0kIWKdznXX0jUlKiknSgJntPf9X8uZDSkoYqud2Jevw26ZscJRm7va+9p3H+qt/
3GNatqtf5fKdtG7QXerSp48GTpylN7bs0q4ty7VkYpyi+3RWm0GtVGC97pAVBk0oi+urlKen
aOPOD/XZR68o90jnyjJvUCw52FpPdrlNbfr0UmLaLL17eJVOnTCvKWmngd2j1Dd5vNZs2qZd
uz7QR2Y965aN0icFPvXH9tXQJ5/Qxu1b9dn2dVo2pV/tdljbtydZy9fO0ebtm/TJZ7u0c7Np
b0as+vS4T0lvdqrerneGN1Nk7z6KHfG4Vm3cqM/MOnduztKqJUM95Tkjmqpt795KmjhN2dtN
m3a+pXVzBiqmbyc94LM+Pj4+Pj4+vtA0OnWqi3xtHNpKRf0e1g/x8fq+f3999eyzOmlC4sWv
v1b5F1+YIHBIF776Sl99+KHKk8xIYGKi/hYbq40prVS3rirvzL9JRfOu15VFN+q75+/VudVR
Ov9Kgr59dYC+XZ+ob9f10/m10Tq/po/+lNVRf3/udv3Pwhs9ywWqc9iMO5S4+E4lrmmm1Jc7
acrbSZq5YbjWfLRAZV+X6kDxPs1+a5Seenug0l7upaSXmythZTMNn3lHwDr7jp+gBx57Va3G
7NIjGZs0KWun5r2Sq0Wv7ddCY976L/TM2s81Y9VexUzMVuTYXWo1dq+izXKB6gzJp7M10bpP
MTlSx0510rYJ8Uoa+pTeLeqkE3nTlTYgUakvdTSBra0ykgcodthUfXS0k3fZE+00pGcfxQyb
rw8Ks3Ti5BCdOvmETha+rkXDotWn573KOWFed3CQxpkgFzt6nnYWzzfLmdedSFbxqaoyExQn
PqjEVhHqFGtC5+TntLNwiYpPVLbxRB9NGBCrEXMXaU12nHZ/mayCkxNN+TRT5lP/sJnaeniu
aYO3HScOv6lFqaYdvZt722HqOnFsqhmJHqL0Ye3NCGQ7te02VFNXvKgMM6Ue/2SH6u0a07Ov
olNmmylpE1ZPPWYM0YniJ0y90zzlj/Xpq77D5lRud7L5v1EqPvqGVo2PUXTVdp/i4+Pj4+Pj
C1Uj6z5AX+/F3a9yM2X5z7g4/cu4YMJi2eTJZloyX//45z9VcemSyt5/X4UjRuiHmBjJBMof
TFB8P/5+1a2rus5Z16l87nX63wXXqXh5P53Y+46+Pva58ZmPfWbaMlcHNq/Qhcxb9M/FN3iX
C1Bn/ykR6v98Y/Vb2URPvz5CO/Zv0eGiL1Vyskh//etf9edL3+nYiUM6XPyl1m9eqn5Lmylh
bVMlTLk9YJ0dhj+tyNHv6L60TxU9abPe/CBPhSWndOnS98Zl/cX8+fWZc8o9WKikqRvVcswe
tRr3uToOnx6wzpAUZ+i51Fj1H9RJ2Ucf0NMDkswo2Szln7TKHtf8YQkalNZGR3e11IBB1r2U
s8z2VS57tKuGDIjR8MzpJrj51HkyVe9kDlfMgCitPmr+fcAKcibozZ+i4uI6668sSx78oB7o
3luDpq/V5yZMFvvWVzxIrz6ZpNj+j+ihthG65cbf6Ya7btGo5+7X0eo6emv4rOk6WKsdSXpn
1nDFJkZ721HeSe8/foua3tdW8f3MCKQZEbSmsXv37mnE6tFJ3aq3a4QJpsMz5+hgsZ99ZsqH
mvKUSePV1bov89oqTTX4yWGKrdrucj4+Pj4+Pr5QNSor6yJfGwe2VmlsN09Q/MEKisnJOjlz
pk4fPKi/VVToz998o5ObN6tkwgT9jym3guL/msBoLVe3ruo6M69XqRlR/N8F16t8RYy+/nS9
vj26Xd8e2Vbj6DZdOPaxjm9+Xt89e4sZfbxeG+dcH7DOpKkRSjAjilZQnPb6UH2Q+6b2FXys
I6V5+v7/fa/z332jLwo+0b7jH2vV5oXqt7yZ+q9u4lkuUJ3dRk1Sm9FvqdX4XN0/7lOlztul
l3MO6jsTEvWvf+mvf/u7du0v0eQXd+j+tE90f/p+3Tf2M89ygeoMSdFgbXzGhCkTtCa/dr8G
JyVqzAtjVOQpe1Q50wYqqf8Deu25DmaKOk4T1w5TedWyX/bT2KR4jZoeqy9r1dter0wfqfik
oXrlS+t1VpCL14g5/b31+vrSG/LiEuMUG5uip02wm7zmwTrt7K/ywk16c/4YpSV771GMju6o
B++O0Ii3O1bXH6gdcQNSvO0oaq3hnbrokegBemblm9ry4S7t3r1Vuz9cpSeT4jRsalT1dqUP
iNOoWXXr6+JTXhUy63pEvZNTteVIl/D0Dx8fHx8fH0yj0tLO8rVh4n36MqGz/jc2RpfNSGHx
nDkq2bZNF8vKVL5li07v3q1zJSUq3L5dJ81ooxUUL/R5xLNc3bqqZC+9XV/Ou0F/X3iD/rIg
QmcXNdfZxa2M++popTML7tL/mWnnC2YEMvul2wPW+eT8O5U0/w9KWNVUA1e20JCVDyhlRUfN
eXusir46pr1Htuux5VFKWfWgBi+PVKIZTYx94U7PcoHqHPn0EHUas9SMEn6m1ulfqM24TxT/
9E698/ERXfzukr44clJpiz9Rm7QdnnIrKLYctc2zXKA6Q9NRB9+aoKTYRPUb0lGDEoZo9taY
yrLe+mL1eCUN7K4hg6OVEDtcC3fE1Sybb4LdUDMaOKyDXsv3qTP/PqWlJCt26GPabv3//iTv
9PKsXvXX7ymL12MvvKvNLz6mAX0fVpsmtyjtlfa1X/dVsr4yU9rlxWbENvddZT8/XP379FTf
SQ9W1tHbTztaKW1YsuKGpXvbkd9Gj5op5pRn1+pQeYapb4gKCuK0a+FgjYrzaZ/ZrsxhcUoe
3l7L8/3sM095vIbPe1W7rKBZV+4LKjzeOUz9w8fHx8fHx9LoxIlO8rXpxVbamfyA/l9stC6a
N+yiZct0IjdXJz/+WEdHjVLxjBkqzctT6aFDKhowwBMUT/Tu5lmubl1V3n+7qXbMv0mXF9wg
PXe9tPi6wKzy529U8ezfeZYLVOdLL9+jIZl/UP8VTZS4zvJHJaxpoqfeHqRjJYe0Kz9Hj65s
o4R1d3rKB65vpr5z79BLa+8JWOfCFX3Va9wzapW224TAL8zI4hdqO363xi3eqb37j+mlt3PV
ftx28//7PeX3T8jTvSkbtMAsF6jOUB3LnarxcQnq1zNKA5Mm6dUDHarLDm6fptED+qlnVIJi
kp/SpmM1ZSeOJSt79mDF9uui5jFNtPKNSG1+415NjvmDHuofo+TZU3TsmHldblVQ7Fl//VVl
Mwbr2Fdva3vWKCX27WrC4s0a8/IDletprccT/6AZWS31zuZIbc2J06vr52tqUqxSF/WsrMN6
gvkhtavVjtv1UL9YDTbHj6cdB/tpmllm6MiuSs1qpc2bW2vljAh17hxjpqF92me26yPrafAB
XdWk0+81Z6X12ki98/K9mvH4XdXlA5L7KmZwB72wvqcp76XNb3XT8rkd9ORCs9/C1Dd8fHx8
fHw0jYqLO8nXwbwHlf10S52I7+a59/CcCYNFZvq5bPBgzz2Jl/v1U3FSkgrNv617GP8WHa33
h9yvA2a5unVVOXCovd5eeYeK59+gHxZbYfHGoP5mpqjfM8HSWi5QnXlftteM50xAXNzYc+/h
gFeaeR5smfBKrDbvekevbVuqQcvvV+IrTTxl1hR1ysw7lJcXuM79X3bSE88m6oExr6v1uM89
YbC1mYZuN26Xuo3fqI7jP/SEx/srRxOtexn7jJvoWS5QnSE7NkHzhseaaVMzBfz4bH1yoqbs
6IGJmjO0t2dKNSljlr484btsLx3cuViTB5rA1Le5Wja9Rbc0/aM69X1EMSZwrto5TCes131e
GQZn9qy/7lplvVRy/G3tzBpZKywWH22vCYPb65EujXXX7806Iu5Q+959lRg/XM99HFtZR28z
1Z2gwY+2Vo+2t+r3dzbWg4/0UszAJ0w7Ur3tODpYm2Zawban2t31e/Oa29U1rrOGDRmsQbG+
7TPtOPiy5qRGK7pfO3Vo+XvdcsstuivSBP9H23nL81ZozrAoJcZGqlPLWz3ld7ZqrG5x7TRs
ekcdLQ5j//Dx8fHx8YE0KizspLpydzygd8e00snoHvpH5UMt/zKh0Ro9lHVfYqX/McFxW0w7
7XyvjfzV4+vzz9po43O36uTc6/WPQGHRjCT+z8Lr9dGs67Tz41a2de7c3VZjMxsrzoTFxJdN
WFzXVImr7lLiiy2UuLS5JzhaI4lWSIybGqH3P7jfts5tux7WoEmPqfXIdz0h0QqErcd7Rxe9
IXG/ZyTRContUuZpQ0432zpDcjhZH85MNmEwSiNeytCRWmUD9e5TSaYsThNWjtPhOssePjxP
BXvf1LxJ/ZUUbwJlfLRSJ81Q9t4NOna4g/d1eUM1MylO41b3rb/uemW9dLTgbe0wYXFgXC/N
e6ejaUOS3n3pMU1Ki9XAWLMOM/I8fNyTWvPuOzpebNbxWeX09cI3tHllitKHP6LY2CgNGz9D
b/q2w9R95MCbWjcnVYPj+yg2PkpjZz6tj/Yt16y67Tv8hA7lb9XqBcOVmtTH88DLwGH9NeWF
NG950QRTvlEvz03RiEGPeMrjzfT8uJmjteLDpHr7iY+Pj4+Pj8+ZRgUFHeXPlzsf1IaJrfRF
3446/UhP/d2EQis0/p8JjBf7PKITvbrpveT7tePdNgpUR706P2+jDS/dri/MtPLpzN95QqEV
Gv9v0fW6OPc6nTD//97cG/Xxtvsc17lrbztNWvBHxc3+vaJNYOy/qoknNFrT0HFZf1QfM908
ZMYdetdMbTqtc9vuXho5Y4gihy/XvakfeEKhNcLYauxnajHqY92TslG90yYqe1M3x3U611NF
BXtNij+gQjOteqhWWXcVHz9syg7p+JE4v8sfN6Hp2PFtKi8uNq/bq8Ljz+toUc+a1xwapYLy
Qyoriam/vN+ynjp87D1T3zYT8rp77iMsPrZSX5XtU/lJs46Th1V2fKVKDsd52/pp5ajk9EEq
OrJSx8sO6eRJU+fx1Sr2bYfl+CAdKXhPRcUlOmnaWlY6V0WHRvht36H8UTpSskmF5SWefVNe
9rGOlzxRv7zokKe8uGibjpc+ryNF3Rugj/j4+Pj4+BgaHTvWUYFY09Cb17VW9oyWyk5qpXej
79c7/VrrrfEtzeigCZH72ivY8n7rPPigct67V2+vukNvZd6gjU//TtmzrtebS27Txteb6ov9
D4RcZ96XD+qVN1po5nNNNfipCMU+ebsSJt2uCWa08fmVd2vf51dTZyetfK27mYpOUM9Rj6vd
ozPUefhkDZ0yVJkv9dVn+zqFXCfCniSN9dzn2IO/L/j4+Pj4+H7mGh050kF8fGGzb4hmWFPH
K6P4+4KPj4+Pj+9nrtHhwx3Exxc2eSN11Ewdf1Uczd8XfHx8fHx8P3ON8vMfFB8fHx8fHx8f
H19djax7Bvn4+Pj4+Pj4+PjqanTgQHtVWZ//HR8fHx8fHx8f3y9Eefm0q1KVDesFxStXLvPx
8fHx8fHx8f3MVQXF/fsfC8mWLY/ygyIfHx8fHx8fHzUo7tqVyg+KfHYui/8nHx8fHx/fL1Ow
oDhnTj+9/HIiPyjy8fHx8fHx8fGDYu3RxGnTntSUKSk/t6B4QXnZZWoZfVD/FV2sKYUXflI7
vKLkjLoMKdb2S05eW6q28WXKucQ/UPn4+Pj4+Ph+OkHRGk18+umnPfyNKjoPiue3KnNZd7UZ
/VtdM3qwdnxfpxEVB/T6uj5qMfomXZ/WUY9u3qWLoZTXde6kYuKLtSCMAfHfFdj4QZGPj4+P
j4/vpxYUq0YTq4Kiv1FF50Hx+336IHer9uU+rjZpdYPiBe17q6NaLFihYxXeUDlxegs9mlvq
sNz/iF24wxU/KPLx8fHx8fHxg2L90cRAo4ohTz1XlM1Wx4w6QbFiq8ZltNHEgprRvzOfmNHD
eStU6qS87jryT6lpj2P6j/b7dE0PM/U85IT2VnjLSraeUK+RRbrB+v/oInXJLNNe3wBW8Y2y
VxxXy3hT3qNAESOLtfK0We+l0xoQ71Nnj8OK2Xreu8ylPykrs0BNrWnu+COKWXtaJRW+Ie+4
sjZ9rZghh025d7q5bvgL1i5+UOTj4+Pj4+P7KQXFuqOJgUYVwxMUzy5R97R+ev28z+tKzchj
Rpr2VTgoD2EU7kzet8o7Vxk4L13UyplFiph5Tmc85eeVk2n+PdmEtHOV9Zz7RkeDBrbzWj/z
sJpmnvOGQxMaZ6cdVtu1F1VRtYwJfy0XnasOj/7qCtYuflDk4+Pj4+Pj+ykFRX+jif5GFcMS
FCvKFqijmY7+4Hv/r7MrdzNdW1H4tVoOOuUdcay6r7HkgvM6zTK94guUdbrm/y7mFavpkK+V
V1G5THSBGZUMrX2+7eIHRT4+Pj4+Pr6fUlCcPz/eExb9Wbas3891RPGCSj49o5SMI4rwPA1d
YKZ6zXRydFnldHDw+xr91elvmYrCUjN1baaYg4S82v9v1y5+UOTj4+Pj4+P76T31HPZfZgnl
HsUmNvcoNglwj2Kw0b+Y+COa8OmfPdPC1SN38d5AVjOiGMIDMk5GFO2Cok27+EGRj4+Pj4+P
jxEUS2fXm0ZumKee/YSr02dNqCvWlPxLlfcf/kkLJh/WNZUjd1X3KDad7PMgic89it7lTSis
NTV9XutNHdX3IF4ydda9R9EuKNq0ix8U+fj4+Pj4+H4KQdEKfqFyFhTNqODI0b/SNQn/XWP0
cO2omjr2fE9id7UYGux7FIOUO5x6zttUbP7f+0Rz07RTytp0Qi0HldV88bXfp55rQuH2FaXe
p5ujizRgl+9Tz8WV08ZHFLOi7lPP9lPPwdrFD4p8fHx8fHx8/+6geOHCp1eF/xN+fHx8fHx8
fD4u6wr/z18UflDk4+Pj4+Pj4+PjB0U+Pj4+Pj4+Pj53QfHMmWyVlCxWUdEzHtbfrf/jB0U+
Pj4+Pj4+PnBQtAJhQcFkHTmSXov1f3XDom1QtP7Ox8fHx8fHx8f38xIoKFqjh3VDYhWrjB8U
+fj4+Pj4+PigQdGaag4UFK0yflDk4+Pj4+Pj44MGxUAhsUroQXHPBiXM7qCbk2/UdSM6qOvq
7Vpe1ZD9ezRodjc1HhGha035tanN1Wz2JI3ZVu6sPL9QU1alqHVGE11nlY+IVOuFSzUj13dj
z2px9iS1G9vEU8d1Y6MUuymE5ffkKCHTtCH1t7omNUlTcmvvyDXbZqpZ8q/0a2t5j+bqWl1/
Hfu3KzbjRk89GbnfOX+N7X6w2c/haofr/eG2v77T8m1LFTU10ru82Q/NM+dqyp6zjttnV7/t
fgxabrN9DvrRbvvsyu2PR5fng93+C1ZujqmeY6vaVeVXumZsumbsr9pHX2jMoihFpFrr76CO
q+rsf7tyR8ewTR8HW4eTbXB7zbA9l92cI+HoY/fXq4Y9j91f151dL91dq9wdB0620cVxFJY+
DL5+1+8VwfrQwXnq+jxsyHLX2Sccx8ePFRTNBXfQxCZqlpWjLGvFuXs0wjSsa3Zh9YGatbtQ
a6p3TqFmrI7SzdWdaVO+P1/p69doxu7ymgv8wkjdPG2NFlcuk5WdosYT05Wxu/IAzi3U4qqD
2cHyVpszsnM0IzvddFqAi/6IIIGrWrmmZHVTs2nmDSjg6wO9xm4/2O3ncLXD5f5w21+5G9TV
XNTard/jPaBNfRlZ5kCfuNhxfwU/Hmz2o2253fbZ9KPd9jnYfrvj0e35EHR5B+W1FSp9dhM1
ztpeuU/OaobZnohpSzVvv/eNICqjuTr6XC+Clzs4hh1ck5yvw982uD1H7M9lV+dIGPrY9fWq
wc9j99d1J9dCt9cqV8eB3Ta6PY7c9qGD9bt9r3Deh/7PU3f7v4HL3WafMBwfP15Q3L1YzUfE
acwe34tkujnpltZ0dq3OsXZGnBpPXXx15Z76J6nx2BRNqQxQCRmRiso563iotdbydS/uY68+
KC7fZLbbtHtOTuDXO3mN3/0Qwn4OVzvc7o+r6q9tcz3bmZ57lf1lV7/dfgz1eA7SPr/9aLd9
Drbf7uLn6nywWz7U+ncvVWvzSXbQtqo3+BwzClB7+axXzRv01Mr9a1fu5Bi268MQ1uF3G9ye
I7btC9854vaaedXXq4Y+j8NwXbfdxjD0g6vjwG4b3R5HbvvQQftdvVeE0IeBzlNX+7+hy91m
H7fHx48fFKNqNybHpP+xo2umaaxPbJnNzfDobz0/7xcx25yU++t8ogtaXnsofd7qbrq56qLu
OTi6KXZVulqbTz/XjWjuGX6dk+tweacXfTN0e7MZIr7OGt5dtMY7ElFniLlnRpSGmoM04MFp
+5og+8HRfg5XO8KwP662v8zFbaiZ6qj1KXZRBzVblFNvyNxv++zqt9uPTvdz0OMpSD/abZ+D
7Q+6/92eD7b7L5T6Td2rOtTeNwEuXrX3f5ByJ8ewoz52sI5A2+D2HLFtX/jOEVfXTDfXq4Y+
j8NwXbc/jtz3g6vjwLYfXR5HbvvQQftdvVeEFBT9n6fuzsMGLnebfdweHz/u1PMe86klwju8
ub9qeLOJfp2a4rdT1+zOUcJUMzy8yP99R3blyzdNMidzVPWnhjXmU491IDTL2lCz/mlNFJG5
wdHyjg5Gc4LMqxyuX2OmqQaZ9kUszKl1L0l6ZgdzQuV7hpH9X1SdvCbIfnC0n8PbjqvfHy77
y1y8o6z7hZL/W782J8/N0/yfPP7aZ1u/3X4M8XgOdjwFPJ7tts+uPMj+d3s+2C0fUv1mX8Za
U1e1pqLm1jvefPvRrtzRMWzTh87WEXgbXJ8jTtoXpnPk6q+ZLq9XDX0eh+O6brONYekHF8eB
7TaG4zhy04dO2u/ivSKkoBjoPHWz/xu63GX2cXt8/OgPs6zZ/bpip5k0nxqhiIwUJaxKUYTv
jd91d4hJtRHBhk8DlGeZHdF8bJQScsrrDB87+1Tmd/lQh7er21dT/+JXk9TYZrjdyWvs9oPd
fg53O652f7jqL+vgnthc7VbX/hTbOPN1730WtiMRDj7l2uxHp8ez3fHktx/tti+E7fe7/92e
D2EccV2+abR3u3Ptp3tCGe1zcgwH7cMQRhT9bkMYzhH79oXnHLnaa6br69WPcB67va7bbmMY
++GqjgMH2+jqOApDH17de3/435vtztOr3f8NXe4q+7g9Pn70p57rWLw+So1nbwj4pGKggyVw
ufXk1mhzgFtpubze02o9M+JsToYgy7u+6JcrY3aEfp1shrZTq9zoGUa+NjVSXbPLHb4m9P1U
ez+Hvx1XHxRd9JdntCdO6Xuu9t4mJ8dDaMdr/fIg2+eHtf7q/WO3fSFsv9/6HW1/iP2Tk67q
5e3K86tU3li+yOcBEEuA+wNvtrlHsWa65erOpVp9aLsOm23w4fbDlP/22exjR8eIiz4Ox/Uq
hOP46s/jINto20cOtjEs/eDiOAhhG6/qOApjHwZuv932u+lD5+fp1e//H7c89P3j4vio9COO
KOZreeWGZeUsVsex3VQ9zWGGUzNy8mueQtq9wXxKsTq1cqrMptzaEfNetVJwnOc+En87ak5W
NzWverJn/xdmeLW5GV7e4HD5OgfjiPpfj5C1bY8WV01H7Nlef/h8f7mW59aw0n1jc4JZj7mv
cfga+/0QfD+Hqx3u94fL/qr3pF2h+RQbqesmLvZ/34qf9gU/Huz3Y/Dy4Ntn249222e7/fb7
3935YL+83f712L3Gc2N5Qr11hOGpZwfHsF0fOnrqOeA2uL9m2LXP3Tnito/DcL1q8PPY7XXd
yXHkvh/cHgd22+jmOApHH9qt3917hYM+tLnWuNv/DVsejuzj7vj4UYOidQOlGcK3vo/MfDqL
mDhaQ32GP9dsW6yuEyM93+Pj/R6nbuq6aoMW73dWbn3675r6K12TXOf7kqxPNT73QaRXfSea
9V1PtW44drJ85WvMp8lqqVWfmszJtiqu5ruORkSqXVawG3JtDuoAr7HdDzb7OVztcL0/3PaX
sTzH2hfNvd8NlWxOnGmTlL77rMP22dVvtx9tym22z74f7bcveLmD49H1+RC8f2zLjXmruunm
iYGe7rO+w7CbIpKDfY9ikHLbY9jBueJgHcG3wc01w0n7XJwj4ehj19erBj6PXV/XnV4L3Vyr
XB4Httvo7jhy34f211L37xX2fRj4PHV7HjZsuevsE47jI//fOPXMx8fHx8fHx8f308YPinx8
fHx8fHx8fPygyMfHx8fHx8fHxw+KfHx8fHx8fHx8/KDIx8fHx8fHx8fHD4p8fHx8fHx8fHz8
oMjHx8fHx8fHx0cJins2KGF2B8/3AV03ooO6rq7znWR7cpSQ2U2NU3+ra1ID/YD+r/Tr6u8C
aq6um2p/H9Hi7ElqN7ZJ5fcNRSnWt9zznWiV3xXl5zvRlm9bqqipkd7vgrK+Sypzrqbs8fk+
L7v2+9q/XbHWb1+m1vm+LZttdFRHsO3cv0eDZner+U4osx3NZk/yfDmso+2wvqV/bJ3vWzL7
/JpaP+djs58buB9tl7dZf/B+LtSUVSlqndHEW279QPzCpZqRG8JxErT99vUH3T4n/WvbPy77
P+h5YL997s5Dm/pt22/XPrv6bfa/g/1nd/y6PT7dnh/uzh+79Ts4PuzaZ3P8uH2fsTt/3J3/
Dq/xdtvIL+eXN2T5vy0omoYNmtjE+8PT1oo9PzxtTmLfXzkw/5eRnaMZ2enmQhwgYAT5Yuis
7BQ1npiujKov+swt1OI9Dn9lod63y+crw7z+5qpvl3fS/mrlmpLVTc2mmY6o216bbXRSh912
Zu0u9PmFlULNWB2lm6veqELaDu+F3fOzR1k1P3sUfP0N3Y8OviA82Ppt+zlf6evXaMbu8poT
amGkbp62JsAvotRZ3q79dvXbbp9N/9qu32X/2y1vu31uz0P7/Re8/TbLO2i/3f63O3+C9m8Y
tt/V+eH2/LFbv5P+C9o+m+MnDO8zQc8ft+e/o2u8218l4pfzy13+qtW/LSgG+IH9ZtOW+v+p
prEhBgxzgUjIqP27rLXL/f9ua0TV77Zum+tpX3qtT+Y+v1cZQvuXbzL/P3Wx5uQEbq/9j5cH
qMNuO+ttt/VGFqfGUysvZCFsh8fupZ6fPar+OZ8Q1t8g/Zjv7JdkAq7frp/91uNTbrd8qP3j
Z/1Ot89v/9qt323/h7p8vf3j8jx0sP+Ctj/U5e3K6+5/B+sP2r9h2H5X50cYzp+Qjt/8UH/b
2eb4cfs+Y3f+hPH8D3yNt9lGfjm/vCHLA7BynCfL5YcQFI+ke15TxWFQjHL0w+NBA4YZyr/Z
TPtcZ01ZLPL5mR3PBbmbYlelq7X5xHfdiOaeKY3qn1EKcAGpXr85wYea6YRanxQXdVCzqt9T
dNp+M+3RMyPK85uKwS6YQS/Sweqw204P80k10/o5pd96fsooYra5GO333Q9RDn8A/qzmrTKf
ln0PIEfrb8B+tFvebv12/ZzvZx+s7lazD2yPE+f7x2/9jrYvWP86OQ/c9H8oy/vZPrfnoYP9
F7T9IS0fqDzI/new/qD9G4btd3V+hOH8cbp+u/3vd/12x4/b9xm78ydc53/Qa7yTbeSX88sb
qDzAtbI6yzVoUNy/x3zSivBOCViN8UwJNNGvU1P8Bwl/FzBzUs6rHMJfY4ZLfX+4e435pGdd
nJplbaipf5opz9xQU14ntNVbjzl5o6z7RZL/W782bwA3T/N5A3DUfjPNlNnBXES8P+B9dUEx
eB1221lvPbtzlDDV+gHxynsQQugH67Wx1jSLz5B0KOtviH60W97R+oP1cx3LN00y+z+q9ohU
kOVD7R+/9TvcPn/9a7t+l/0f0vJ+ts/1eehk/wVrfyjLOyivd345Wb9d/7rdfrfnh9vzJ4Tj
N9j+9bd+2+PH5fuMo/PX9fnv4BofZBv55fzyhiz/9wZFz0X1dcVOM5+wUyMUkZGihFUpivBz
b4+TRld9Uoxw+knSdiTDXGAmNle71bU/KTbOfN17r4uD9i9+NUmNp9X5ZB9iULStI+QRnar9
5DM15LAflm8a7V2u3id6dyPDrvrRbnnbERH7fq6SZd7Emo+NUkKtH+C3WT6E9vutP4Tt89u/
Dtbvqv9DWN7v9oXhPHS6/wK13+nyofVP/alTu/X77d8wbv9VnR9hPH/s1m/X/qsaUXT7PmN3
/oTh/Hd2jeePePHLiSOKfla8eH2UGs/eEPInXf8X2O1mKD8uyAnuf16+esrDk7LjlF5r5wW/
N6h2+8uVMTtCv0420y2pVW70TE1dmxqprtnlDrbRQR1223kVQcN/P1TehL+o5iZ87xuF8/U3
SD+6fSN01M/WU4ujzf9ZIx113sTslnfU/iD1X3VQvPr9F1L/O1o+yPaF5Tx0sv+Ctd9u+XD0
j/P9V2v5sG1/AwXFq7hO1l+/s/aHco9isNsLQnqfsTt/XJ//Tq7xNtvIL+eXN2T5v39EMV/L
q57MzFmsjmO7BZ5yGFH/K2Gytu3R4qrh+T3b60xpnNWcrG5qXvW02/4vzJRDc1O+obo8tKct
C80nxUhd5/s0n13795dreW4N6xNzYyu5m4vhGkfb6KSO4NtpTYVl5OTXPGG5e4P5BGy9Yfnc
Q+SkH3av8dyEn1Cvf+z2c8P3Y/DlbdZv289nNe9VawQiznP/UL0TxsHydu0PWr/N9tn3r33/
uOt/u+Xtt8/deWhXv/3xa9e+YOVOzi+79Qc9fl1vv8vzIwznj9357aj/glw/7J7YdPs+E/T8
cX3+O7vG85/K5Zczn3r23LRshtyt7+0xn6YiJo7W0Jz6ow1dU3/l+XRVLbXqk6o5AVfF1Xx/
2YhItcuqc5O09dULVd8NZH2/Vd2biD3fHdRNEckBvr/NXFS6Tmzu/X6sZHPxnzZJ6bt93gDt
2u/kQhR0G53WEXg712yztiHS8x1i3u/w6qauqzZo8f7vQtqOeau66eaJAT5h2O7nhuxHJ8sH
38dB+7lq2eQ634XnM4UY/Dixab9t/cG3z75/7fefu/63Wd7B/nN1HjqpP1j77Za3KXe0/232
n93x62773Z8frs4fu/U7Oj7s2hfs+HH7PmN/fXN1/ju+xgc/R/jl/PIGLf8pTT3z8fHx8fHx
8fH9tPGDIh8fHx8fHx8fHz8o8vHx8fHx8fHx8YMiHx8fHx8fHx8fPyjWrIePj4+Pj4+Pjy/8
+EGRj4+Pj4+Pj4+PHxT5+Pj4+MLnyhX+n3x8v3QNHxQ9391T+f1SAb/b5+rKPeupOKDX1/VR
i9E36fq0jnp08y5d5HcsHx8fHx8fH99PPSg27LeJX7lyQfve6qgWC1boWIVZ5/mtmji9hR7N
LeV3Lh8fHx8fHx/fTzooBvh9wQib3x90Wn6lYqvGZbTRxIIL1es884kZXZy3QqX8zuXj4+Pj
4+Pj+wkHxd2L1XxEnR9L3+bzY+kuy6+cXaLuaf30+vmaDaoofVxtMtK0r4LfuXx8fHx8fHx8
P9mguGbb3Hq/Z+n5jcuxSZW/oequvKJsgTqmDdYH3/sExbLZ6pgxWDu+53cuHx8fHx8fHx9/
RJE/osjHx8fHx8fH98u4R/Fmm3sQnZYHukexCf8eRT4+Pj4+Pj4+/lPP/Kee+fj4+Pj4+Ph+
lkGx6nsQuykiOdj3JF5duWc9nu9R7K4WQ/nfo8jHx8fHx8fH9/MKivxfZuHj4+Pj4+Pj4wdF
flDk4+Pj4+Pj4+MHRX5Q5OPj4+Pj4+PjB0V+UOTz0BX+n3x8fHx8fCgNGhT5+Pj4+Pj4+Pj4
QZEfFPn4+Pj4+Pj4+EGRHxT5+Pj4+Pj4+PhBkR8U+fj4+Pj4+Pj4QZEfFPn4+Pj4+Pj4+PhB
kY+Pj4+Pj4+Pjx8U+fj4+Pj4+Pj4+EGRj4+Pj4+Pj4+PHxT5+Pj4+Pj4+Pj4QZGPj4+Pj4+P
j48fFPn4+Pj4+Pj4+PhBkY+Pj4+Pj+/nS1f4fyLwgyIfHx8fHx8fHx8/KPLx8fHx8fHx8fGD
Ih8fHx8fHx8fHz8o8vHx8fHx8fHx8YMiHx8fHx8fHx8fPyjy8fHx8fHx8fHxg6KP09qe3kGJ
64/+Qnf4Be2d3EHRK45iD7iKklK1HVSm7ZfCWF98mXIu1f57w7T9jLoMKQ5b2/n4+Pj4+PhB
0ceZ9VHqNHmvKkxgyvMTmCqOzlGPyAztrTD/rtinxVnd1SYtQtcPvUnXj26hjllP6fXS0842
rmKXpk+/SdeMHqwPvg/y5l82Wx2H/kr/Za3Do4VGHjldK9yV5j6lhCebespvy+ij6UdOX319
Z1YrOjJVORcbpkMvFp7UhIwjuqHHQf1XdIGajizT7LzzYQ1k4Q6KFSXnNDvTtDXatNm0+4ZB
BUpZcVJ5l/59QbGhQycfHx8fHx8/KNYdLRzVWkNzrNB0VOujO2hy3oXao23p96jT/C9NkPT+
+8zZ0sq/W8GvVPu29FGTjMe1r8J+ZHLHW93VcUEftUhzEBSDvOZM7nC1mfm4Pjhb2dbvS1V6
/sJV12e1LSfxHvVoiFHFS99q9KAiDdh0URcr9+HFkm+1vfDSTzYoXswvVZf4Yo3eelFnKvu1
4txF5bxxQgsKL/CDIh8fHx8fHyIoVnypWZ0e1gsl5u8XN2toZL/ao2oVO5Te/J464dG33AqK
/dRm3hKV2o2qHXlcHc3rDhTYhTabYFdxQJnT22hiwQXnAaPMfp1n1j+sP/ZYrTMByku2nlCv
kUWVo4JF6pJZpr2XagJ13qZT6mJG3byjb8VK2fSNN1CbqdG28ceVfS5YmPyTsqpG7+KPKGbt
aZVU+Iaj48ra9LVihhw25ZXTrJdOa0D8Mf1H+326xmpTj8OK2Vo5SlnxjdYvKVXLaG9bey05
qaMVtcPrgpneEc6IkcVasOmEWlYHxW+UlXZYvTb92SYA27U5QFC0a5spz15xXC3jrW0q8LRv
5ekLAbe3Xv0O9uXKrWc0YORhT181TTuh9acv8C88fHx8fHz8oFgdnPIyFHnd73Tdb36jRo3+
U7/x/P0/zd9/4/n7bZ3meN+8S15Ujz9Gaf2ZOiODy1rotqG/1TUJ/60WWSb82Y0mnn9P46b3
0dKyC45Cm3eq+CY1MVPct6W1Ud9163Ssah1nV6hvWndN3/y4+pqp59vSWqjv2hU6cLX1Ve+T
NDX/Y6p3it1fkMz7VnnnKgPFpYtaObNIETPPeYPl6bPqZQLc7PzKUcKK8yo5fak6uEwYUqCW
mWeUnXdRJZfqhpLzWj/zsJpmnvMGGvP62SaotV170RM0PeHGBJqWi85VB57gI2znlZNZ5Hm9
pw+tYGba2nbFnypHgs36Jtde34KMAv1HdGVQ9GxLqQlnwfrUQZv9BkX7tlnlEZNNCD9XNZL5
jY5eCry9det3ui+94fS8ti85ooiMsyrhX3j4+Pj4+PhBsc4oX04/RQ7d7JkSLXnhYZ8p5pr7
EyNv6xfw3r2Ks1uVOa+p2qzbVTmt6k+pNi7rqIQdx7xv1g6C4pWKYzpWOZVccX6rFpt1tFi7
1bOOirIFntDX8a33vNOi3+/TmgWmfNl7gdsQpL6abZ3m2dbtDu9TrCj82ozCnfIGy3MnTbg6
UmuqttZrT3+rrCVlnhHHa8yIWETGCWVXjWJ5li1Qlk8wu5hXrKZDvlZeRWW4iS7wG9z8BsVz
5xQzqHbQq8g3I4ZDTnjqC7S+iHhvUKzwjIDaTO86abO/oOigbTEmcC8oueB46rl2/U7aVWf9
nn40o7QV/AsPHx8fHx8/KNa+/3BUayVml3rCXHZia6XvrfMG7XdEsc6bd8HjapExXDsCvNGW
fjJYbRasqJ6adhQU/a4jzXsf5Nkl6p7WR6+fr13epqo81PocjSheUMmnZ5SSYUafor0PpNzQ
41jNKJxVnlem0ZNN4LIeVsk4pZX5Ae5BNKOR682o2Q1pZZ5RLH/BrKLQTM3Ge8NLsPvy/Acn
U59pmzVte0N0JWuqtnLKOvD6nI8ohtLm2n8PvW2hBEV/ywdqV3W59X/V0+4/N5d1hf8nHx8f
H07DBsWKHRrV3Ew1X/cb/WejRvrNb7xT0P9pTUFbf7+t8p7FytcGvUfR8Be6apzWB1kR+q+h
Zsp3dJWbPFPW149uo5H7nT0tXWsdFbvMNHa/sAfFoPcoeka6jmjCp3+uHnH1jETF+wsYl5SX
fVwRVaNk/tbvO4oVwuhcvXr8BCNPfWbUbn2geyJtRhQd3aN41SOK9m3zjigG2G/+gmDd+kPc
l/ygyMfHx8fHD4r+RhStr73pMUdHrTfLvamKTHzNT0iq/dSzNdX8QcGxmrB09j1lzrSmnrcG
mfY9rYvf1zhz5Cm1STNBr+x0rWlu33WeKd2n0soRx4rzu+pMFV/Qgbe6q/tbW73trTigNVkt
THmgqWe7+ryBNuhTz5X3IE6pHCWsOPcnLZh8WNdUjSieu6jthX+ubl/J1jITFL+unE79Viu3
fqujVfcmVvxZObXui/PeM1h9D6J1z2CA+/38t8sEo1pTteeVnXlEbZecq76378qlPyuvsCrk
/rn++nzvUbxS89TzBN+nni994/PUs/M2126/Xdu89yg2nVzzoJDvPYr+trdu/aHuS35Q5OPj
4+PjB0U/QdG6J7GHJwBaYbBD5RS0n1EcEyg7RWZ4R2TKlmjkzDZqUvl9hLdldNfIze+ptML5
xtlPPZsguLlfzXc1prVRwlt1Hj6pOKaN6/qoxWjvdzl2D/owi4P6PN+jODjI9yhaTzUXm5Dh
fRK3adopZfk+KXz6nOd7EiN6+JTn1zzMkrXICijeJ6K9T0yf0XbfUTXPk7rFldPaRxSzwv8T
xPXbdV7bV5R6n/A19Q7Y5fPUs/XkcHTlk8NDSjW66insK97wGvip58qwaH2P4sw636O41ud7
FB22uV777drm96nnwNtbr/4Q9yU/KPLx8fHx8YNiWH6ZpfQXusP5v8zCx8fHx8fHxw+KfHx8
fHx8fHx8/KDID4p8fHx8fHx8fPygyA+KfHx8fHx8fHz8oMgPinx8fHx8fHx8/KDID4p8fHx8
fHx8fHz8oMjHx8fHx8fHx8cPinx8fHx8fHx8fPygyMfHx8fHx8fHF25WrrNCXxUrDB45kq5A
f1qvqcIPinx8fHx8fHx8v2D8oMjHx8fHx8fHx8cPinx8fHx8fHx8fPygyMfHx8fHx8fHxw+K
fHx8fHx8fHx8/KDIx8fHx8fHx8fHD4p8fHx8fHx8fHz8oMjHx8fHx8fHx8cPinx8fHx8fHx8
fPygyMfHx8fHx8fHxw+K/KDIx8fHx8fHx8cPivygyMfHx8fHx8fHD4r8oMjHx8fHZ1zh4+Pj
B0V+UOTj4+Pj4+Pj4+MHRT4+Pj4+Pj4+Pn5Q5OPj4+Pj4+Pj4wdFPj4+Pj4+Pj4+flDk4+Pj
4+Pj4+PjB0U+Pj4+Pj4+Pj5+UOTj4+Pj4+Pj4+MHRT4+Pj4+Pj4+Pn5Q5OPj4+Pj4+Pj4wdF
flDk4+Pj4+Pj4+MHRX5Q5OPj4+Pj4+PjB0V+UOTj4+Pj4+Pj4wdFflDk05Ur/D/5+Pj4+Pj4
+EGRj4+Pj4+Pj4+PHxT5+Pj4+Pj4+Pj4QZGPj4+Pj4+Pj48fFPn4+Pj4+Pj4+PhBkY+Pj4+P
j4+Pjx8U+fj4+Pj4+Pj4+EGRj4+Pj4+Pj4+PHxT5+Pj4+Pj4+Pj4QZGPj4+Pj4+Pj48fFPlB
kY+Pj4+Pj4+PHxT5QZGPj4+Pj4+Pjx8U+UGRj4+Pj4+P78oV/p9k/KDIx8fHx8fHx8fHD4p8
fHx8fHx8fHz8oMjHx8fHx8fHx8cPinx8fHx8fHx8fPygyMfHx8fHx8fHxw+KfHx8fHx8fHx8
/KDIx8fHx8fHx8fHD4p8fHx8fHx8fHz8oMjHx8fHx8fHx8cPivygyMfHx8fHx8fHD4r8oMjH
x8fHx8fHxw+K/KDIx8fHx8fHx8cPivygyMfH56Ur/D/5+Pj4+CrxgyIfHx8fHx8fHx8/KPLx
8fHx8fHx8fGDIh8fHx8fHx8fHz8o8vHx8fHx8fHx8YMiHx8fHx8fHx8fPyjy8fHx8fHx8fHx
gyIfHx8fHx8fHx8/KPLx8fHx8fHx8fGDIh8fHx8fHx8fHz8o8oMiHx8fHx8fHx8/KPKDIh8f
Hx8fHx8fPyjygyIfHx8fHx8fH5jW84MiHx8fHx8fHx+fP/wRRT4+Pj4+Pj4+Pn5Q5OPj4+Pj
4+Pj4wdFPj4+Pj4+Pj4+flDk4+Pj4+Pj4+PjB0U+Pj4+Pj4+Pj5+UOTj4+Pj4+Pj4+MHRT4+
Pj4+Pj4+Pn5Q5OPj4+Pj4+Pj4wdFPj4+Pj4+Pj4+flDkB0U+Pj4+Pj4+Pn5Q5AdFPj4+Pj4+
Pj5+UOQHRT4+Pj6Wy+L/ycfH54sfFPn4+Pj4+Pj4+PhBkY+Pj4+Pj4+Pjx8U+fj4+Pj4+Pj4
+EGRj4+Pj4+Pj4+PHxT5+Pj4+Pj4+Pj4QZGPj4+Pj4+Pj48fFPn4+Pj4+Pj4+PhBkY+Pj4+P
j4+Pjx8U+fj4+Pj4+Pj4+EGRHxT5+Pj4+Pj4+PhBkR8U+fj4+Pj4+Pj4QZEfFPn4+Pj4+Pj4
+EGRHxSZrlzm4+Pj4+Pj4wuIHxT5+Pj4+Pj4+Pj4QZGPj4+Pj4+Pj48fFPn4+Pj4+Pj4+PhB
kY+Pj4+Pj4+Pjx8U+fj4+Pj4+Pj4+EGRj4+Pj4+Pj4+PHxT5+Pj4+Pj4+Pj4QZGPj4+Pj4+P
j48fFPn4+Pj4+Pj4+PhBkR8U+fj4+Pj4+Pj4QZEfFPn4+Pj4+Pj4+EGRHxT5+Pj4+Pgwrlzm
/8lXDz8o8vHx8fHx8fHx8YMiHx8fHx8fHx8fPyjy8fHx8fHx8fHxgyIfHx8fHx8fHx8/KPLx
8fHx8fHx8fGDIh8fHx8fHx8fHz8o8vHx8fHx8fHx8YMiHx8fHx8fHx8fPyjy8fHx8fHx8fHx
gyI/KPLx8fHx8fHx8YMiPyjy8fHx8fHx8fGDIj8o8vHx8fHx8fHxgyI/KPLx4Vy5wv+Tj4+P
jy84flDk4+Pj4+Pj4+PjB0U+Pj4+Pj4+Pj5+UOTj4+Pj4+Pj4+MHRT4+Pj4+Pj4+Pn5Q5OPj
4+Pj4+Pj4wdFPj4+Pj4+Pj4+flDk4+Pj4+Pj4+PjB0U+Pj4+Pj4+Pj5+UOTj4+Pj4+Pj4+MH
RX5Q5OPj4+Pj4+PjB0V+UOTj4+Pj4+Pj4wdFflDk4+Pj4+Pj4yMIhB8U+fj4+Pj4+Pj4+EGR
j4+Pj4+Pj4+PHxT5+Pj4+Pj4+Pj4QZGPj4+Pj4+Pj48fFPn4+Pj4+Pj4+PhBkY+Pj4+Pj4+P
jx8U+fj4+Pj4+Pj4+EGRj4+Pj4+Pj4+PHxT5+Pj4+Pj4+Pj4QZEfFPn4+Pj4+Pj4+EGRHxT5
+Pj4+Pj4+PhBkR8U+fj4+Pj4+Pj4QZEfFPn4+PhI+Pj4+BzhB0U+Pj4+Pj4+Pj5+UOTj4+Pj
4+Pj4+MHRT4+Pj4+Pj4+Pn5Q5OPj4+Pj4+Pj4wdFPj4+Pj4+Pj4+flDk4+Pj4+Pj4+PjB0U+
Pj4+Pj4+Pj5+UOTj4+Pj4+Pj4+MHRT4+Pj4+Pj4+Pn5Q5AdFPj4+Pj4+Pj5+UOQHRT4+Pj4+
Pj4+flDkB0U+Pj4+Pj4+Pn5Q5AfFXzg+Pj4+Pj4+vtDxgyIfHx8fHx8fHx8/KPLx8fHx8fHx
8fGDIh8fHx8fHx8fHz8o8vHx8fHx8fHx8YMiHx8fHx8fHx8fPyjy8fHx8fHx8fHxgyIfHx8f
Hx8fHx8/KPLx8fHx8fHx8fGDIh8fHx8fHx8fHz8o8oMiHx8fHx8fHx8/KPKDIh8fHx8fHx8f
PyjygyIfHx8fH98vz2Xx/+Rzih8U+fj4+Pj4+Pj4+EGRj4+Pj4+Pj4+PHxT5+Pj4+Pj4+Pj4
QZGPj4+Pj4+Pj48fFPn4+Pj4+Pj4+PhBkY+Pj4+Pj4+Pjx8U+fj4+Pj4+Pj4+EGRj4+Pj4+P
j4+PHxT5+Pj4+Pj4+Pj4QZEfFPn4+Pj4+Pj4+EGRHxT5+Pj4+Pj4+PhBkR8U+fj4+Pj4+Pj4
QZEfFPn4frmuXObj4+Pj47sq/KDIx8fHx8fHx8fHD4p8fHx8fHx8fHz8oMjHx8fHx8fHx8cP
inx8fHx8fHx8fPygyMfHx8fHx8fHxw+KfHx8fHx8fHx8/KDIx8fHx8fHx8fHD4p8fHx8fHx8
fHz8oMjHx8fHx8fHx8cPivygyMfHx8fHx8fHD4r8oMjHx8fHx8fHxw+K/KDIx8fHx8fHx/eL
cuVySH/ygyIfHx8fHx8fHx8/KPLx8fHx8fHx8fGDIh8fHx8fHx8fHz8o8vHx8fHx8fHx/RhB
sajomYAh0SrjB0U+Pj4+Pj4+PmhQLClZHDAoWmX8oMjHx8fHx8fHBw2KZ85kq6Bgcr2QaP2f
VcYPinx8fHx8fHx80KBYFRat0UNrqtli/b1uSOQHRT4+Pj4+Pj4+YFB0ih8U+fj4+Pj4+Pj4
QZEfFPn4+Pj4+Pj4+EGRHxT5+Pj4+Pj4+Pgqg2J5+bSrwg+KfHx8fHx8fHyAoLh//2Mh2bLl
UX5Q5OPj4/up4+Pj43ODHxT5+Pj4+Pj4+Pj4QZGPj4+Pj4+Pj89dUFy2rJ/mzPFv/vx4flDk
4+Pj4+Pj46MGxZdfTtTTTz/tlxUW+UGRj4+Pj4+Pjw889TxlSkq9kDht2pPatSuVHxT5+Pj4
+Pj4+MhB0d+oYtVoIj8o8vHx8fHx8fHBH2bxHVX0HU3kB0U+Pj4+Pj4+PnhQ9B1V9B1N5AdF
Pj4+Pj4+Pj54UKwaVaw7msgPinx8fHx8fHx8/KDoGVWsO5rID4p8fHx8fHx8fPyg6FF3NLFe
UFz6RnKtoMjHx8fHx8fHx/fLYAVFK/iFqjoo9n18vjZti5LvyCIfHx8fHx8fHx+blQ8bNUl4
RYOmzuaHxX8/HeD/ycfHx8fHx/cTYOVCKx96gqLFGln0nYbm4+Pj4+Pj4+PjsfKglQutfPj/
AZTSdS27AIo1AAAAAElFTkSuQmCC')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!CuisManual methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:41:09'!
initialize
    super initialize.
    title _ 'Cuis Manual'.
        self addSection: self Introduction.
        self addSection: self CuisSmalltalk.
        self addSection: self ManagingYourCodeInCuis.
        self addSection: self AdditionalPackagesForCuis.
        self addSection: self CuisAndGithub.
        self addSection: self Tools.
! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
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

{/home/marian/src/Cuis/erudite-menu.png ::image}

!!!!!!!! Creating a book

A new book can be created from the WorldMenu //Erudite...->New...// menu. Then enter a title and you are ready to go. Always remember to save your book before quiting the editing application. Books are saved as methods on the class side of {EruditeBook::class}.

!!!!!!!! Editing a book

Book editing can be invoked via the {edit::selector} message on the book, or the WorldMenu //Erudite...->Edit...// menu.

First of all, a book //section// needs to be selected or created. Use the editor menu, //add section//. Then you can start editing the section content on the text panel on the right. Markup syntax is described in {Syntax reference ::section}.

**IMPORTANT TIP**
The easiest way to insert markup is by ''Insert Erudite markup'' action in context menu.
For fast access, open it with keyboard shortcut: //cmd-i//. Then select the markup to insert from the menu options.
Cuis menu items filtering is very handy here: to select the markup to insert, start typing the markup you want (i.e. ''bold''), then press return key.
So, for example, to enter bold text: press //cmd-i//, then type ''bold'' and press return key.

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
**toggle live editing**. By default, in the book editor, the markup renderer panel on the left is updated whenever you edit the markup sources on the right panel. The problem with this is that this can be expensive as the content grows and too much parsing and rendering is being done for each change. Toggling live editing off, prevents the left panel from being updated on each change, and update only when markup changes are accepted (alt-S). //Tip:// toggle live editing off for big documents.') data: ((Dictionary new) add: ('/home/marian/src/Cuis/erudite-menu.png '->(EruditeForm fromBase64String:'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')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
Extensions
^(EruditeBookSection basicNew title: 'Extensions'; document: ((EruditeDocument contents: '!!!! Extensions

Extensions to Smalltalk tools are shipped separately.

To install: [[[Feature require: ''EruditeToolsExtensions'']]] doIt

!!!!!! List of extensions

**Markup and formatting in class comments**

This is implemented.

**Markup and formatting of code comments**

TODO. Not implemented yet. ') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
Extras
^(EruditeBookSection basicNew title: 'Extras'; document: ((EruditeDocument contents: '!!!! Extras

A PetitParser tutorial is included in the Erudite distribution.

To install: [[[Feature require: ''PetitParserTutorial'']]] doIt

Also, a book on Morphic, the Cuis UI system:

To install: [[[Feature require: ''MorphicBook'']]] doIt') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
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

[[[ (LatexEruditeDocRenderer on: EruditeManual new)
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

As you can see, it is done via the {storeOn: ::selector} method (it is indirectly call from {WriteStream>>store: ::method} method).') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:39'!
Introduction
^(EruditeBookSection basicNew title: 'Introduction'; document: ((EruditeDocument contents: '!!!! Erudite Manual

by **Mariano Montone** //(marianomontone@gmail.com)//

This is a manual and reference of Erudite Documentation System.

Erudite {EruditeDocument::class|documents} are edited using a wiki-like markup with capabilities for linking and embedding Smalltalk code. 

Main documentation is realized via {EruditeBook::class|books}, a collection of documents organized in {EruditeBookSection::class|sections}.

Books are read and edited via the {EruditeBookReaderMorph::class|reader} and {EruditeBookEditorMorph::class|editor} morphic applications.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
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

Literate Programming can be realized by the creation of Erudite {EruditeBook::class|books}. In particular, via code embedding in its different forms. Contrary to other LP systems, there''s no need for a tangling and weaving phase; the document source is kept separately from the source code, Smalltalk code is referenced and embedded from the documentation. That means that in spite of documentation and code being separate, the referenced code is always up to date. Finally, the possibility of evaluating Smalltalk code from the documentation makes Erudite very unique compared to the other LP systems.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
SyntaxReference
^(EruditeBookSection basicNew title: 'Syntax reference'; document: ((EruditeDocument contents: '!!!! Syntax reference

Text formatting, links to Smalltalk code, insertion of images, and code.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new        add: self SyntaxReferenceTextFormatting;
        add: self SyntaxReferenceLinks;
        add: self SyntaxReferenceImages;
        add: self SyntaxReferenceCode;
 yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
SyntaxReferenceCode
^(EruditeBookSection basicNew title: 'Code'; document: ((EruditeDocument contents: '!!!!!! Code

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
') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
SyntaxReferenceImages
^(EruditeBookSection basicNew title: 'Images'; document: ((EruditeDocument contents: '!!!!!! Images

Images from files can be inserted via links:

```{filePath ::image}```

Images are serialized to the Erudite Document; there''s no need to ship the images separately with the books.

Example: 

{/home/marian/src/Cuis/Erudite/smalltalk-logo.png::image}') data: ((Dictionary new) add: ('/home/marian/src/Cuis/Erudite/smalltalk-logo.png'->(EruditeForm fromBase64String:'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
AAAAAElFTkSuQmCC')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
SyntaxReferenceLinks
^(EruditeBookSection basicNew title: 'Links'; document: ((EruditeDocument contents: '!!!!!! Links

Links have the following syntax:

```{target::linkType|label}[options]```

The parser and renderers (formatters) are designed to handle different types of links. The system is extensible. Links for handling Smalltalk code and references are provided in the basic package:

!!!!!!!! Section links

Links to sections in the same book:

**Syntax:** ```{sectionName::section|optional label}```

__Example:__ ```{Introduction::section}``` ==> {Introduction::section}

Links to sections in another book:

**Syntax:** ```{bookName#sectionName::section|optional label}```

__Example:__ ```{EruditeManual#Syntax test::section}``` ==> {Erudite Manual#Syntax test::section}

!!!!!!!! Selectors links

**Syntax:** ```{selectorName::selector}```

__Example:__ ```{at:put: ::selector}``` => {at:put: ::selector}

!!!!!!!! Class links

**Syntax:** ```{className::class|optional label}[options]```

__Example:__ ```{EruditeBook::class}``` => {EruditeBook::class}

**Options:**
   - //embed//: embed the class source code.
   - //doc//: when doc is used in conjunction with embed, the class documentation is appended.

__Example:__ 

```{EruditeBook::class}[embed]``` 
=> 
{EruditeBook::class}[embed]

__Example:__
 
```{EruditeBook::class}[embed,doc]``` 
=> 
{EruditeBook::class}[embed,doc]

!!!!!!!! Methods links

**Syntax:** ```{Class>>selector ::method|optional label}[options]```

Example: ```{EruditeBook>>initialize: ::method}``` => {EruditeBook>>initialize: ::method}

**Options:**
   - //embed//: embed the method source code.
   - //doc//: documents the method. Displays the method signature and docstring. This is a good option for documenting an object''s api.

__Embed example:__

```{EruditeBook>>initialize: ::method}[embed]```
=>
{EruditeBook>>initialize: ::method} [embed]

__Doc example:__

```{EruditeBookSection>>document: ::method}[doc]```
=>
{EruditeBookSection>>document: ::method}[doc]

To reference class methods, use this syntax: ```{EruditeBook class>>open ::method}[embed]``` => 
{EruditeBook class>>open ::method}[embed]

!!!!!!!! HTTP URLs

**Syntax:** ```{HTTP url address ::url|optional label}```

**Example:** ```{http://cuis-smalltalk.org::url|Cuis Smalltalk}``` => {http://cuis-smalltalk.org::url|Cuis Smalltalk}') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
SyntaxReferenceTextFormatting
^(EruditeBookSection basicNew title: 'Text formatting'; document: ((EruditeDocument contents: '!!!!!! Headings

Headings start with two or more exclamation marks:

```!!!! heading
!!!!!! subheading
!!!!!!!! subsubheading```

!!!!!! Text emphasis

!!!!!!!! Bold

Text between double *: ``` **bold text** ``` => **bold text**

!!!!!!!! Italics

Text between double slashes: ```//italics//``` => //italics//

!!!!!!!! Underlined

Text between double _: ```__underlined__``` => __underlined__

!!!!!!Unformatted text

To prevent text formatting, enclose the text in triple back quotes.') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:40'!
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

{/home/marian/src/Cuis/Erudite/smalltalk-logo.png ::image}') data: ((Dictionary new) add: ('/home/marian/src/Cuis/Erudite/smalltalk-logo.png '->(EruditeForm fromBase64String:'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
AAAAAElFTkSuQmCC')); yourself); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!EruditeManual methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:31:39'!
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

!EruditeCompositeBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 13:50:43'!
edit
	^ self error: 'This is a read-only book'! !

!EruditeCompositeBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 13:28:16'!
initialize: aCollectionOfBooks

	books _ aCollectionOfBooks! !

!EruditeCompositeBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 13:50:02'!
sections

	^ books collect: [:book | |section|
		section _ EruditeBookSection
					title: book title
					document: book sections first document.
		book sections do: [:bookSection |
			section addSection: bookSection copy].
		section]! !

!EruditeCompositeBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 13:51:42'!
store
	^ self error: 'This is a composite book. It can not be stored.'! !

!EruditeCompositeBook class methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 13:53:34'!
with: books

	^ self new initialize: books! !

!EruditeDynamicBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 19:16:28'!
build

	| classes |

	classes _ Smalltalk classes 
		select: [:class | class name endsWith: 'Book'].

	collectedMethods _ OrderedCollection new.

	classes do: [:class | |ps|
		ps _ Pragma allNamed: #booksection:parent:order:book: in: class.
		collectedMethods addAll: (ps select: [:p | (p argumentAt: 4) = title])].
	collectedMethods _ collectedMethods asSortedCollection: [:x :y |
		(x argumentAt: 3) < (y argumentAt: 3)].
	collectedMethods do: [:method |
		(method argumentAt: 2) ifNil: [ "no parent. top-level section."
			self buildSection: method]]! !

!EruditeDynamicBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 18:38:21'!
buildSection: aMethod

	| parent parentName classInstance |
	
	parentName _ aMethod argumentAt: 2.
	
	parent _ parentName ifNil: [self]
			ifNotNil: [	self findSectionNamed: parentName].
			
	classInstance _ aMethod methodClass basicNew.
			
	parent addSection: (EruditeBookSection 
					title: (aMethod argumentAt: 1) 
					contents: (classInstance perform: aMethod method selector)).
					
	"build subsections"
	collectedMethods do: [:method |
		((method argumentAt: 2) = (aMethod argumentAt: 1))
			ifTrue: [ "a subsection"
				self buildSection: method]]! !

!EruditeDynamicBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 18:41:22'!
edit
	^ self error: 'This is a read-only book'! !

!EruditeDynamicBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 18:14:25'!
initialize: bookTitle

	super initialize: bookTitle.
	
	self build.! !

!EruditeDynamicBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 18:41:35'!
store
	^ self error: 'This is a dynamic book. It can not be stored.'! !

!EruditeDynamicBook class methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 17:54:40'!
titled: aString
	^ self new initialize: aString! !

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

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 6/11/2022 19:29:18'!
parser
	^ document parser! !

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

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 20:12'!
updateParents

	subsections do: [:subsection |
		subsection parent: self.
		subsection updateParents]! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 2/26/2022 19:10:22'!
addSection: aBookSection

	subsections addLast: aBookSection.
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

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 7/13/2022 11:13:24'!
parent: anObject
	"Set the value of parent"

	parent _ anObject.
	
	"Initialize ourselves with parent data."
	document parser: parent parser.
	
	"Propagate our potentially new parser to our subsections"
	subsections do: [:ss | ss parent: self]! !

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

!EruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2022 09:37:13'!
document
	^ document! !

!EruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2022 09:36:56'!
initialize: aDocument

	document _ aDocument! !

!EruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 6/15/2022 09:58:28'!
document: anObject
	"Set the value of document"

	document := anObject! !

!EruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 6/15/2022 09:58:28'!
requestor
	"Answer the value of requestor"

	^ requestor! !

!EruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 6/15/2022 09:58:28'!
requestor: anObject
	"Set the value of requestor"

	requestor := anObject! !

!EruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 6/15/2022 09:58:28'!
stream
	"Answer the value of stream"

	^ stream! !

!EruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 6/15/2022 09:58:28'!
stream: anObject
	"Set the value of stream"

	stream := anObject! !

!EruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2022 09:35:02'!
on: aDocument

	^ self new initialize: aDocument! !

!EruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2022 09:35:26'!
render: aDocument
	
	^ (self on: aDocument) render! !

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 10:00:06'!
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
	^ escapedString! !

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 10:04:04'!
linkRendererFor: aLinkType

	|handlerClassName|
	
	handlerClassName _ aLinkType asString capitalized, 'DocLinkRenderer'.
	^ Smalltalk at: handlerClassName asSymbol ifAbsent: ["self error: 'No link renderer for: ', aLinkType asString" nil]! !

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:51:25'!
render
	
	document parsedContents contents do: [:node |
		node isString ifTrue: [
			stream nextPutAll: (self escapeLatex: node)]
		ifFalse: [
			node accept: self]]! !

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:54:11'!
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

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:54:28'!
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

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:54:36'!
renderCodeDoItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false]})! !

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:54:46'!
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

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:55:14'!
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

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:55:23'!
renderCodeExploreItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | (Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false) explore]})! !

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:55:34'!
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

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:55:43'!
renderCodeInspectItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | (Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false) inspect]})! !

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:55:54'!
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

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:56:04'!
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

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:56:18'!
visitActionLink: aDocLink

	stream nextPutAll: '\underline{';
			nextPutAll: aDocLink title;
			nextPutAll: '}'! !

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:56:28'!
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

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:56:37'!
visitHeading: aEruditeHeading

	aEruditeHeading level caseOf: {
		[1] -> [stream nextPutAll: '\section*{'].
		[2] -> [stream nextPutAll: '\subsection*{'].
		[3] -> [stream nextPutAll: '\subsubsection*{'].
		[4] -> [stream nextPutAll: '\textbf{']
	}.
	stream nextPutAll: aEruditeHeading heading; nextPutAll: '}'; newLine; newLine! !

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:56:45'!
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

!LatexEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 09:56:55'!
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

!LatexEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 6/15/2022 10:00:58'!
highlightSyntax
	"Answer the value of highlightSyntax"

	^ highlightSyntax! !

!LatexEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 6/15/2022 10:00:58'!
highlightSyntax: anObject
	"Set the value of highlightSyntax"

	highlightSyntax := anObject! !

!LatexEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 6/15/2022 09:52:18'!
stream
	"Answer the value of stream"

	^ stream! !

!LatexEruditeDocRenderer methodsFor: 'accessing' stamp: 'MM 6/15/2022 09:52:18'!
stream: anObject
	"Set the value of stream"

	stream := anObject! !

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2022 09:35:53'!
initialize: aDocument

	super initialize: aDocument.
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

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 15:30:48'!
visitStyledText: aStyledText

	|emphasis|
	emphasis _ aStyledText style caseOf: {
		[#bold] -> [TextEmphasis bold].
		[#italic] -> [TextEmphasis italic].
		[#underlined] -> [TextEmphasis underlined ].
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

!MorphicEruditeDocRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 18:28'!
render: aDocument notifying: anObject
	
	^ (self on: aDocument)
		requestor: anObject; 
		render! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:37:39'!
data
	^ data! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 17:56:47'!
data: aDictionary

	data _ aDictionary! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 17:39:32'!
getNodeData: aNode

	self assert: aNode dataKey isNil not.
	
	^ data at: aNode dataKey
			ifAbsent: [ |nodeData|
				nodeData _ aNode data.
				data at: aNode dataKey put: nodeData.
				nodeData]! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:38:00'!
images: aDictionary
	"Deprecated."
	data _ aDictionary! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 17:07:36'!
initialize

	images _ Dictionary new.
	data _ Dictionary new.! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 6/11/2022 19:00:30'!
parsedContents

	^ self parser parse: contents.! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 17:56:07'!
storeOn: aStream

	|usedData|
	
	"Extract the data that needs to be serialized."
	
	usedData _ Dictionary new.
	
	self parsedContents contents do: [:node |
		node isString ifFalse: [
			node dataKey isNil  ifFalse: [ |nodeData|
				nodeData _ data at: node dataKey ifAbsent: [node data].
				usedData at: node dataKey put: nodeData]]].

	aStream nextPutAll: '((EruditeDocument contents: ';
			nextPutAll: contents asString printString;
			"nextPutAll: ') images: '; store: images;"
			nextPutAll: ') data: '; store: usedData;
			nextPutAll: '; yourself)'! !

!EruditeDocument methodsFor: 'accessing' stamp: 'MM 11/29/2018 19:25'!
contents
	"Answer the value of contents"

	^ contents! !

!EruditeDocument methodsFor: 'accessing' stamp: 'MM 12/10/2018 21:38'!
contents: anObject
	"Set the value of contents"

	contents _ anObject! !

!EruditeDocument methodsFor: 'accessing' stamp: 'MM 6/11/2022 19:00:47'!
parser
	"Answer the value of parser"

	^ parser ifNil: [EruditeMarkupParser new]! !

!EruditeDocument methodsFor: 'accessing' stamp: 'MM 6/11/2022 18:59:58'!
parser: anObject
	"Set the value of parser"

	parser := anObject! !

!EruditeDocument class methodsFor: 'as yet unclassified' stamp: 'MM 11/29/2018 23:33'!
contents: aCollection
	
	^ self new contents: aCollection; yourself! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 14:56:41'!
editBook
	EruditeBook withBookSelectionDo: [ :book |
		book edit ].! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 13:55:02'!
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
			{
				#label 			-> 		'Read all books'.
				#selector 		-> 		#readAllBooks.
				#icon 			-> 		#openIcon.
				#balloonText 	-> 		'Read all books.'
			} asDictionary.
		}`! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 2/9/2022 11:40:20'!
helpMenuOptions

	^ `{
		{
				#itemGroup 	-> 		10.
				#itemOrder 		-> 		30.
				#label 			-> 		'Cuis Manual'.
				#selector 		-> 		#open.
				#object -> CuisManual.
				#icon 			->	#helpIcon.
				#balloonText 	-> 		'Read the Cuis Manual'
			} asDictionary.
		}` ! !

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'as 7/6/2022 06:52:24'!
initialize

	Prefs _ PreferenceSet new.

	Prefs
		name: #browserClassComments
		description: 'Enabled/disable Erudite markup in browser class comments'
		category: #erudite
		type: nil  
		value: true.

	Preferences at: #tapAndHoldEmulatesButton2 put: false.
					 
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

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 13:55:40'!
readAllBooks

	(EruditeCompositeBook
		with: EruditeBook booksList) open.! !

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

!EruditeSystem class methodsFor: 'accessing' stamp: 'as 7/6/2022 06:54:01'!
preferences
	^ Prefs! !

!LatexEruditeBookRenderer methodsFor: 'rendering' stamp: 'MM 6/16/2022 09:42:29'!
listingsPackageConfiguration

	"See: https://marianopeck.blog/2012/06/17/smalltalk-syntax-highlighting-for-latex/"
	
	^ '\usepackage{color}
\usepackage{textcomp}
\usepackage{listings}

\lstnewenvironment{code}{%
 \lstset{%
 % frame=lines,
 frame=single,
 framerule=0pt,
 mathescape=false
 }%
 \noindent%
 \minipage{\linewidth}%
}{%
 \endminipage%
}%
\lstnewenvironment{codeWithLineNumbers}{%
 \lstset{%
 % frame=lines,
 frame=single,
 framerule=0pt,
 mathescape=false,
 numbers=left
 }%
 \noindent%
 \minipage{\linewidth}%
}{%
 \endminipage%
}%'! !

!LatexEruditeBookRenderer methodsFor: 'rendering' stamp: 'MM 1/19/2019 19:02:33'!
render

	self renderWithTemplate: [
		book sections do: [:aBookSection | 
			self renderSection: aBookSection]].
	
	texFilePath fileContents: stream contents! !

!LatexEruditeBookRenderer methodsFor: 'rendering' stamp: 'MM 1/19/2019 17:02:11'!
renderArticle

	documentClass _ #article.
	self render! !

!LatexEruditeBookRenderer methodsFor: 'rendering' stamp: 'MM 1/19/2019 17:01:59'!
renderBook

	documentClass _ #book.
	self render! !

!LatexEruditeBookRenderer methodsFor: 'rendering' stamp: 'MM 6/15/2022 10:01:21'!
renderDocument: aDocument

	|renderer|
	
	renderer _ LatexEruditeDocRenderer on: aDocument.
	renderer stream: stream; 
			highlightSyntax: highlightSyntax.
	renderer render! !

!LatexEruditeBookRenderer methodsFor: 'rendering' stamp: 'MM 1/19/2019 17:00:55'!
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

!LatexEruditeBookRenderer methodsFor: 'rendering' stamp: 'MM 1/19/2019 17:01:18'!
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

!LatexEruditeBookRenderer methodsFor: 'rendering' stamp: 'MM 1/19/2019 17:00:26'!
renderSubsubsection: aBookSection

	documentClass caseOf: {
		[#book] -> [stream nextPutAll: '\subsection{'].
		[#article] -> [stream nextPutAll: '\subsubsection{'].
	}.
	stream nextPutAll: aBookSection title;
			nextPutAll: '}'; newLine.
			
	self renderDocument: aBookSection document.
	
	! !

!LatexEruditeBookRenderer methodsFor: 'rendering' stamp: 'MM 6/16/2022 09:26:10'!
renderWithTemplate: aBlock

	stream nextPutAll: '\documentclass[11pt,pdflatex,makeidx]{scrbook}   % Book class in 11 points'; newLine.
	
	beforePreamble ifNotNil: [stream nextPutAll: beforePreamble; newLine].
	
	stream		nextPutAll: '\usepackage[margin=0.5in]{geometry}'; newLine;
			nextPutAll: '\usepackage{color}'; newLine;
			nextPutAll: '\usepackage{makeidx}'; newLine;
			nextPutAll: '\usepackage{hyperref}'; newLine.
		
	highlightSyntax 
		ifTrue: [ stream nextPutAll: '\usepackage{minted}'; newLine].
	
	stream nextPutAll: '\usepackage{hyperref}'; newLine;
			nextPutAll: '\usepackage{courier}'; newLine;
			nextPutAll: '\hypersetup{colorlinks=true,linkcolor=blue}';newLine.
			
	highlightSyntax 
		ifFalse: [	stream nextPutAll: self listingsPackageConfiguration; newLine]
		ifTrue: [stream nextPutAll: '\definecolor{bg}{rgb}{0.95,0.95,0.95}'; newLine].
	
	afterPreamble ifNotNil: [stream nextPutAll: afterPreamble; newLine].
	
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

!LatexEruditeBookRenderer methodsFor: 'accessing' stamp: 'MM 6/16/2022 08:37:15'!
afterPreamble: aString
	afterPreamble _ aString! !

!LatexEruditeBookRenderer methodsFor: 'accessing' stamp: 'MM 6/16/2022 08:37:05'!
beforePreamble: aString
	beforePreamble _ aString! !

!LatexEruditeBookRenderer methodsFor: 'accessing' stamp: 'MM 1/19/2019 19:03:51'!
book: aBook

	book _ aBook! !

!LatexEruditeBookRenderer methodsFor: 'accessing' stamp: 'MM 6/16/2022 09:10:16'!
highlightSyntax: aBoolean
	highlightSyntax _ aBoolean! !

!LatexEruditeBookRenderer methodsFor: 'accessing' stamp: 'MM 1/19/2019 16:21:07'!
requestor

	^ requestor! !

!LatexEruditeBookRenderer methodsFor: 'accessing' stamp: 'MM 1/19/2019 16:21:07'!
requestor: anObject

	requestor _ anObject! !

!LatexEruditeBookRenderer methodsFor: 'accessing' stamp: 'MM 1/19/2019 18:52:04'!
texFilePath

	^ texFilePath! !

!LatexEruditeBookRenderer methodsFor: 'accessing' stamp: 'MM 1/19/2019 18:51:49'!
texFilePath: aFilePath

	texFilePath _ aFilePath! !

!LatexEruditeBookRenderer methodsFor: 'initialization' stamp: 'MM 1/19/2019 19:06:48'!
initialize: aBook

	book _ aBook.
	stream _ WriteStream on: String new.
	documentClass _ #book.
	highlightSyntax _ true! !

!LatexEruditeBookRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:05:45'!
on: aBook

	^ self new initialize: aBook! !

!LatexEruditeBookRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:05:57'!
render: aBook
	
	^ (self on: aBook) render! !

!LatexEruditeBookRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 1/19/2019 19:06:11'!
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

!ClassDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 16:29:07'!
embed: aDocLink on: aStream

	|text class textModel |
	
	class _ Smalltalk at: aDocLink target asSymbol ifAbsent: [^nil].
	
	text _ Text string: class definition.
	
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
							
	aStream nextPut: textModel actualContents.
	aStream nextPut: Character newLineCharacter asString.
	
	"If doc option is present, then first line of class documentation is displayed."
	aDocLink optionAt: #doc ifPresent: [:val |
		val ifTrue: [|commentFirstLine|
			commentFirstLine _ (class comment findTokens: Character newLineCharacter) first.
			aStream nextPut: commentFirstLine.
			aStream nextPut: Character newLineCharacter asString]].
	
	aStream nextPut: 
		(Text string: '[browse]' 
				attributes: {BlockTextAction do: [:x | 
							self browse: class
								selector: nil]. 
							TextEmphasis underlined}).
							
	! !

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

!ImageDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 18:56:31'!
render: aDocLink in: aDocument on: aStream

	|form imageMorph |
	
	form _ [aDocument getNodeData: aDocLink]
				on: Error
				do: [:e | ^aStream nextPut: e printString].
	
	"Process image options performing options as messages."
	aDocLink options keysAndValuesDo: [:key :value |
		[form _ form perform: (key, ':') asSymbol with: (Compiler evaluate: value)]
			on: Error do: [:e | aStream nextPut: e messageText asText]].
	
	imageMorph _ ImageMorph new
					image: form.
							
	aStream nextPut: (Text streamContents: [:s | imageMorph printOn: s])! !

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

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 15:13:52'!
document: aDocLink on: aStream

	|methodReference textModel docString text indentation |
	
	methodReference _ self methodReferenceFor: aDocLink.
	
	methodReference ifNil: [^nil].
	
	indentation _ 6.
	
	docString _ methodReference compiledMethod methodNode comment first.
	
	text _ Text string: ([(methodReference sourceCode findTokens: Character newLineCharacter) first] on: Error do: [:e | 'Method not found']).
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel classOrMetaClass: methodReference actualClass;
				formatAndStyle.
	
	aStream nextPut: (Text string: methodReference actualClass asString attribute: TextEmphasis bold).
	aStream nextPut: '>>'.	
	aStream nextPut: textModel actualContents.
	aStream nextPut: Character newLineCharacter asString.
	(docString findTokens: Character newLineCharacter) do: [:docStringLine |
		indentation timesRepeat: [aStream nextPut: Character space asString].
		aStream nextPut: docStringLine;
				nextPut: Character newLineCharacter asString].
	aStream nextPut: 
		(Text string: '[browse]' 
				attributes: {BlockTextAction do: [:x | 
							self browse: methodReference actualClass 
								selector: methodReference selector]. 
							TextEmphasis underlined})! !

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 3/12/2021 09:35:05'!
embed: aDocLink on: aStream

	|text methodReference textModel |
	
	methodReference _ self methodReferenceFor: aDocLink.
	
	methodReference ifNil: [^nil].
	
	text _ Text string: ([methodReference sourceCode] on: Error do: [:e | 'Method not found']).
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel classOrMetaClass: methodReference actualClass;
				formatAndStyle.
	
	aStream nextPut: (Text string: methodReference actualClass asString attribute: TextEmphasis bold).
	aStream nextPut: '>>'.	
	aStream nextPut: textModel actualContents.
	aStream nextPut: Character newLineCharacter asString.
	
	aStream nextPut: 
		(Text string: '[browse]' 
				attributes: {BlockTextAction do: [:x | 
							self browse: methodReference actualClass 
								selector: methodReference selector]. 
							TextEmphasis underlined})! !

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 9/20/2021 13:47:00'!
methodReferenceFor: aDocLink 

	| classAndMethod class |
	
	classAndMethod _ aDocLink target subStrings: '>>'.
	class _ [Compiler evaluate: classAndMethod first] on: Error do:[nil].
	
	classAndMethod size = 2 ifFalse: [^nil].
	
	^ MethodReference 
		class: class
		selector: classAndMethod second withBlanksTrimmed asSymbol! !

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 6/18/2022 15:03:33'!
render: aDocLink in: aDocument on: aStream

	aDocLink optionAt: #embed ifPresent: [:val |
		val ifTrue: [
			^ self embed: aDocLink on: aStream]].
	
	aDocLink optionAt: #doc ifPresent: [:val |
		val ifTrue: [
			^ self document: aDocLink on: aStream]].
	
	self renderLink: aDocLink on: aStream! !

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 9/20/2021 13:49:13'!
renderLink: aDocLink on: aStream

	|methodReference|
	
	methodReference _ self methodReferenceFor: aDocLink.

	methodReference ifNotNil: [
		aStream nextPut: 
			(Text string: aDocLink labelOrTarget 
					attribute: (BlockTextAction do: [:x | 
							self browse: methodReference actualClass
								selector: methodReference selector]))]
				ifNil: [aStream nextPut: (Text string: aDocLink labelOrTarget)]! !

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

!DocNode methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 17:13:02'!
data
	^ nil! !

!DocNode methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 17:13:07'!
dataKey
	^ nil! !

!DocNode methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 17:03:49'!
readDataFrom: aDictionary
	"Read my previously stored data from aDictionary."! !

!DocNode methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 17:04:04'!
storeData: aDictionary
	"Store my  data in aDictionary.
A node's data is serialized and transferred in books."
	! !

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

!DocLink methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 17:36:09'!
data

	type == #image ifTrue: [^ EruditeForm fromFileNamed: target withBlanksTrimmed ].
	
	^ nil! !

!DocLink methodsFor: 'as yet unclassified' stamp: 'MM 6/14/2022 17:31:24'!
dataKey

	type == #image ifTrue: [^target].
	
	^ nil! !

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

!EruditeDynamicTestBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 19:11:04'!
chapter1

	<booksection: 'Chapter 1' parent: nil order: 1 book: 'Dynamic book test'>
	
	^ '!!!! This is chapter 1
	
	{DynamicEruditeBook::class}'! !

!EruditeDynamicTestBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 19:11:12'!
chapter2

	<booksection: 'Chapter 2' parent: nil order: 2 book:  'Dynamic book test'>
	
	^ '!!!! This is chapter 2
	
	{Object::class}[embed]'! !

!EruditeDynamicTestBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 19:11:19'!
sub11

	<booksection: 'Sub chapter 1' parent: 'Chapter 1' order: 1 book: 'Dynamic book test'>
	
	^ '!!!!!! This is sub chapter 1
	
	Hello'! !

!EruditeDynamicTestBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 19:11:25'!
sub12

	<booksection: 'Sub chapter 2' parent: 'Chapter 1' order: 2 book: 'Dynamic book test'>
	
	^ '!!!!!! This is sub chapter 2
	
	Bye'! !

!EruditeDynamicTestBook methodsFor: 'as yet unclassified' stamp: 'MM 2/26/2022 19:11:31'!
sub21

	<booksection: 'Sub chapter 3' parent: 'Chapter 2' order: 1 book: 'Dynamic book test'>
	
	^ '!!!!!! This is sub chapter 3
	
	Bye'! !

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

!DirectoryEntry class methodsFor: '*Erudite' stamp: 'AS 6/13/2022 19:55:00'!
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

!InnerTextMorph methodsFor: '*Erudite' stamp: 'MM 12/7/2018 12:59'!
enableEditing: aBoolean

	self setProperty: #disablesEdition toValue: aBoolean.
	aBoolean ifFalse: [self stopBlinking]
				ifTrue: [self removeProperty: #disablesEdition. self startBlinking]! !

!HierarchicalListMorph methodsFor: '*Erudite' stamp: 'MM 12/13/2018 18:42'!
expandRoot
	scroller submorphs first toggleExpandedState ! !

!TextModelMorph methodsFor: '*Erudite' stamp: 'MM 6/15/2022 09:43:47'!
enableEditing: aBoolean
	self innerTextMorph enableEditing: aBoolean! !
EruditeSystem initialize!
