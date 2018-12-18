'From Cuis 5.0 of 7 November 2016 [latest update: #3511] on 18 December 2018 at 12:31:22 am'!
'Description Documenter and Literate Programming system for Cuis Smalltalk.'!
!provides: 'Erudite' 1 91!
!requires: 'PetitParser-Binding' 1 0 nil!
!requires: 'PetitParser' 1 5 nil!
!requires: 'Graphics-Files-Additional' 1 22 nil!
SystemOrganization addCategory: #'Erudite-Core'!
SystemOrganization addCategory: #'Erudite-Morphic'!
SystemOrganization addCategory: #'Erudite-Parser'!
SystemOrganization addCategory: #'Erudite-Test'!


!classDefinition: #EruditePluggableTextModel category: #'Erudite-Morphic'!
PluggableTextModel subclass: #EruditePluggableTextModel
	instanceVariableNames: 'editing'
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

!classDefinition: #EruditeDocEditorMorph category: #'Erudite-Morphic'!
TextModelMorph subclass: #EruditeDocEditorMorph
	instanceVariableNames: 'acceptContentsOnChange'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeDocEditorMorph class' category: #'Erudite-Morphic'!
EruditeDocEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #EruditeClassCommentMorph category: #'Erudite-Morphic'!
EruditeDocEditorMorph subclass: #EruditeClassCommentMorph
	instanceVariableNames: 'separator separatorHeight proportionalHeight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeClassCommentMorph class' category: #'Erudite-Morphic'!
EruditeClassCommentMorph class
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

!classDefinition: #InnerEruditeDocMorph category: #'Erudite-Morphic'!
InnerTextMorph subclass: #InnerEruditeDocMorph
	instanceVariableNames: 'editing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'InnerEruditeDocMorph class' category: #'Erudite-Morphic'!
InnerEruditeDocMorph class
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
	instanceVariableNames: 'title sections storageMethod'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeBook class' category: #'Erudite-Core'!
EruditeBook class
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

!classDefinition: #MorphicEruditeDocRenderer category: #'Erudite-Morphic'!
Object subclass: #MorphicEruditeDocRenderer
	instanceVariableNames: 'stream document requestor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'MorphicEruditeDocRenderer class' category: #'Erudite-Morphic'!
MorphicEruditeDocRenderer class
	instanceVariableNames: ''!

!classDefinition: #DocActionLink category: #'Erudite-Parser'!
Object subclass: #DocActionLink
	instanceVariableNames: 'title action'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocActionLink class' category: #'Erudite-Parser'!
DocActionLink class
	instanceVariableNames: ''!

!classDefinition: #DocCode category: #'Erudite-Parser'!
Object subclass: #DocCode
	instanceVariableNames: 'code action'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocCode class' category: #'Erudite-Parser'!
DocCode class
	instanceVariableNames: ''!

!classDefinition: #DocHeading category: #'Erudite-Parser'!
Object subclass: #DocHeading
	instanceVariableNames: 'heading level'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocHeading class' category: #'Erudite-Parser'!
DocHeading class
	instanceVariableNames: ''!

!classDefinition: #DocLink category: #'Erudite-Parser'!
Object subclass: #DocLink
	instanceVariableNames: 'target type label options'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocLink class' category: #'Erudite-Parser'!
DocLink class
	instanceVariableNames: ''!

!classDefinition: #DocList category: #'Erudite-Parser'!
Object subclass: #DocList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocList class' category: #'Erudite-Parser'!
DocList class
	instanceVariableNames: ''!

!classDefinition: #DocUnformatted category: #'Erudite-Parser'!
Object subclass: #DocUnformatted
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'DocUnformatted class' category: #'Erudite-Parser'!
DocUnformatted class
	instanceVariableNames: ''!

!classDefinition: #EruditeStyledText category: #'Erudite-Parser'!
Object subclass: #EruditeStyledText
	instanceVariableNames: 'text style'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Parser'!
!classDefinition: 'EruditeStyledText class' category: #'Erudite-Parser'!
EruditeStyledText class
	instanceVariableNames: ''!


!EruditeDocEditor commentStamp: '<historical>' prior: 0!
Tap and hold emulates button2 preference has to be false in order for clicking on links to work properly (avoid opening a context menu).!

!EruditeBookReaderMorph commentStamp: '<historical>' prior: 0!
!!!!!! EruditeBookReaderMorph

This is the {EruditeBook::class} reader.

To open a reader on a Book, send {open::selector} to it:

[[[EruditeBook eruditeManual open]]] doIt.

See {Erudite Manual#Book reader and editor ::section}.!

!EruditeBookEditorMorph commentStamp: '<historical>' prior: 0!
!!!!!! EruditeBookEditorMorph

This is the {EruditeBook::class} editor.

To open an editor on a Book, send {edit::selector} to it:

[[[EruditeBook eruditeManual edit]]] doIt.

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

!EruditeBook commentStamp: '<historical>' prior: 0!
A book with title, sections, documents.!

!EruditeBookSection commentStamp: '<historical>' prior: 0!
A section of a Book.!

!MorphicEruditeDocRenderer commentStamp: '<historical>' prior: 0!
Renders a Document to a TextMorph.

Example:

erudite _ 
SmalltalkEruditeParser parse: 'This is an Object.

Look at Object>>at:

Properties are defined via #triggerEvent:'.

(MorphicEruditeRenderer on: erudite) render edit.!

!EruditePluggableTextModel methodsFor: 'accessing' stamp: 'MM 12/13/2018 16:17'!
editing
	"Answer the value of editing"

	^ editing! !

!EruditePluggableTextModel methodsFor: 'accessing' stamp: 'MM 12/13/2018 16:52'!
editing: anObject
	"Set the value of editing"

	editing _ anObject.
	self refetch! !

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

!EruditePluggableTextModel methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 16:28'!
initWith: aTextProvider

	super initWith: aTextProvider.
	editing _ false! !

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

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 23:49'!
getMenu2
	
	| menu |
	menu _ MenuMorph new defaultTarget: self.
	self class paneMenu2: menu.
	menu popUpInWorld: morph world.! !

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

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/12/2018 18:58'!
insertMarkup: aKeyboardEvent

	self getMenu2.
	^ true! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/8/2018 12:00'!
insertSubheading

	self addString: '!!!!!! subheading'.
	self selectFrom: self stopIndex - 'subheading' size to: self stopIndex.! !

!EruditeDocEditor methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:26'!
save: aKeyboardEvent

	self acceptContents.
	^ true! !

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

!EruditeDocEditor class methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 16:23'!
initializeMenu
	"Initialize the mouseButton2 (right button) pop-up menu and corresponding messages."
	"
	Editor initialize
	"

	menu _ SelectionMenu fromArray: {
		{'Help...'.						#openHelp}.
		#-.
		{'Find...(f)'.						#find}.
		{'Find Again (g)'.				#findAgain}.
		{'Use Selection for Find (j)'.		#setSearchString}.
		#-.
		{'Undo - multiple (z)'.			#undo}.
		{'Redo - multiple (Z)'.			#redo}.
		{'Undo / Redo history'.			#offerUndoHistory}.
		#-.
		{'Copy (c)'.						#copySelection}.
		{'Cut (x)'.						#cut}.
		{'Paste (v)'.						#paste}.
		{'Paste without Format'.		#pasteString}.
		{'Paste...'.						#pasteRecent}.
		#-.
		{'Accept (s)'.					#acceptContents}.
		{'Cancel (l)'.					#cancelEdits}.
		#-.
		{'Toggle WordWrap'.			#wrapOnOff}.
		{'Toggle editing'. #toggleEditing}.
		{'Insert markup (i)...'.			#getMenu2}.
	}.
	menu2 _ SelectionMenu fromArray: {
		{'Heading'.	#insertHeading}.
		{'Subheading'.	#insertSubheading}.
		#-.
		{'Bold'. #insertBold}.
		{'Italics'. #insertItalics}.
		#-.
		{'Link'. #insertLink}.
		{'Code'. #insertCode}
	}! !

!EruditeDocEditor class methodsFor: 'as yet unclassified' stamp: 'MM 12/2/2018 00:00'!
menu2

	^ menu2! !

!EruditeDocEditor class methodsFor: 'as yet unclassified' stamp: 'MM 12/12/2018 19:06'!
paneMenu2:  aMenu

	| m |
	m _ self menu2.
	aMenu labels: m labelString lines: m lineArray selections: m selections.
	aMenu addTitle: 'Insert markup'; addStayUpIcons.
	^ aMenu! !

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

!EruditeForm class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 20:16:30'!
fromFileNamed: aString

	^ (super fromFileNamed: aString) as: EruditeForm! !

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

!EruditeClassCommentMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/13/2018 17:08'!
hidePane

	self hide.
	separator visible ifTrue: [
		proportionalHeight _ self layoutSpec proportionalHeight.
		separatorHeight _ separator layoutSpec fixedHeight ].
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

!EruditeDocViewerMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 15:11'!
acceptsContentsOnChange
	^ false! !

!EruditeDocViewerMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:30'!
innerMorphClass
	^ InnerEruditeDocMorph.! !

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

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 13:51:49'!
buildMorphicWindow
	| leftColumn previousButton nextButton navRow |
	layoutMorph beRow.
	leftColumn _ LayoutMorph newColumn.
	explorer _ EruditeBookExplorer on: model.
	explorer addDependent: self.
	model sections ifNotEmpty: [ currentSection _ model sections first ].
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
	model sections ifNotEmpty: [ explorerMorph expandRoot ].
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
	navRow padding: #center.
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

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 22:46'!
drawLabelOn: aCanvas

	| e x0 y0 f w availableW l |
	e _ self boxExtent.
	x0 _  e x * 4 + 14.
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

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/2/2018 00:06'!
exploreBook

	model explore! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 14:09:39'!
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
	menu add: 'reset variables'	action: #initializeBindings.
	
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

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 12:34'!
saveBookAs

	| title |
	title _ FillInTheBlankMorph request: 'A name for the new book:'.
	
	title ifNotEmpty: [
		|newBook|
		newBook _ model copy.
		newBook title: title.
		newBook store.
		newBook load.
		model _ newBook.
		currentSection _ nil.
		self sectionsChanged ; contentsChanged ]! !

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 17:44'!
sectionsChanged
	explorer changed: #explorerList! !

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

!EruditeBookReaderMorph methodsFor: 'initialization' stamp: 'MM 12/11/2018 16:28'!
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

!EruditeBookEditorMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 15:20:28'!
explorerMenu

	|menu|
	
	menu _ super explorerMenu.
	
	menu add: 'toggle live editing' action: #toggleLiveEditing.
	menu lastItem setIcon: Theme current switchIcon.
	
	^ menu! !

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

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 12:43'!
code

	^ super code ==> [:res | |code action|
		code _ res second.
		action _ (res checkedAt: 4) ifNotNil: [:a | a second].
		DocCode code: code action: action]! !

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

!EruditeMarkupParser methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 18:17'!
link
	^ super link ~=> [ :target :type :label :options | | link |
		link _ DocLink
			target: target
			type: type asSymbol
			label: (label ifNotNil: [label second]).
		options ifNotNil: [options do: [ :opt |
			link
				optionAt: opt key
				put: opt value ]].
		link ].! !

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

!EruditeBook methodsFor: 'storage' stamp: 'MM 12/10/2018 21:27'!
defaultStorageMethodReferenceFor: aBook
	^ MethodReference
		class: EruditeBook class
		selector: (self selectorFromTitle: aBook title).! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 12/10/2018 21:27'!
load
	| storageMethod book |
	storageMethod _ self storageMethod.
	book _ storageMethod compiledMethod
		valueWithReceiver: EruditeBook class
		arguments: #().
	self become: book.! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 12/4/2018 10:55'!
selectorFromTitle: aString

	|parts|
	
	parts _ (aString subStrings: ' ') collect: [:s | s translateToLowercase].
	
	^ String streamContents: [:s |
		s nextPutAll: parts first.
		parts allButFirst do: [:part |
			s nextPutAll: part capitalized]]
	! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 12/7/2018 12:31'!
store

	^ self storeOnMethod: self storageMethod
	! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 12/4/2018 20:16'!
storeOn: aStream

	aStream nextPutAll: '(';
	              nextPutAll: self class name;
	              nextPutAll: ' basicNew';
	              nextPutAll: ' title: '; store: title;
	              nextPutAll: '; sections: '; store: sections;
			   nextPutAll: '; updateParents; yourself)'! !

!EruditeBook methodsFor: 'storage' stamp: 'MM 12/10/2018 18:51'!
storeOnMethod: aMethodReference

	|source|
	
	source _ String streamContents: [:s |
		s nextPutAll: aMethodReference selector;
		   newLine; newLine;
		   nextPutAll: '<book: '''; nextPutAll: self title; nextPutAll: '''>';
		   newLine; newLine;
		   nextPutAll: '^';
		   store: self].
	
	aMethodReference actualClass compile: source notifying: nil.! !

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

!EruditeBook methodsFor: 'as yet unclassified' stamp: 'MM 12/4/2018 18:06'!
removeSection: aSection

	sections remove: aSection! !

!EruditeBook methodsFor: 'initialization' stamp: 'MM 12/17/2018 23:01:09'!
initialize: aString

	title _ aString.
	sections _ OrderedCollection new! !

!EruditeBook methodsFor: 'initialization' stamp: 'MM 12/4/2018 20:11'!
updateParents

	sections do: [:section |
		section parent: self.
		section updateParents].! !

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 14:13'!
bookNamed: aString ifNone: aBlock
	
	^ self booksList detect: [:aBook | aBook title = aString] ifNone: aBlock! !

!EruditeBook class methodsFor: 'as yet unclassified' stamp: 'MM 12/8/2018 14:54'!
booksList

	|pragmas |
	
	pragmas _ Pragma allNamed: #book: in: self class.
	^ pragmas collect: [:pragma | pragma method valueWithReceiver: self class arguments: #()].! !

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

!EruditeBook class methodsFor: 'storage' stamp: 'MM 12/17/2018 23:52:34'!
eruditeManual

<book: 'Erudite Manual'>

^(EruditeBook basicNew title: 'Erudite Manual'; sections: ((OrderedCollection new) add: (EruditeBookSection basicNew title: 'Introduction'; document: ((EruditeDocument contents: '!!!! Erudite Manual

by **Mariano Montone** //(marianomontone@gmail.com)//

This is a manual and reference of Erudite package por Cuis.

Erudite packages provides several things to augment Smalltalk documentation:

* A {EruditeDocument::class} parser. A Document is the container of formatted text. There are two classes available to parse and format Documents. {EruditeMarkupParser::class} and {SmalltalkEruditeParser::class}.
* {EruditeBook::class}s. Books are basically a collection of Documents organized in {EruditeBookSection::class|sections}.
* Book {EruditeBookReaderMorph::class|reader} and {EruditeBookEditorMorph::class|editor}. Morphic applications for Book reading and editing.

') images: ((Dictionary new)); yourself); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Syntax reference'; document: ((EruditeDocument contents: '!!!! Syntax reference

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
[[[Dictionary new at: #foo put: ''bar'']]] exploreIt.
[[[Dictionary new at: #foo put: ''bar''; yourself]]] exploreItWithButton: Explore dictionary.
[[[2 + 4 * 5]]] printItHere
[[[ImageMorph new]]] embedIt
') images: ((Dictionary new) add: ('/home/marian/Escritorio/smalltalk-logo.png'->(EruditeForm fromBase64String:'iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAABgpUlEQVR4XuW9BXRcZ5Y1qhJL
pthJ7MROHHBiZjtmJlnMzFAlFUtVYmZmZmZmC21ZRtmyZabEYexgd7o7Pd1R7Xfuld2d6Zl+
a/715v3tRLXWlxJUJLnOPufss/d3v6v0a34A4NBS/leLXsL5x6uVmdfPf7I0/ue/I0L5F79P
OSLiH5/P/se/NfD/k0BwlH76/sM37k91vH53osXy3QeXvv3og9vfXb99ubYiw/P1ixer3/rp
p0crgJ9W4KePVkyOFq2ozApZMdrfTp9/8Drze5ifEhGh9J/AxHzO/P6n35/9j/+LgW9ublb5
xecv/vgf/7GRntcCX6wD7tJ6l9aP64E/rP7kYYfe5IWmO91NkZ9VpBz6piRpJdIiNiMk9uR/
ZIcZflqTK/vsdF/uZzcnRz6buNjyWW2B6LPoEPdPc3ISPx8dqH90abTK7IeffnqTiT2H/X2f
rwH+/Np/U4XYv4tZsx8U/3eA8Px716q235gcK7l78/rXly5c/uzcaN8X54Zbvjg30vHFpUuT
X1y6PPlZU03KN6G+DuC7bAXP7jX4ODyn4NvNVUjt5yFUtAgip8Xws16GON8D8BfugdBpDZwd
jsHBxRTuHubIiRd/f3Ws987t22d1ulvzDMdH6j/p6yk67R9ssuPupc6d9He8+t/9fbMfCP/L
WX/mzBlVS0tLlT/96eGyO5Pt+wa6qrIaylJ+jAuR/DU6OBRiYTTcPWPA48eA6xUHsV8xxL6F
cPWIgK21QOFoY6GwtDBScB0N4Oq+HzKHxYrYBI4iJklJkSlUVUR4qCvkdmoKT6s1ClfLAwof
d32FnGej8HW3RnqQK6qLwv8g93H6g5mNDk6Y7IKTx+HvSnLC/nT58plu/Kn/FeD3z+PPHx/E
X/96kP7eRb/822d/BP8/Bv+Xn398Y8SmtTr3b548358dXKJgR8vJI0XB829UePo3K4ThXQp+
eLtCENKu8PStZ7/mKa+Cp3cFnL2y4eLsD5ErHxKPE0iO3ISq6OVoSHoBVXHqqAhUQqDrfDiZ
vQi50y6khosRFyhW+HraKISORjA03Qtd8/0KI6sT9LwXu4+uR0iMBy6erWk7M1qXdXaw5Odz
483Tw5cbM7/88t5xhmwyf/OZiAjVJ3xh9pPH/6PgP+n1wI057948bRwYKDRwcXHN9nKVwNVJ
DldhooInz4arKB6e7iFw8Qijsh0KoW80hEFJkAbmQuKfB5/gEghDSiGkZ553KTxE+XD0SIOX
MAl+XC/E+emhJP4t9CYvQ0+aGopCOJC7LECAVBcFKT5ICRHDR+CqEMg9FO7+LuD628Pe00hx
zHqr4ojLW4qAVGv4phvCxOMVmPHfhCjpGFqHCvHo/rV4Crr2fwPq2Q+Ef/VgRqwn7J7z5M3S
/PjRePhoew4kXB2YH90N+5MnFDzD3XA8vgnuJzbB+cRmeG5aCI99r8J9y0IID7wJwcmlEOqs
gZfudngZ7QPP6gg8nc3hJIyFKKwEXoHl8PSthYdPOcTemRByBYjxs8JwwSY8alXDcJ4SQjyf
Q6iPNQrT/RCXIoXAXw5RbDoksR5w4RvCymMbTga9hOPJSoqj0UqKw2FKin2iuYodBs8rDuu8
ivLKCPR1Fcc25Aca3B4vtfnj767q0b9HZfZH+V+Odf8Ys5jM+earS2afjGcln84JUfD0Vyuc
ds5VeK3WUHisUYPXOhUErFNFCD2za70qcraqIXajGvtx4kYOwtYrQ06v8aHFX6kGtw0LCDQE
FpO9cLc2BU8cS0AoAz+4He7SEqooMQjke6EsdS2utSmjN42DcO46qgA81NQkISTeDyEZYZBE
usLabQfsfZfDo+ZVmBaqQydZE0eEajhkMhd7Ns/DjlfVceTAqwoPx6MI5ukjO8IRddWJP45P
NIR8/d3XxvTvm/N0epj9wf9FSfzq668cp6Z6vNtTvJI6Uvg/NUqPIHP3UoXfBg2EUmAzN2kj
f4smKraro5xZ72ig4h1NVNJz1+75aNipjcxtHGRs5aDkHTWk03P0RhVEbFBFJK0wAoM3gUG0
5XmqEpvBMzwGgaMIPr7JkAQQTxBlwlEmRVHyfgzlvI2a0DnIDNmDtOx0JKcEILaIOESWCawS
XoV9oTY8UtXB9X4FPrIt8NVbDNfVarBaqQnDtzWht0IDh99UVxx/XU2xe7m6Yu87b0yLvG1Q
WR774Nat3oX/LDLNapL39ddf23/28YW04daibxtieEg2XoPIdcpIW6euKN2ije69z6P12OsY
0VmFwUOvYODQMgwxz7sXonnnHBRu1UbpVi0UbJmD6PXq9P+qIWOjFj2rQ75KHYFrCQAEoNC1
9PlqLfis0gRvpTp4b6uBv+1FuB5bBxudQ7B148KeGwkvbiyS/exQHbsGBRTshEQR0vJLIYnL
Ai9TDy61S+GeqQkX7lyEmC9H9YkNBLaFCCAAyOlnS2gJaTms1oQ9AdN03RwcWK6m2LZYWXFg
g8oXwT77Mz9/PO7wtO3NSnXx6T/6q+++c7p24dS33ekiROisVISuVZnO3qSlaDqyHEMnV2GI
gj50YiVGTryNjmNvomXfYrTvXYwKCn75Vg1kbVZGxDoO4o6rImqHCsIOayDMQBM+RzQhO6qJ
UH1N+OnS54dnloy+LqUlOKIFwVEtCLdrwvltdViuUoXh9sXQ37cJ5hYOcLB3RzDfBJkBuxAT
b4LYzFR4JrjBI2YtPCXLITWYg+yj81BgvBAJxvMgOaKNKAMNROoT8Oh3RtHfEEIfCw/NB/+Q
NtyPacFh33M4TMBzMlqLjsbU7774eMBtVo6MT4P//ceTHme7q7/P4J6k0qz6c9Z6NTTsmotB
3TUYNdmBweNvUeBXoO3gK8jerIEc6u1ZB1SQY6mJHFMlFNgTa7dRRSV9XMFVRqGbEsq8lFEh
VkE+b2ZV0sdFQlXE8bWQ6DMHUTxNRNOK4dKi5xBLLXhTcLy2acGRSrcRVYWTWxfj2I6NOHls
Kywdt8GGfwxe3vpw9FoJJ/cFkFtwEG/0EmptV6LR51VkhaxEvPRNpEuW0VKlpY4YT3WEuakj
wEAd4Q707KwJvtU8uBDwjFdr/8wz3IAoH9MvMopiiq5da3b9u3Y9W4I/MdnCbaxM+j7Ncity
N6pP1x56EwN6GzCiuxaDlOk9B16i0q6OlA2aiFurgaTdHFRZKqHSiYMKiQoaRRy0haqgM0oZ
p2JV0BfOQXukEtpkSuj2VUKnmJZECT1+NFFKCRzBc5Eq0UYoBSLcUQN+Qm34SeZQuVeDvZ8m
rD01YOSggpNOKrA3VMOxQ3OxZcM87No+D6bGK2Bu+zZMrJ+Hv8syyNzWwMd1NcJ8DGh6OIEY
0XGECY4h0OMw/J02UbA3w9t+C0S2W8Bz3wAft40U/MWQ2alDZqsNl4PzYblOTWG873lwzd5B
ZpTLNxOTrS4zleA3DIKn/7iOvg6P0iCnb/32LUfuZq3pkZMrMWa2i0o9zeOHXkbxNg3EUi8P
IcYfvkMVqXZUGWSqaIrQQG+4ErooyB0+ShhIUMZIlhp6I1UwkKSGHprh24RKaJcRWAI0USzT
RHWYFrKFGojnayDPn9pD4CI4hmvBJkkTtglzYJarBLN0LehFaeAgAWifVBsnnJ/HAfvF2G2w
GMcPrYTxjoUw2jUPZnYvwjHgZZjL6Wvey2EsXAtzrx3g+pjBg+cMrqcjVYpAOLnKYGPqBjtL
D9IcHGFhowsj012wMl8HJ8slsDd5EU76i2Fv9pJCf5v6z1b7XkBtufx3v//i5m8XBE8zv6un
3TnP1+2bqK3zUbp7yfSQ4RYMHXuDMv5lpG+mEk3ZHkKZH2Oljkx3ZZR7K6MvQwOD2Rroz9TC
cJY6htJmVl+0Krr8VdDGZLtMGe1iDmr8NVEVpIK8EDWIo+fCvYB6bq4KHDI58CpVhkuFBmzr
VOBYrwyzamUYF1PmR70AvZBFMJG/BSM7feiYWkHP0gK6lmbYd2QTTm6aB/N982FxgILnvgsm
vuthGP4CjOO1YJivAbvMZbAKWg+TgA3Ql9D33fXgIDWGk78xhP7uxBncYGXjAidbC5ia74GR
+Q6cNNoCHR0Sj4xewe4N8392M9+CsChp7m+67H/55ZT9ZGn874oPv4qKvYunx+jNGKA+X7qN
Ak6MXUbMXX5SA3HO2qiMnoOedBX0JHFwOlcb54s1MVGhipEcTYzmaeJUnCob+FYv6vsCNRTL
OSgL00RA/HxIS1TALVOCRZEaLOi1JvVKMGlWglGDEozpY8s6JVjRs0XGErj468Ir2BauciFc
hBHgSgrg6pkNCwsfHD56AEYnX4anqTYExnPgsG0u+GYb4C8whqNUj1rHDtjEvAnLXFWYltLP
LuXAgESkk1HUUmIWw0C+HDoea+Eo0QXf2wNeAlfSH5xh7+YKAxNbHDfYAz2TnfS8W3Fo51uK
Pbte/qCmLX/sO5qKnu51+M0AYBKTasMtqRkdJLHW71vy86nj1Of3L0Haprnwo7FNTCQvzlqD
gqmMJl8O+tM1cTpvPpV4TYwVvoxLNetwtkgdp+LV0SWnbJcw5Z6DUqkq0sIXQFJIP6NGGQ6V
qjCv58CiSQnutLwo290alWBezYFZDQeWlPEOyW/APmYXHLypZMvyIQ2thjCgAXz/ZnjKK2Hr
HE7avwE8bF4k4jgX4R40OtpowfnYQnC3ayPwyHqESjzh78sjj8EM9kGrYFmgBfMa+t11yjAq
V4JpMQdG2ao4HrIA+oGvwCToLejw1sJBokP/jzPMLHgwsbSDkaUOdIz3Y+e+ldiy4xVEJgkw
fqk55DdDCp+KHWevNFgPJQm/6tDfON139DWUvkPjEs3nfuspa3U1UOCmipYQJTRRjx9M0cZ4
yTJcadyPi9WbKePnYjRnEYGBOEAkvY6nRD1eHXkJCxBWoAmPagpyE5X4diV4timB10KBp8Wl
rHdupWcq91aJC2EW8wZ4sUchDveBIKwAfPIIBGF19HkPBb8G/MAGcKXFMLcUw8l6PbID56I7
QRUdiWrIoWlCcmge3PcuQNBaNaTor0actwsCxF7w5lrBTbAfdvJdMA9+G/oxL8A88TnYZsyB
RZk6TIpVcZRI6mFfNQLDy9CVvYFjTutgSa3Cxd0KDtb6OG60H3uObvr5qME7P5vaHokpaw56
8YsvBuc8qZ6cXzXpo1Km2tuSkFTM16FyP19RtWMOAtYqw2czMXxrbZSLVdEQroG+JG3S4V/C
5YbjuNpyDJN1i6n8L6KsV2NJXxf1+fogZeQGKiMyQxW8eloUeCboAgq0qO0fi0efO1LmO1K5
ty9dCOeQk/CQu0AaHghRRAUFvQuSmEYII6sgCm2DILARXn61sHWJIB2AjKDQFzGWq4xz2Ryc
z+OgO0kdcTakKdC4mLJRCdG7nyPWr4tEfyeE8gXw5TpD5GRK7uQRmMhWwYB8ApNsLZhWEMkk
xVAvRgWm8Zo4HqqKw8EcHPIh0um6DMftN8LQ8hA5jIeoEhxU7D++BZt3rfgiKo5/Z+JCnc6v
thJwOBwWAIyu/+h2u7S9LOy7eIPV04nrlRC2WQ0Ru9WQ76mNMur1nVFK1NtfxOX647jW7kDP
x3C2+CUMJtJoR6NcFxHBDpEyamVqiMtVB7+WA0EjZTwFmlnCJ4sBgRezWjiwp+87l2vDLv5N
uERageuXQcEuhDiqAsLQVnII2+jzWghjqQqE1oDnUwE75xjqzcYI9nwZwzlquEHlfLxADRfy
adSkVpTiQeWftIrEzRxEbVKB4MDr8Hc+hnCBDfw93eHr7gAvT1Nw3XVgLVkP3eClOEEThy5N
KYY51BLo5+jEcXAiTBlHqNod8FbHLocXsdt2KQ7brcJBvS3YTxK1jvEB2DgbgCu0CTp/5cqq
M1NTz828pZxfncbPuXdjwGCsNuVPRVJLhJ9cT7q+GkL11JEj0kJ7lApOJWvjdMFyXOlwwGSb
KSZq9mIweQExfA46KOM7vKnXB3FQnqyGwCRVKvVUzimzXam8CyjoPo3KkDQrQ9A+AwD7Bg6c
6HtWZZpwTzwJUXAgBMHVEAS1UtZ3QBbXB+/I7hkARDRAGF3OmkKu/GxYW/Op9K9DTYwWrtWo
4DYB6TJxihsEuFFi+zmyeZBu14KMOEvaFiUEk7zsumshuY07EOjpihC+B3wFPPi420PgcBKW
NgehL10Jo9AF0IlQJdOIA8NsFRhHaeFEiAqOhCrhoLcm9nnNwUGpFnbbv4j9pquha3JEcdL0
8LSdm9n3tU1Vn1+evLyLeU9/uR3uV0D8Dqoyz/FOx4yKXY6j1E1v2t9kE4L11VBOSlkLsfZT
cXNwqfYIpnq8cG0kCOMVb2IkgUMZT7M8zfNdPspoiVZDQiYROspom1oq6UTsxO0k5HS8CP/O
FxFVvgi+tWoQtnOoCnBgTeAwK9GCZeQeeIZnQhTeCHFYB9nAbfRxM3yieyAJ74Q0sotdbDUI
boGdaxzMjHciyfc5DGZp4WyeGibKObheR6tWmdqBKsojSDwy1QKfJpbkLSpI36IGCWkVgj2v
IsxJByE8G4hIDxC6WkLqaAqRgwnbEo45rYKe3zIYZKngeIwSdEm4MiEQ6ISpUDtQwiFaR0M5
OCiejx2Gy7Dv+EYc1d8NXdNDkMndUJSX6Hvnzp25DB/4VVSBp7p2VtZJjUSDtRGy7S8rIr0O
K5IDVqKYzyGiRzN89iJcbThGwRfiapMhLpTvxmDSAsp4JdTTJFArICnXRxXhRMKcmV5OAJC2
a0LesQixLSuR0bYHiT2Uee0vspnP9Hwu9XvHYjJ34szBleVQ5jdBHFMPn5geSKMIBFF1FHym
CnRDFtMLMfV+PrF/d3EB7G3lcLVch8ZEdUyWUeYXKuFMFgcj2eo0jWhgNFMVjZHKiLHXJNeP
PIYNWuRE0vi6UZmsZxX4HXgVYjsDyD0cSCm0hR/PBb70sdjBGDbWuqQN7MdxnxdxnEjsyQwl
6ISrwIB4zzEK/PEgdRz1n4PDQmoHDouxw+Rl7DqyCscMdk3rmugoElKi/9baWXuAqarPfBV4
6nPTWjA+VBeeLqJxaqWqIsJ6PpoI9X1sv59HDP84pvrkuNpqjLGCheiQk4wrUEK1UIXV0oND
NOGYOhdOTC8nosench/UuRT5p4yRVbsFgZXqEHYQ66fA86n8O1TNhX3iRirzIgpsHZX4dpbc
MYH2iemmr7fAl8p/cPoAAtP6CQhd7MjnLsyFnWMEbOyMkB26CJco6+9Q6b9PP/Mu/eyLZWo4
QwAYyVRGDTH5BDc1eG7TpKCTsrhVBSnUCkLIanZfrQHu3tfh62yNQD4P/h5O8OM6QUogkLrZ
wM5KF6bWh6AnfpOyXQ3HwzjQIULIAEHPbz4OiLRxQKpJS4uWOnTcV8HM6bjCxNweYhGfFEzB
zl8FIXy66+V3f4He1LlBSI+vha3OW4jjLSVNXglDyfMp+JT53XxcabXBcPoS9DP93ofkWwEH
2YxpE6YNHvVexyKa2Um8cWtUhbjpBcR2b0BmL2nuHS+zgGDGPWsSdGxp7vZM2EU9PZuIXT2E
Yc1U1tvYUi+P7SMAdEJEX/dPOoUgAoAotJ0FCLNf0MUzjaRaGazE29BZpYYpGimnGpRxj37+
DeITtwh8ZwtnKkBXLAcFwSRYmWoQDyALevscFgSxVAUkpGC6rqKWYLgPAV5cyGkFCGk68OFD
RnO/h60ueNYnYWV7BMcFb+KYL6mIEeo4FqLMtgKGFDKc4JCfKg6RunmQfAoT12MwsDkKS7s9
Cm9fh4iPP//8JL2/LzAgeGbdw6cV4Cvgrcoo356gPUuREWWlyIrbgcb4hRT8o7jOBL/pJMaK
FqInTInN/mqas9OF6oiOpje3YA7siIEzmS1sV6bgr0Rssy6y+o5SFZgJvpj6vQPxAavauaTr
74ZXUAAkYZV/Z/iSiJngM1nvE9XD8gCmGkjDKPhBjSwAvHyrSfQJhKnpQcT5L8XlOjU8oN/J
BP8ugWuiUgUTVaq4XK6C89lK6E9SRnE4uYg0DnJXUhUgo6r6HU0CgTICqQp4rtKE157XWIPH
k2eCAMrcWH8pgiUCuDtaQehgBC9bPVhYHcJRtzewj/wNJvhMK3gKgP38edgvmIOT4XOhL1hH
nsQbOOD4msJD4orOtqY/3r85vIF9n5/hPQQsMs8Ac5MEhrlxDm+gtdVb0dpgh7Gqo5jqleJK
C5X94ucxkEhSL2VAV5ASsmkkCo1VgysRPXPKeicKrmejGgLqtqCoxxrZvUchb38Z7s3/mPNt
KPPdcg5DnJAPMQWczf7QJja4DNmTx/RR0P8BAJ/oXur5jfD0raHXtYPvVwdDay4x9pdIeVRl
s50JPrsICHfod50vJBBUKGOS5vnTWcqoI6EqxUMNPjs0EUltoHGnNlp3ktNIo204jYiS1eqw
3DkHPIf9VAncEOzFR5BQCLnQEzIPO/iQViBxMYKTy2HoOq3AARptmcCzAKB1UKZBIJiDI35z
cTJsHvZ5PA9T7m6FnautQiYL/qm5vTP88XffLXgmq8DTP4iel16+cr22KMMLaUHLFEP98bhz
PgtTnc640euFM7nrWFevg1h+K5+y34uyX6wBKZkzDpR5ViSpihpfRnjzVqTWeCCnyxRBHS/B
o2VG3GFKv3MVB44ZrxDTl5OC18JmPBNUJtDSiC4225l+zyw28+lrElqs4ONfR2NhE41+eeTQ
UWXx1aZyr8oG/e8AeFIFrlUqYTxfhaqAKrUBFTRFKyMzSAPe+prkWGpQ8Ofg1O6FqKRKkEp8
IIhA4EJ8wJ0qgcRGD/5STwSLRfDmcyFxs4e7nRstJ/g4WtCzLvbbvsnqAU8BcIQq4j4vqgJC
AgG9R4clC1k+oOu6UeEp80dTW8/X1+6ceeuXHsuzCIAlY6O1JcUxqxQt0c8rrvQk4r27wzjf
LiVljwyg2IVsz2dIX4M/MWlS2fypx3Jp3ua10HP1CkQ16qCoywk53YYI6Fz8pOwrwYWy1JJA
4J6znAQcdzJy0sAPY8SdFgp+JxtspvSHZA4iungEIRmDLOsXRzexrUEQ2MSSP2aLuLNzCGIE
G9FHSt0kge7+PwGAWfdpXa+iSpCngtM0jjaHK6NUroEgE00IKNvTt2higFTBFlI387apsHsX
5Wu04LVKHS56b0EisYQ3+QaR/iKEy/nguwrBc+FDQuOi1J3IIQlJJ4Vv4Ih8LmW/Orv28+ey
65CvKo6FqUOX/zb22b1CINiqiEwI+fO1a9cyGJL9zO0kwpPyX5IZt6Qi6kB9WyjD+JcrJobz
cO32BEYa3dDhp40uX5rxSQeooFEvR0azNREvzy5y6YjQOdaT5Np6HJU9EpR2eiGpeycr+MxI
vBy4UFZalM4DL5HElgBmV28dPIOLwQ8tR2B6L/wTT1HQBxBDwQ9KO0XSbxfEkUQKoypnxJ/Q
DtL9a5kLSmBrZYUM3yXE/P+p/D9ZdxgeQBzgYhktcvnO5xAPSFBGpR8HEVaacFupRWWfNI39
izF46FV2o2rsppmNqHIihW475kFgfQASTydEkNsY7SdFmNALvnx3uHAd4O5kBLG7LSw9jKDr
tRK7nRaxHOCQH5FC+Xwc930ehpGa0OO/gaNWZB87b4CJ574/dgy0BDA7i5+pqeApEm9+8s0r
A73t7e3xepTpczDRbIxLA1mYvNyC8SYJ2uSLWLZfSBZupkADofGk7lHft6esdqYyLKjYgtw2
Z1R3yZHVRdnfsZiqAgeuFCCm79uXz4dbkjEEsRk04zeTqkd9PaQK/Kgi+Kd2ITx7CDElo4gu
GqHZv5O0AAp6SAtNBo0zfZ8MHy9i/468DLhY7kVNlCo79v2X8k+/a6JCBWdzVGkp43wuB2Pk
7jFEsIak3ChXTUj2aSGEPI2qw8swrLOKfA41diyMIQD4r9GAJ+kFLroryCPQhy+1ggA/EaJo
+Qq4cGMA4GIBLw83ONnZwNh5HysY7SMCeJBawjHZi9APfRlGYYth6L8I5txdCmvPwwodj1V/
js2QpX8w9cFzzxoA2H40+fDGztPdmX9u81+kGMl+VXG9PwDnm+0Uk92uuNSbU1XvvbehVL4M
SXx1RRhJuy5E+EzrmdKugqhOcuAauajuCEY2lX4/En0Yjd+dMtG8bqb0O+a+RYQvkjK6hgLc
Dt/YfvjEkcgTSxkeUwV5Qgci84fY3s/0fRFlvCSyjSWITP/3INGHJymCrVskZd9GDOWr4gHp
CXfb/isApshWvk428jniACwASBjqjlZi9YBUD1XIyBhirkOo2DWX3bjaeZB0CpoIYjdyyOzS
IJWQqsT2ufCyOACZwBmB3gJE0VQQFSiFP1UCxj8QeTrCk2sHR3tDHLfdPFMFCATH/ReyANAN
eQlG4S/ClOxkG/7JaQt3ffjHJ32eUXHm9WeKBzy1fa+dy992ocnpu1P0Ro2Vr1JcKRViLHit
oi/3RVSUnLjdcars3qkKGSLClirsSlVgTkF1oSVqIRZdbUDBj0Bplxdl/hK27zNlX0DLkRi5
Wc58uIZaEwDKiNC1saSOIX1BaQOIyD8FeWI7iTx9CEw5Rd8jISi6htS/WnL/mlnThzF/3MX5
sLYNhJm5OSIlZEBVqv2X0s9mP42AN8lnuFyhinPU/89nKWE4heTrFBU0078tU6IM2X5N+BLh
y2V4ALWB/n2L0blzHvK3qSKeDKPAdRrsaMjd8TJkLgYIEvPhL6NW4C9BJIFAzHeDnEvysdAe
PFdrEqQO4bjLagLB8zjm8wILAD0CgG7wS9ALfQkOwYcUpna6Cn9f3z9PTU1VU9I998zwgJm5
lKM0Xh+4cyBn/+9HMhfiapu54mKlOcYSaFQi/Ts7cCFq8x0x0pKCsJwdsCPJ1ZbGPS5leFzX
JpS2BaCxO4FKvx4RPlVW2+dSebZhfABS6Bzj9sIrpJgEn3pIY1rYsc47qht+iX2ILmTK/ijb
+/0S+4nlt4ArL4CHTx48pIXg+uSCJyuGs2cKjIyE8HDTQQtp/gzT/+8AcJN+500Sgi4WcnAh
h+n/HAylqdHoykEnASCPLOlwIoLepAdkbNLG4JHX0H/4VZoIFqCEuADTChjXUL5WHdy12hCQ
5SsSeiBALECIVITAQBH8hAQIUguFTgbgOxjSOKoPJ/cjOOq0EkdES6Af9hILgKfLNGwF8QWd
aamUi9Gzo4//+Ee8/EwA4Gn2/wlYdmOiY7gl9c3psbK3FVfKuDgTvJE0fmV0h6miyV95ukAw
R5Geaqjgl29QWNbQHE8BELVSFnVYobU3EZVdMqR27yfdX/3J2Dfj7lkWEvGLcaUsJnMnnOb8
uC62xAeRrBuZP8z2/LiyUUQVDUMW281q/oLgenL6Sqjs58FdkAsPYR6c3RNgYOwKEXcDujNU
if2rsByACTozBTxdTEu4TBxgspLxBTg4Tf1/gP4dfbE0vhIAcoioBRhp0thHwd6kjOYjy9mt
7KcOvYIO0gXyqAokbyaZmMZC3motuO1cCrGbEWkCNBaSQhgoFiKYzye/wAnepA14WFvAw94R
7iQW6XpsgI7/EugFUwUIfgqAJTAIXQYr313T7lIHtPf23Prgq69eekYAANar/vjzhwfO9Bf+
oSvjJIk95oorDVYYCNViN2syJk+ttyoy/DWRXnQE8mo9WFbPBZfe+JT2g6jrCkNlhzey2k/C
t+0FInyk9DXOVAA3eo1D/tuk8ccSo6fSH9nBWrpMBQjJHEBc+ShiSyn7S0YQmDoA72ia+aMb
Zgwg8gDEoc0k/lQTEPLh7JFKyp8xoiSLMExGz9lCdZwrUcO12hkg3G6eWcwEcLlEGRdLVVke
cIGmgDESgobTVdBB1aw4ci4S+DTB7NdAxHplVOzQwpDeegwwW9qpDbBVgAAQT+DwIUJovZ68
DaMVEDsSt/FyRaCvgMDAJzB4Ioi8A5mbCzxpebhYky9xBIed3mbbgGHEUmoFS1kQsJzA75Vp
Z7ExqqpL70xMnPn3A+AXs/+yLz9//3xXZcjfBgstFdfbrHCxdhf642Z269ZJOcjwVoM8ZKGC
l7j5s5ACp++k9avAa1JTJLUdQ0NvNEq6bJBQtpymghnGzzB/ZvOmbQkBJdoRUpJ5pdGtFNwm
VuHzje9j9f3Y4iEkVo6y7N8/qf+J/dtKq52IXzO8/GpmXD9hDmyd4uHuaoDKpPkk7qjhJv0O
ptxPkPdwrlgN5wkMDCiukQXMeAHXaogHFBMRzGE2p6pjMF2N3Exl5JMYlOasDr/tNPevU0Pq
JiU0HX2dnQaqtmuiioShXPIJGKfQl8igM4HAfNsCeFIrCJNwER0kIUIoQVywDwK9PKkVOMLL
2Q1cRxdI7I3JA9iE/aI5sE5+G6bRb0A3aDEB4CXo+C2Z5gYaoKqm6M6ZM73PAgBmyj9++vit
u1eaf9dSysV4s0BxtekIhlLnkNavil7Su6tFyvD111T45OyjjPUquHGtsb+63x/epQf+Fl5h
rajo9EdmzzHImshvb1FiRz8rmhDMaEZ3i98ESWgcZT6V/ag2drybEXsG2NKfVDmClBqqAtQC
/BL6WLOHcfuYZ0FwK41+Tex2LxfPVJhb+sGHdxxdmVq4SvrD05LPZD+jBTDrQqkaxvL/AYbT
uWQGZamy/b8jRgWFJN/mEJgTeWqQHdWAkIIbs0EFLcffxKjxdnTvX8JewMpcpJpIuoD/WmYk
1IITVQGuwZuI8LREpI8ICWHeiA/1RijxgmABEV+SjSVujhA4GcPF7QSOuayEju8rMIl4A/oh
S1kiqOv/0rQoxhzdQ7137nzwwb8fAE/HkEfni1aMt7h8UpV/FKfaEhUTTUepxKqgN0IVHSJS
/KQchTepWt6FJz68da3zzrcfT/x451qNouVUMGq7o1DU7QDfjudY5i9o5bAAYMZDu5qF8M4g
GTW6jrK/hc1+pvQzOn9o9iCSqkeRUjeKhArq/4XD5PyR3EuCD5P9M8IPM/s3suXfVZANR6dg
JIq34moZBb31P4s/fwcDcY4rRFAZD2AsjwCQQ60im4OBZGWcSlZBF7mXTWTnZpNSF2lKRJCY
fvomLfQfex0DJ95G/97n0b1rAXJJGWR4QCjxAG9SB7k0MThvew4i22MIoaCHe4sRIRMjhjGM
+AIE8FwhJn3Ag+cIvos5bCxJJST72DpqHYxDqQqEvIgTAS9MSzONMXLpzJ2vvsKzA4CPJrNW
nK6x/rQyaQfOjuQpLre4YjB0DlrESmgkABQI1RSStHkQt2wo/OR+b8fXn5zDo7unFKdGc6aa
exK/Lu8iYtS+VOFBpd+WSq8r9WFm/751wUvwSQojtt9Dox3p/JGdbP/3i++nSWKIBUAqASCe
eAAz/skIHIwkzHgDzH4AxhiaAUAeHN1T4GDPQ0HEWtyqUfpvpd//pAISCWTK/5ViJVYHGKLy
fypRGYMJSmiLUqaWRu4lTQIymgQiqQLU73kOw3ob0E+qYN+u+SjbrsH6AwnUHgJoGmC5wAYN
uBi8jVCJB2ICpAgRCBBGU0GIaKYNyCj4IhdLyGgslDiYwtxrIxHBpWz/Nw57HfpBy6a56Xtw
9krvHfzxGQLAIwLAeK3NpzWxJK6M5SsmOrLR77oSzTIOSsnf9gvUgkP2m6gfDv2PD291/Mfw
WKbi/LVBPLx3Mai9L/Vy21AU0toMFY5VS2BEwbGmvuxIfdkqZC/17zIq+f0sCJjgekd0s3Iv
w/qTnwCAqQAByadYcDBbv1j1j9H+Q1pZAsiV5MPeLQUurvpoKVyA20/K/b8CAfN1RgiaIj5y
vYbDysBDyRz0JqmgL4GDlngaa8nOjSZJWLZRk+31dQdewmmTnVQFVqJvz0L0UhVgNIFs4gLR
G9TYcwo8V6vBecdimv8tqQqI2D0D4d4iVhvw4wkh4PIg9rCH3NMN3m42sLA4Bj3xGpoAlsIx
ahdsw7dNuyZvQGmr391r5+uXPjMAuD1ZtOJCrcunXRHLMdjnr3g01Yq+9GPoJPZfJ6cSSMzZ
pmIZOsZS8fhaGxKr7DF6qQgf3+1G93AMTo8Xo3c4DelNXHg0LIUZ9X+rCm24x1mRmNNAZZ8c
vtguAkIPzfm9CM+dIX4ptQQC6v9RBcPU//vZvi+OYvb6t7IqIJ9cP6b8ewhyYGHvB1e3begv
mYPrdcr/0gNg1hR9n9kNdLmEg3ESgi7mMRWA7OBI4gFxHBQEqiDTW5u90pi5DD2CFMHadzSI
BK7GqMU+nDr8Cprf0UYOBZ85yCJpkxrLBeRr1WC96TlwjQ8iiOThsDAJwqkChAqEELrzWRLo
S/6AmCYFKRlGTtb6sHM5BpPAFXCI3gHjkNennZOXI6bK+KaRn9K8ZwgADSvGG4Sf9sYsxqUm
A8XUrV6MtCWgSTwHNVLSxhPVCABL0X46BR/cbqfAuaNjMA13zuShoN0SbSPR+PjRWXxwvxsV
Q3awrlOHRc5CeEW60RhHVm94PavsBSSR6pc3zPb7GBr9kqpmVmjWIORxfU98/x62WgiDZ7Lf
XZQHN890GFqKKcO2stYuk+GMBsCsf6UEMuC4STyE2RZ+IW9GBWwkO7iNsr86UgUFQdqI8pgB
QDAFtmKbJjsFjJoTAEgWrqDsZ4hg7lZVAghNDNQGwqkSOK9Shen2lynjHZAQ6kOTgBQRxAcC
+NQCPMwgd7Nl+YAf15nGRmOIbHRhJd0Ey/D1MAx5VWEYsQySAv3PL9wZtWWuuWD2if7bQPAU
AJP9yStOldp/2hE7F10ZixTdbXJcGKhEdYwh0kjLlpGjZlv+KlpH4vHpg34ifVwktBqgq88V
kVX6yGsV4eGdTnzx7hmcu5gEx/xFMAvdAL/YHOr73UTmyMyJqIYosoHm/A6aAIbYvs+0AGYx
gGAmA4b9S9n+3z6jBnqXsBWAJy2Flb0YvtzllPlqfyd8/4oDMOYQMwJezOcQAVShiUaZ5v+Z
bWEtscpojFBCUQAHcXx1yAkA3mT8FG6Zi9GTq1kADFIl6NvzPLtlrIwmgswtKiwAvGka8FhF
XGDbQkicj7OBZzhAtJ8EYmcXCBzt4ONJVjG1AV8PG1Y34DrpwIF/FFaR62AQvlShG7REIck8
+oepuxfin557/G8HQH9/5YqOItGn/aGL0JeopGiMpjejzgm9bVHwydvESr6W1QtQNijE5++O
o/u8H7wbliO+azcCa06ioS8e71E7+OhBN86MZ8Eh/nXwc3SQUdYGnryOLedM8KVJFfBJbERQ
Zi+1gNNsC0igVuCX3EFVgko/4wHQa5ngMxs/nk4A9m5JsDOzQ67sFbJ4Vdi5f6pe+b8FAWsE
kUN5uUyFNYIYKZiZAJpj1dFD5b85QQ3FYWooJ7s7laobUwEC16gja4s6ug4txYjRdhKFNqBv
74uoJk0gjZWFZ4hgMGkGciKDdhu0iOVvRTzpAOE0EoZLheQSiuHlxoeUCKGEACBzt4C3uwnc
Sba2Fx6BR/Ih0gReVxiHPw+v1G1fjl/rdWQqwL95//+TKeCrRysmx3I/6U6iNyBLVdFEvbIw
aA26WsUI7lrPXqGrX8RBbL0Fsf8LGL9ajMQWE4Q36CC66STOXszFRw8HqQV0oW8oHtZxaxFX
54yx05UIpirAzPLeMWT8ZHQhopAMH3qOzB9hyR8jBUsTasgeriHbt5WAwOz5a2LLP09WATd+
Fixs/eBoZ4aGlFWk9M3s9mV4wL8EQPXMFHCuYGY/4GiKEvpJBp5xA5VRGk4gCOQgTUKl/aQm
uxEkn8a+lh3aGNZdiyHddejdswj1xAMqaBpI28JhJ4Vwep2MuIAdjYSWB9dT4MWIJWOImQii
5EQERV6QkzLo7WQOKS1fng18CARcAoGj7CDDAaAXNH86sNgCdx/dvPlv3xjyVAj6CT+99fDW
8FftafvojVJRMPNypWA+kab1CC19DTZFVNKprAeVH8bUjX68/+AsGkdIAm14C+nthrh7q4HN
/g/utWBoMBYekftR0CjFe/eb0dWVDd/gbHYSYPo8M/5FMPp/IdMGTlP208wfQw5hFDH/cPL7
g4ogCCPm71MCB9dYuHllwtzOFw4u29CYOY8leP+v5f8JCC4UKbMm0HiOCkbTZiaAtigltMfM
ACDfTxkJXprw0dVkLxCp2D6HNYMGT67FacsD5AssQy0Fv5yqQBYjCm2eEYV81pLYtVIFor0r
ECwWI5xUweQQAfzc3ckv8IIvcQCJoyl8aBQU0Wjo7WkDT3ddOMkPwzp8M074L572LzTC3Xtn
bzwDAPi7FDz31sRwWGfcyR+7SPPvCyBplK+ErKCFEKeshX+OPgLrdSApO4CRsXx89qgPzWd4
8KlfjcIOPu7fbMeDm/V4fKcJo6OJCMwxR2tfND551IkLZ6sREJtPIs8pRKQ3Iia7FiFZQzP9
nyaAgHTq+RF1xBOaKfAEAP9KahuFcOWn0+yfACePJJiZciFy3Ym6hHm4UKb291HvXwHgCrWJ
8XxVVgIeTlXBSCoHfWQGtYUpoTnwSQUIogogJXZPFUBEYlDB1nkzAKDsH6QqwAhCvfR5DmMM
URtIegIAZsuYlIig167lkFCA/YKELAB83ZzBdSFPgGsPCc8Kcg9r+Pvw4Cvngcc1gLP8CFyi
DioYPcA5fvvvzl2scP+3t4BftoHz7SEreotsP6/0nUvMn3iAlxLKQ16hgBmgoCkAnUNxEJbt
RNOYDF+/P4aOkWDIyQ8o65bi3vUmPLhRg7vXKnBmOBm55d64OlGFu5M1KMhPAc+/Ar4k8+bX
tKGqIR/5lTXIrT9F7t8Q+QI9EIV0sDaxkDV+auApq2SPheVS/3fhpcHMkgd/7x3oz9TEeSrr
TAv4ZRv4JRgYiZjZB3CBXsdcHTxEAOiNnWkBXVFU2cgHKA5WQlUgCVxicgUJAMFUARiiN9MC
1mHIYBP6972InidaQClLBJXZNuC3hjlKjlzCd16GwNUMAcFC1hMI4XtBwneHp9AJfCGNghIX
xIZLER8tg9TdHG6yo3COOqAwCl+uEObv/+H6jeZwAoD6M7MZ5IuPL6w/3xf5RV7AIlSHKyl6
Yjgo8l2K9GR3jJzNx5kLcQrv9jfh270m5w+ffzEwcqkAsqqt042D4fjw/ijev9uKW2cTcH4k
Fd2dmcQHWnF+jFh/cBkJOvUIz6zFqcE+3L7eicsXK1He0oOIglFI42jWl5VCFBQDL3k23ITk
/0uLZuRfr3RY2QTD1soGaf4v4DwZPoy4w7h/jNZ/Jl+d1f6ZxZhCMwKQMqsE3mmkj0kEOpOv
gYE0tRkOQCSwLZYZB1VQEqyJTBsKKI15wRuYIKug5/ByjJAYxEwBDAeopBZQvV2LPQUl/Yk3
4EdVQEYVg799ATzsdsGfMjxQ7gV/nj0EAifIZFykRAuQEOONjHwJstJ9WELoJDkIx+g1sApb
Nx1f54mHj67cx/fPwKaQp9vB8IfP196aKPyqOP4VZPqoKioD1VDpo4HgkBUoJ6v34uVCRWDl
bgSUHLj8+MHEuwPjGZCVnlQMn8/GJw/7cXuyAlfHsjAxGIWLI5n46H4Lzp5lNnQ2kq/fgPj0
YtyYbKHX9uDujSbk1tRCltSFzPJyFFalID4+AOLgZPD9osn7T4WbIO+JAxgKEztdJNNkwRDA
KZKa2X0A9DFTARgXcChLk70CiAEBUwHGmH2Axao4X0ZeQL4mRrI10BvFbGZVQouMMl+ugXQf
bcS5aEC6Vx0iYvbMtQGt+17A4OHXniiB89G8cy5Zw2pPJgEOSwJjNqkgZp0KBKQb8KxWItzX
CoFxbogN4iM+iYfCmiA0VoQhP1mOjHQZ4kgsYgihwFMXruHvKJyTVkKcf/zjsWuDhk+uxOI8
CxtCmQsVtMY7k7m1YTv+VCRURx5PXVEVrgTnNCVEFhvi0Y1G5NR4Ib2aR+RuEKfHChBQYYQL
k+X4mAjgyJkcnDtbjGsDYZgaz8Z7RAj7BurZDZ3cgFrklFewX3tMleL2VCOyygkYwe2oa6nB
vTvtuDnRjbNjjWjvykN8bAx4oky4eGXB2dUPoaGeKM93wdnSdWzpv8Fc/tVOGd+hTKBQwfV6
WnUzl4SfK6JxLpjZAKKO/kRVdFPP7wgipS9SE+VyZeQI1JEs0ESqSAPJ9moI2qaGQBJ6EijA
1ZTxQ2QLD+lvQPXu59iLRvLo+wwHSGU3jCqz5pDfGhV47noBcokT0opyUN4cgdqGeJSWhSI5
yQtRAa4IFZEYxLNlzx3wcbUBT6gPx9B9066pG5Bez71d1Gz57GwNf9oGKotb1jXni78r8ddA
EV9VkUNVwCRBE4L81Rg5H4xTwyno6M+YfvfusOLW+TwklNrj4tVGagFdaOqLwOnTubg8EEnj
XyYe3m5GR18NO997hjSiqK6OJoU2vH+vDVcuNCKpoJZk33aEpNZgeLSRlMRevHeL4RG1qCrL
Ym8i4eSVS+6aHM1NKdRaCnCxPwbjDc64XPM6brW9gqnWg7jRth932xezm0OZFnCTSj/jFp6l
9jCUoY7BJDKBaPbvjKMpgJzAFhoD64KVUUQr1ZZsburn4es4KCPRp2vnfAyQCnjq8KtoIwLY
yQBgOxlHFHzmZJQMqhLSLXPAM1wBqcNhSAUOCEmMRGw0jYKBPIT5ukEusIDI2RASJ9IBXKxY
VZC56tiFrwPb4F0KXtpejJ+vuIJnZUfQL9vAjfd/v7O3t/iPRb4LUCHkKDIEWhBHqrMHKAW1
bMDIuRR8+PAsPn//AmV7PgobhLg2WYmbV8qQWSsmPyALp/qTcW4oC49uN6Gjl8ScoHp2xKvr
bCNewKx23CDQZJaQMBTNGESp6OhIxnt3GnH/eg36q30hkwbSG5YJZ89MODlLUVISickrNfjg
QS/uXSjHeNkmXKpei6lOF0x1ueBW+3rcalanCqBOI6A6rlRr0ySgjLMFNAmQFHwul9TADC2c
Ikewl1TAliAVFIVqIo6kYOmJRQjbtQi5++ejxWAVRoy3sRtE+6kNdB9+CYU2z6HcYBkyLPeg
3HoP+Qe6KEj1QnIQETvbrZD7CsgOdkEYl1H/nCH3soCATyqghx0CyRQKIsNI6mwJnquOghd5
HLJss8/6xnKOPxPl/58B8B//gfVXL51+XBS1V1EgU1KkemkhMkoNTpRVxrmaiK6yoPLdQv29
G+2DkajokOD+rTZcu1SIpEouugfi0NkTgstDaaQMNtHH1XATFcM3Kh0DVBU+oOz/6OEA7l1p
QkZhIfhhzTQClqCvN4eA0Yirl+qQHBEAV248PP1q4eqZBSsnT8TneWHqXDE+fNCJqdEknM59
GxM1W/CABKjHt5pxYywR5+rtMdlqjBtdRpggcWq8gkp5wUKM5i5AX86rqEw5iPKEZaiL0kZr
KIfVAVKlr6EwzRH1ZdFoKg1FZ0MEBv3t0H9gKYaICHaEOqCxQIDWchkqarxRUxKI3PQAtNRF
IYN3AJ4H30QoScGRpP6Fi/gI9PKgbCfxh2sHb8p6JvNFZAxJuLZEdI9OS9OM0dKf+eHNy/2v
PGPbwsGZueEDVK5cuWLTVB6MVOGc6VShpiJVTFp5Mhkg1eTxV2mhuH0PWk+ZIb/DGeMXimnW
H8XkSBQiy01R2xWKi71BuNgdjNvkFp450wA3eQEi4/MwebWKspxI4LvDmLrcjYQ8BgD17Hbv
kdN19HPacOFcDYLD0tkjX3g+pXAXl8DalY+MGjFxhxYCQSEGC4+RzKuKG32Hcfd6A27fGsTN
611470YHGVW9uHa5Dtcu5OLSWDpaqV10FRxEcyMXLfVZqM6zQ3nMQrSQD5AfQADwfxON9QG4
TIC8dLGcuEgrRgv80HF0GfqN12CkOYEqXCMuDmfjTHc0qpM9UBDjjmICglxvK6RH1iEqhIdU
uTOChWQIebpDThqAL9eGjCsHSLkMCEgW9rKCk/iwwifN9OeJGyPn8Se88sxdGvb09Ioff3x3
3cVTVY9zfA8gga+uSOVpkUOnCscWZrOHEjwaleHdporUNkYCpjedCOHlwQhEZpqhpjUCY11J
qMrzwam2CIwO1cBFkIuEtFJcv1yG2xPFVMYH8PBmK7LLSmn2J+k3qhqjBJRP323HlbMFiA2L
gDuNf8wY6EQagIMbF3WtIXj8sA/nB1Jwpmgl7rWq4OawLSYvV2Kyh4fJwQCqOB1UndpxgSaR
u1PVBJh+DFe7k328BedPBeHSeA1ONXijMmouWhk30Ic8AMkryKeR7N5kFe5cKcG1riCclRlQ
BViGCsv5aCrj0yRTgSs01YxV8JBlux4lUTYo9reEx86lEDkcR2CwJ4L8+QgRiqgCcGnkowrg
agWxE6mBZAn7MdcRulgouBIjRW6t7w8TN1sPcDjKSs/kMfNPzwc41ZC9Pz3w2K0wVzXEcUku
DVWHQz0HZnXMiR8zp3pFda5B3+lATF0rxeVzJSgrdkdTWyi6m+MRHydCS2comUk5cBLmIrOi
DvfJPzg3lEDZ2ow7NxqQVdpI+kAXxLENZCA149NH7TjbXwC5PJF6fxZ44kI4esTC2sEYNZXR
+PTxGK6NRuB86QLcbH4eN4bluHc2GGeq38bpVke8e7OXfkc5Riq2Y2LAm4Jaid4ya9TVeuD8
eCGmLpXgVI0QWT7MGcQqKLbmQH7gNeQTa793pQL3LmXhtGQnhk6swQBNAj375qPR+wTa2uJw
6Uwa2tJtEMU3REWEA4pProP7tnngO24nD8ARQTIvdpt4MN+TtYOZo2V8nC0gZJxBqgJieyMk
Jvtj4to5yv4/vfJMXh38T9Lw/OIiYWqAy3ykO6sr/ALmwqJAE6Z1zGVgTy/2VEZs9zpk9x1B
84g78josUdzJQ11DGNIThejrzkdjdQY8vPNR1dJGOkELGlriFVcut01PXmlFbFYVeH4tiCto
xtVJmg5IRu7uLoGXKBpO3DRSAWcA4OBlgPqOALKb21iNYbx0Bbvb50LNO7jZvhWD7W9haCQQ
795qwpUzCajNWIVzzTa4PhaLyoIdaCqXEgAqce1cPgHAB7n+y1AVq4kMew6ij7yGxjwpHlDF
eHCZsly6HwNH3mZ9gLad81AvOILutlhcHE0j8cgGmX7mSJWchHTDXIi3LYHIzRRhMndEC13Y
8u/z5EgZb2dzdvSTu9uxZw7J3M1+bq5PPnfn4fnNz/TtZp6ikv7ADUMXO64ECjchXl9FESid
A4csDZjUMdu9ZwAg+MUZf8JWNQhq1iCzm7hBk5iyW4Lxc2Uor82ELCgV42N9uDZWi4aKGNy4
PkjZ2IX41Aq4ikqQnE/ZSVLy3ckStHdmQSRLovmfOICkmCaBeBKRTNDYHaa4daNjeup0AC6U
qPxiQ4gybratx+RwKB6RITUyHIz6rDcwWMTsHNJHVfoujHVHEh8ow4WhHGpLkShN2Ig68gFC
jqlCrvMGOmtluH+jHldHkjDifZwmgJfRRxpAxU4tlIkO4mxXPJHaVDQmuyI3yhphTnvYC0r8
dy6BxNUCQRIhuzcwgBg/sylUQACQOBqzbcCb66CQEQfITY9GS0Px/mc28/8zF7BkuUBfe5lB
abrrtMRKWRHhTOMSuWnGxAGYc3+enuwpfHLptyd7xh9Zpc1rwMvYhLgME5y7UIGW9mwEhMtw
8VyH4talZtRVRt27fq1l8r0bLUhJzlY48XIRmd6MKxOdNP8Xo7OdZGNRLKl/UXByT4a9WxA8
A0xwajQVn7/XjYs09p0vZvR/ZivYzHawm61rceN0BN4lgel6nwzn8xahJ1MN1VGvozXRFFcG
kzDcEYb6niQM9CWgLPkNFHkokfyrDJnZagy1RuEeTRKn8rzRafAW+kkLYADQt3Mhqvz1cZa0
j8v9qeiqCkNJojsCdRcjaZMSwvcshpQxfHyFLAiY/u/HnDJGLqA3jX0yAgLfw04hcXeYbmtu
Ov3RDz+8+T+/b/K/tw2wAHjvs+9Nz51pQaDrS9PhBACfaA2YVirDjNnu3fifQcBvnTkfwJh8
+KMJSrAIWonGpki0theiqDKe2S2kuDheh+yC5O4Ht9sq793sQXJGhsKVn4Lc/Arcud6CW8QR
SqtKwSUZ2NouALZ2IhibuSj4wWZo6Av98MH12t6rXXaYrH4afGX2+Wb7Njy6UoBHRCzPVFuQ
WaSJ61QdLtZuQU+tMy4MhFNbOI70XDcMtqahPOwwit2V4L9bDb5U8s/0Z9A0UYbzJOcOHHiV
gj8DgDbjRWhIdCABKhPjg+k425uGqhQuoo4uRNw6JfjuXA5fT1cEyCj4PkJS/kTw4/MgcGbO
GNSlCmCpEDsYISnMHxkJCQd+mVzPOgBYhH7744/rb9+8dq4qyx0xrhyFPGA+zElXNy9TgU2l
CpxbZo52FT5pB8zxLxZUHQxLlKEnXoyoGCs0dabiwoUqfPnBMBqoHYiCPHH2UiVuTQ4iMS2J
jJ8k5ORVKu5cmwFAVmkW7Fz8SVyJQlJ6DFw9HKeDg05gsC/9+uPbpxKnBlxxo/4/7/690rhN
8fByreLOFWoB5UdIElbHVRKBBrO0iYS6Y2wkBqVxK1FOwRxsi0ZuyDrkOSkhaNccRIRZYWy8
CJMTRTgXaUv9/02aAJagj1zAJodFqM93w9BQJkZIgRysCUFZohv8T7yAIJKExcffhFxoDz8p
j8gfVQFPT0j5zhCRDiBzt4Rc5KiQUBvITY8ZmJw8v2JGbv+V3GDqKUm58envV3Y0pw1n+K9V
BJIm4JylBjty3tyqVGFdogoP0t9FFAS35ifHvpFRwxy3fjJkPs3/5kgqTMLQWCc+fa8TnY05
8A3xweCZMlbRyylggh2J/AKav2+002hYjYb6eLi7iZEcG4CB3mwEBtggyGcnbpDe8MEtyvDy
Y8QB5pMM/DbutC8iD2ABzjVa4N5VmjJojBut0MNk7Rx208hw9tu43BdOFSAMZbGvoSLTEQNt
4SiIfRuJVioIPbgMxZliXL9SixuXac6X7cGpvS9jYD9xAEYSJlOos9iXBKws9BW5I8P/BEqj
SPvXWwXRFi0426yEzNOSFX9iw0Rk/XohQu6GED9P+PLd4O1lh0hfV0WSj9Nh5r1k7p+s9Gt6
PNUF7ty/79pcm4Zw5xcU4hQVWDXP3LDBoUQdAjJhmKnAmgwYD7Jhbehjwwol6IUuIjGHT0JO
MVIKa4nkVU+fP1OFkoKss9cuNfd88cEgOptSFV58D4SERdU8vtt5+/17jchPD5l2dBAhNzcS
be0x4HsbQBpijqlJCvClKkVb2jsYqNqJW0N+1PtXKaYaV+FMq3/Xg7sdFx+NRxI/WKqYqiHv
P28eOqpdceF0AU6VOKAgaikqsyjDm6OR43MIMfs4iDi5Er0NIaQfNONWaxBO221En+VqtDtt
QtehJWh13EHELRwXydiqibCA3HQFctNckOxxErJ3nkeA116kpAlRmJ2Aqqog5BSLEBHDQ4AP
synUAjwHE7TV51N7GdP95fv5q3k8UQY5f/nLX1Z3dbV0J/gdVgR4Kymci5TZPYLM5d9iJvsp
6G7lJBQxp4DUKsM0UxV6VAHcg5zB9S2AQJaJ2NQsRXlVDU6PNF0ixW/4dx+fxfnhRkVeQRSV
2KrWB7e7HjAtoKfOfzoxRYzujni0N/jDhncEkhhzTE624uGlKtTlHiQJ2kvx3kQhbrasUNzr
3oy7Y3EDHz7sunq9zxejOUsUzIbQjtSN6G0MJT0gEh0ZFsiNPUxSrwTDnQlIsTsI+VplBLvt
xJnhfLxLtvVEugg91vtwrsyftIgMDLocRIU3jYD9cbgynIEuwUlE7XsJOdEmSBfpIthsLypS
PFFWHkC8Jg75Gb4IDbSBSGBAGoA+vKx1FGHBUsXQmdNVzKlrz5zq93/KB27fvSsd6MghUWj5
NDeBA5OmGVXQoXGGADIcwJI+N6ngwJDIolG4JqwjN0McHs/u8PHwqYY4oBwZBVVoai7CSF85
hobr0UDy6r27jfjgYQ+uXq7A1XM5GKWZm1H82klPkAQ6ILPSE9fIbLo6FI+eUhNcnUjEu5dz
cbV2Fa407CDJuQCPH3ThbJMc48Uv4WqlEpoqDuMSeQ9X+iLRmPkOcuN2oKHAE+Otgchw3Aen
XfMQkW6GKRKAHkyV4nyYIZrcDuHySDEe3mtHaaAj8iigY70JpB1EINX+GMQGy1FAVaQ1R4wI
iTnCgu0QJXODL6MBCBzJ+SP3jxxAob0hgr1Mp8eH2/Hg3XdNfpXZ/88ewe9//5e3r09d7spP
ksNe9sK0eZUKLPM04ERcgDkBnNf85Cwgyj6DHGXoUPHQDaQq4O0MLwIAc+yrKKQV7r61CkFQ
qSI4pgLhicVkpWYiKz1OUVRWqGisT0dhZSHa+ooxNJCK8qJAiCMskVZrh+tnE6c/pFJ9+3TO
uXevVWY8HPdDZ/nrGB7k4v61GsVtWuN1+rheq85uBx9qNyVAFeNypxBVyS8hO+F5FBIQWhsE
KA6yQRhleFV1AO5MNeDqmVy0BhujizL65mQDycqRqPU8jq50EpD6yU+oJ7s32BJhwmOoKpag
Id8P/h7G4Lubk9XrjgChB2QiFwKAJcSOJgqJo/l0bWk27t69VvSnP2HZ00qq9Gt9PP3jJx9/
tryhMbfdP22/wrRQadq8QhV2JMQwZ/8zOgBzOqgzcxoIqXS6uUrQCZoLO745uN4FEEXWsVf9
MBd9+kT3QRjaxR4QKQ7rhsivEu6SHEjlKfD0zoCXJBhSnwB4S0Jg6HYQrlHP43TZLsUjcv6u
Xaj/gMyZc+MjIWhrNsf5syl4cLud3Ys4Tu7geIEShgs20twehsvjBKQKK1QkLEZeBrl+tSao
6JSjjub59uIQ8iXqiHzWk/+Qg4s05o0NVWJgpAJjPTGk+nHRXk2yM9naZ/uS0ZLriOQAWxQl
iBAqtILIzhAyrhMEYh7EQi5VAUYBNIbAVl+RFh1M9nZb8bmPflj4qy39/w0fYHevfvT5/ZCa
9izYRr82bUHl3pTKvg2zmBs71c0c/sy0AuMyJRwPU4O5/B0ydUJI8i1jr/UXUhWQRDVCGt3M
XiLuHdUFUVjnzAGQfvVwFxXA3iWBPQjCzNoXJpb7EOKthqroOWhLfQUX6w/g3ogYow3MWUUy
3JkowaPbzeQyNmO80RV9mbtxul6KqxTUyQsFGGmUozDoNVTG7EdDjiNyIgyQHb4LLUU83BpL
wuTpbFw/n4WbE+UkVtWhqy8brbXh6K6NwWhnGIareGhNskc4dzN8Dr8C+cm1cLc4Age7k/D2
tIKAjB+Bownc7fRgb3Xsr7EBoun6uvLS9vaq53/ZQn8LDw7Tx376/qfXx85dagnPEEEWs0Th
Si3AiMq+GS3GJGIuCWfOBTAnUmgUrQL9gDcIAOlk+jTAXZYFR7cEeAYVsWf/MxWBAQSzmEvB
mMWVFsLBOQKuXplwdA2Crf1qGh3noSxUFf3JSrhWzVGcy10wPZLxHIaLduNiKxc3+zxwa8AX
XW0StBRY4UJvOGtPX+31Q3+xHbLlRN7CX0OU8zJ471oIv60aiLchrT9gJYYdSCoWG+KMgNTG
wF0Y8N2HcvEmtIv2olBkgjST1xG9ZyGkW7QRsoFk8MPzYWu1hhTKo/BwYIKuA4GNzs9CFyNq
CUbNGSkRB0ZGupawSfNbu7v401LGHG5U3ZraJk/dO22Wr/wzwwUsKlTYW8EwHMC8hipDsSqO
RyoxJ2KA5x3NHvTgFVwGd58sePoXQRhTTjZwBXsCqCCyggUI14e59QsDkjjY2IfA0ooLV/vl
SAzVRm2UMk5na7LbvRkhaIqAdqNRHReK5qMzaR56kp9HQ/ISVCW+jJqcteT7r0NN6grk+7+I
dIkWkqQaEBuqQbhOFbHrOMjdoUqj3lz0vTMf/btfxCla1btVUb9bE+V7NZCwVQvR2xYgYRMH
CeuVELeeA79tc+Bm+jpcbPfC1vYYPG104WFzEmISfWLjQlBXUxD+z+/Vb+7x1Mi4cCN/cU1P
wsWAyr0wy1VWmJMyyEjEZiTTWmdqwzxJG4dDSRDye4G0AD+aBGppVbLn/4mZI+EjqyGMqGWf
PQPz4SEpmNkB7BwGa/tA2DlHwdzcFc7mbyCSq4HKUOa4d1V2W/hdkn/ZxRwH18BcB6CE8SIl
jKbTylBCVyIHLTEclIdrUPlXQWHoHCQ4aUFOQQ1cp4bcbcpoJ6evn6oBs/u3b/cCdnXtXIBK
5nwgWnXb5yFnCwepW5WQTM9B256D1Hg39fhj4DH3DrDRU0i49pB5e/w1Pzfhy57hoYre3t6X
mCr5m7+d/NO+9snHHxYUtEd8bBn74h9sMubAtJQ0ABJhzMkvMM5VwbEY8gVkc2DuYsv2dg9y
95hLvsWhHU8OgJgp/4IwsoV9Ctm7f3B9s+EiSIG1bRAszbngWu1EoJM2MiSqqIlUwWCeNnt5
OHPlL7ML+Om608zBlRIOzuWpUaVQx0A8B81+yqig1pHrPRdB5OwFrFFnt3ansRs8NXFqz3Mz
pg+t/t0L0UMgaN01FxXvaLDHxD29DiBovSZkxrsQRMyfR73exvzIz14OxtORMSGoqCxq7Gqu
fuvjH35YpDSbHgzKf/zxxyVF7VkrJMn61x1KFkMnXelnkyriAOUc6FE26mYq4ViwKsylhwkA
GfCQ5kPgX0MAaCcgzNz1g11hzRCENj+5GCRv5jg4bhosLdzBs3odiZ6aSBNqItt/LuqT52OI
bOnTRRqsKcSofhOlHFzKU8LZbCV202dnnBpawzmoCFJGtkwbgfu1IFmlCX/2ZlFK7FU+jNff
sYvK/67ncGrXTPDLt2sgY6syKgkAzPlAzGmh4SQY+W57AaGOJ+FoexImZocVQicTxIfKUVFV
VD8+3v/ib77s/ytS+PSDqvr8QnnB7j8Z5yv/zaxAVWGRrgnDfA6OEAc4HjgHNgQArk8QcYBK
yvRyYvvU+5ljYJgDoMOaKPgV4AfVgksVwl2Qw7YCR7KCrS2cIHFYiCgxBcZHi7JZC13k43cl
qaMucR6awjXYO4/3UWtgtnjVRKgQ4VNHppSWRJ3d9x9KpZ+/WRP8VRoIIw+/YJsaG3xmMaW+
+8BzaD04j73yhzkQirkINGOLKlKp7IdTuwjdNh8+Jnsgc7ZQeDoYUmXS/TlM5nmntqKocnhi
+PlfKqZKs+3BtALmH//xnTuLWvszH/CKVsMwXgUGlIEm+So4EUcVIFQF5n5r4ewpJD2AqQJ5
7LGvgkgigdE14IeXgedbDA9RAdsCmOUmyIK1QwRszRwgcVkEmb82UiUaKA/koCdOGSN5mhhI
V0dLvBaawzTRFqmBsmBaBJDiAE2UyjgsANK9tZFiqw7fjZqQr1anwBJI3tFkL/du2TmXfP/n
UKczF1m6aijaosaCo3y7NpV9TUQR6fMhziAz3wOpk6GCa3tU4Wlz4iex1KU5IED6+qNHjzRm
Y9b/q+1jKg8f380QFRw8q5Om9PuTUSowidNQ6DK3V4sgd9B3MQysTsBNHEqEj/x+aQkRwir2
AAhPWQV77x8PSRGb+TMAyIGDWzwsLCwhtH0esTwNpIm1kEPZXR/FwXCmOkbJlRylXj/MtIMs
4gaJSugjzsGcA1zno4wcoTqyvbQRfVQDfms12Uu6mPLPHP5Y8c7MQZDMhZ/VO6iyEB9o2jGH
XelULSI3qsKXRkU/vWXEP45MC+1O/iz0dVYkxQZ8URwfsXK2lvz/Fz6gxJJCcdzmFz1T3r5l
HKOlOBKsNM3cVu0ocyMlXw6OOq+FjYM3KX5FLBGcOfqlAF5+zAlgFHxBNht85opgN342LKyk
MDHVgavFEvg7aNAop42C8HmojlJjAz2UpISRZObkDxX2DGDm9rXMIZDVBLgMqRoS3CiL96nB
c/8CeG/URuwGZfYAaObyLobpDxD7r9+hPXPl77aZw6HTGMZPpC9wlQrcT7yCTOvd8LY9Ab7Y
E029Z/Hex1+2/PjjF4tZefw3JPD8r1WCe/fuvdwzWviuIG8jkT+laYMIDRwPVWbvrXfCbz6M
HXRg7xoHnqyc7fU8mvs9pMVs9jNgcCMQOHkkwsElGmaW3jQFmEBq8xyCXah8i9WQLp+D0tg5
bJYzqyuOwy7m2JeGGFUUR2jR2EevE6sjwF4L4m1U+qn3M8e6hFEFYE75YM77Ycp/NxFA5jxg
pucz5wAx8z4z68u3UMsg109qvE8hcjb+q6/I+mxj3+h39x9/1I4nTH/2Z/5/RcBMK/ga8+49
vpOZ0ib/WT/yOZwIUVbohJEiSD16PxGzg+abqAr4sff6c+alstnOjn5EDNkWQKCwc4qAuZmY
sp8HM/N9kNjQCOdMBE2khixvdZSG0AhHgGqMUkVzrDJ74BOzauOo94cR6yfZOJanBT8DTQip
98vWUCXYoMIe/JxDzL6I+nzxdjW23DPBL6Oen0flPnS9CkSbF0NisgaBbsd+TgwUor4yDxfO
9h35/vvvPT788MEbv9RBZv/jX0wFX3yBOR2jLWmy7KN/NohQVxwJUVKwt1OjmfwY91VYOTvB
yiYAlja+sCexx4WAwBwD50HLyT2BBYeVjR+MCQDmFgcgtZ0Lma0GAhy1SAsgYcdfGSVELBuo
FTRHEBjClFBNiwFGYQCpdl5M76bAb2CIHy0CQDgBIH4Tc/I3cw6QGntzKCboaZvV6Zk5I1AF
0q3qEJpsUQR6mP2cGeeDhtqC3vfffy/uq6++eutp1s/+zP8fCkSffnp/Vdfpkm/sklbjYJCS
grmx8qEAZZzwfA3mthYwMxWyQba09KFyH8MeAcNkvgWVfWu7QJKAZTA09oCu/jaIrLURQBwg
3FUT0R6a7O3p8gNVUR1JwhAFvoQCX0CgyJWrIsFTHX6OFPR3mNKvCd+1M4c/RW9UphFPGQVb
57DHvzJCUDyV/JhNyuzuXsYb8NJ7RREl0kd+ThLauqsH3n+/9bWnwJ79gf8/4AJP1nO3Ht1L
zmqKhnHky0z2K9g7arq9iJPmOgQAERxcY2DrGAYrcvwsrHxgaupFS0CLTxKwGPqGbjh46C0I
LTUp+zVZAMRwZwShdCkRwiANCjyHzfocGc3tAk0E02tkJzUh3jhz7h9znk8cBT+IOEAGAaCI
yF40VQOGCDKAiFynrJBtVlVwjd5U5KbKUVWQcqqrtyXg3uPfrfxVb+J4FlrBZ59Bu3+oPz4s
x/XnI35zFAfl6gqGBxx33ARLOxfKcjnbAiwJAEzgzcyELCCY7GcqhJEJD3oG24kDzIHcjsq6
/QwIQl00Ee9FpdtXhVqCOrsS6PNQ+l4glX4RybbuqzXZGz4xR7kwJ4DKNpIPcGAO4p8c9RZB
hpB8s5pCfOxVRDruRm1ZFCYmLg/d/eR3b8/+Ee9/4XHmzMzegR+++GFH33DrtLFkHfZLNBQH
pVrYa7YcukZ6bBWwtJazATc1mwGAlW0Azf7eBAhPGJhZwtRiL3GAefAlAMjtKLttNeFjQ4F2
UkekuxpCnDURQoDwc6CSf1wTLus04UjBD6CezhzqKFtNZHCNBkI2qcNnBwMAZYSs4UC0bv50
sONBxAcZnTndVlH27v1rYz8BK55m/ewP/v9SK/jqj398iUZDfUPB+thDghcU+wVzsdtlLg4a
bYehuSmMTB3ZbGeCzyxDUwti/+7E/vnQMzwKk4PLILXSgq/9TPADnYiwuf0DCMwzs+T0fb7B
fLhtmQshAUB8kOTbrdrwIR7A3BU8gcp9Ao14/psITAZbFJUJEjQ319xsz/Nfw2zY/OLbb9f/
ksPM/sf/8qO5P++gf7ITdtotVOxxfx6HdRZD78haGFnYU+DFMDKzIpPFlZYbCww9E13sO7IV
hidWkg4w9+8A8KdMDyQ+EEyZH0Yln6kAYQQI+QlNeFKGizdow48BwJY5CKF+Lzi4AIJN2sQH
VBTydZo/R7npo7467tbYSJ3he1/MBP2fCezsf/yvtoIzqkxJ/fLLb46dGT417Ra4D3u85uPw
oQXQ2/cW9Mx1KejObOBNzXgsEIzNbaFvZIWdhzbDwHQbvO3m/70FMMvnCRAYYsg8e1Pf5zG3
clmpAe6T3i8m8cd3jZpCsllTIdygNS0weAu+DkYfxIdKje7d61n/S0fz6abX2R+t/3+ngjmf
f/q5vK4t9y8nuCumd1u+qNij8xoO677DBtzIzAbGBAQDM33omZ7AoWMHcFB/F05YvgGxHbWA
J8F/umRP+ICI+r7zvvlw2jEPbhR497Va4K3RgvsaDYV0y3xIDVYgQmCHzs76P09eu3aO/g61
pxxl9mf8/33DSOP0eFt8dI4H9jguwebjLysOnmC4gD4BwB5G5lbQNzsKXdND0DHQx1H9Azh8
fBnE1prsBMAE3vfJklPmi/W12ODb71sAayr9DsxtXleqKZxWqkx76LyMcJHxty0tZV9cvnrl
zoN3PzL+y1/+sqa/v19j9mf7vwUEM/P0l19+Zjw20fyYH3XwhyNmq3Hg+FYq86bUArgwMLaH
vqkBVQFd+vo+vLN7JXR2LITQgnq4nTZkpO1LbeljWy14ms+Dve4LsNq7ACYUfGsq/Y5rtBTC
nS8TOdyExDDzT0tzAsxvffD16r/8/i+rZn8E/u0AmFHTSFN/7u7dC691D2fIcrN9vjEx26s4
ordPYWShh0PH9+P4SSPq/3Y4aWCOd/asxv7dS2BrsgRci+cgNJ0DF4sX4Gi1BDZ6i2D3zhx4
MJlPWW+ySm1aZHkQuQkhn3X3Nt46darB7L9pRbM/85+htqB6Y7KnsKwyE8bW+tNHDXfDwMSc
BcHeI5tBoMDO3W/hxNYFcDZdBC9jGu8Oa1A1mEuZvwRuBgvhtkddYf6Gys/2O15CmMgCDY3l
n45fnjR58NkfXnhyAjfnyUw/+wP/jJHCJ+3gS+7ExOmvA4KFisPHt2H/sXdwUG8XDupux/YD
K7HtnaUwJqfOy2IeXK1ehMRuHgRGc6nUa8JklYri2LoFsNDdgYAQ4ZdXrly4/MHHH9vM/nf4
V/J4On5NTQ0UdDblKOJDRD97cPVx8uRG7N+/Gtv2rsL2HWtxcNMiGBx9ARbHFsHqxHMwPTAX
JlvmTNsbbIObi9XvKoqLx85OTnowGf8k02e/cfOrEIaoNDPrq6++Lrt6qRUDnTF/nbpUoGjK
lCDe3xlyX2eIRaQI2h2Avv5qmBx6Gea7lsPq+JuKQB99NDdV/H7i7l3+7H8nf+WP3/3uW8uh
8yXvXxwOw52LWTg7nIkLZ4twYzwNV/rkaK5zQ1aOLfwirBAs4ymiorync1PDPqmtrXB58iM4
vxw1Z//jV6IJfPrpp1vuvfsu9/Ovvjf/8PHkmWtnK8+Mtkc9Pk0AmBjPUtwcDsZkpwQdJR4o
KpIiM9UH8Qme00XpgWisLXqffs6e2V/uf8UA+Oarb05MTF140D/aht7RcZy59jC3vTbtWndJ
CLpqQqdHmgIwXOuNsnQvZMSIUZgpURTXx6CtKf+9qxMXc+nneMz+zP8VE0Dm+erVpnjmLiTu
3oemi0qyUFLXhuRwXyQnxSE5ORSpsQJkJgjQ0lCE0wPN0/39PRg7f/7D89evG8/+4P/6R0HO
nz+7vXf8Ru2V8kwzRaF47bSP2AB8vj4F3w+xCXzIo+1RXpWLS1M3cen88HRtqVyRVhb68dWb
N21n//6830gVmLh5P6ejqQy+xkt/dt2pgkD79YgVrkWAxQo4W69DRLwQNQVx6Cnznp44k4jm
4ZKB2f/u/YaqwI2Hd3d6B4kv7t2/Dnb7tBVZ/Nfgbb8EdkfmwfmINq0XFInirRhqDXzv8b1T
wj/+8JPO7DdzfjsPtoQf1ttdcMLkALhWL0yHOKtAaDUH/KPPI1vvdYi2zZtOCbXC3XsTE/9M
JGf/4zcwDaTWnxPGJiV84ea4c9rB9AWFq8WL4Fuuh3DbCwhbN08h3r0MAf7cD6/funUMODP7
PfzfGgeoauksaWkoQF6c08980SEc01sJC723YLxtESz2zJkWO65HTqHfDeeIg5qzP/t/gwAo
ajqVXdORoSjPdf45O5EHgZsJ7Ha9DLcTGyCy3zvt7WONvpHO25/+/tPnZz8AfoMA6D/dmXNp
LFNxqsz651SZAVzt9GG9+2Xw9jwPZ703p8MDPHHz5m3mFuuz/6LM3yIArt+eLLx3pRKXG63/
2hC4HN4OeyC3XQ7pSWUc2zT/b6Hh/oqH7z68S4GfN/tn/98gAD7+9Mvwy5P9P4+0+qDE52W4
WO6E+55l057rlaZPbl6KsNQCPHjvw7GPPvpoxZMKoPxPo6Ty7AfFr/jx9ddfzxu/cjFh8HTZ
RIz1pm89ncQIND0KqfGbsD254YOQpNKms9fuWo9fOjc4duHKlqfj4z8HffaD4Ff8+Pybb9Z0
jk2YJkX63iipbVdUF6feqylN6ElNjd62jVek1lBZtKL3VOfIpetXcn7/yfW3n16wCXy34A/f
/nkvBf+F2Q+CX+Hj6X699z/8MK9leHIiLjLgk+sT43/78ae/Hf5lv2deVz14Y87Nm+Mp790f
HXoS7DkfPP4k+d7Dqb9dvz1eeOvWrSVP74A++9/ZX9njxt27zffffz8nM8Dt/KPbk/grcOAJ
T/i78HPl1kdvXrx6tmfySnPpJ+9ePTR1dzJ6amoMI+OVuHBzEBM3bsnZ/2f2C0XP/uNpZn/7
7bfrmdM3vvz8c69vvvnmDy11hbhwdqCfvs9cov2fLtf6+9XGX93W+fbrD3HjwXVcudL42e2b
w+2Xb97puXx19lvEv7oJ4NHjx9mP3nvPm/n4s8++kLTUl34tj0qIPBjR8dzMa/4RzKf/z4/f
fbfh3fffr7nz8FHjl19+7TD7381fMQDOXrmSdPP+/R789NObzOenhvr7i6sqIQkMfIf5/H9y
h63Zrw38OlsAC4B7Dx8mff3996BK4Pb1F18fPnf54gf1ZQmKrtaylI9/+NfK3y8uOJ39gf81
c4Dvfve7g9fv3Lk9euGC49e/+7rqYl810tNT0Hdm/E+3Hz9455+Fn9n/+A2C4MG77xZM3b17
4YOPPr55eaRd0dHThGt37nxPyt/22Q+A3zgAmPXDDz/smLxz58a9997Dg8fv/zw2WKG4fHn0
+/c++nr2A2C2VIFz169vunDt2tSDx4/R11WHodMDf7z23nuzHwCzDgRTUya37ty6cfP27ZDz
9+/Pfvdvtk0FzIM5xYM+n/27f2YjCJqfXDb+5DH7gz9bgYBfWeYrKf17//P/ALnBgn+5dhwJ
AAAAAElFTkSuQmCC')); yourself); yourself); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Book reader and editor'; document: ((EruditeDocument contents: '!!!! Book reader and editor

To read a book, send {open::selector} to a {Book::class}:

[[[EruditeBook eruditeManual open]]] doIt

The {EruditeBookReaderMorph::class|book reader} has editing capabilities, but the {EruditeBookEditorMorph::class|editor} provides live preview and instant updates for editing.

To edit a book, send {edit ::selector} to a Book:

[[[EruditeBook eruditeManual edit]]] doIt

Books are stored as methods in the class side of {EruditeBook::class} class and are marked with a pragma [[[<book: ''title''>]]]. To **remove** a book, just delete the method. To specify the **package** the book belongs to, just recategorize the method (//*PackageName//).
') images: ((Dictionary new)); yourself); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Literate Programming'; document: ((EruditeDocument contents: '!!!! Literate Programming

Literate programming is a style of programming invented by Donald Knuth, where the main idea is that a program''s source code is made primarily to be read and understood by other people, and secondarily to be executed by the computer.

This frees the programmer from the structure of a program imposed by the computer and means that the programmer can develop programs in the order of the flow of their thoughts.

A Literate program consists of explanation of the code in a natural language such as English, interspersed with snippets of code to be executed. This means that Literate programs are very easy to understand and share, as all the code is well explained.

!!!!!! Donald Knuth. "Literate Programming (1984)" in Literate Programming. CSLI, 1992, pg. 99.

I believe that the time is ripe for significantly better documentation of programs, and that we can best achieve this by considering programs to be works of literature. Hence, my title: "Literate Programming."

Let us change our traditional attitude to the construction of programs: Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.

The practitioner of literate programming can be regarded as an essayist, whose main concern is with exposition and excellence of style. Such an author, with thesaurus in hand, chooses the names of variables carefully and explains what each variable means. He or she strives for a program that is comprehensible because its concepts have been introduced in an order that is best for human understanding, using a mixture of formal and informal methods that reinforce each other.

!!!!!! Advantages

According to Knuth, literate programming provides higher-quality programs, since it forces programmers to explicitly state the thoughts behind the program, making poorly thought-out design decisions more obvious. Knuth also claims that literate programming provides a first-rate documentation system, which is not an add-on, but is grown naturally in the process of exposition of one''s thoughts during a program''s creation. The resulting documentation allows the author to restart his own thought processes at any later time, and allows other programmers to understand the construction of the program more easily. This differs from traditional documentation, in which a programmer is presented with source code that follows a compiler-imposed order, and must decipher the thought process behind the program from the code and its associated comments. The meta-language capabilities of literate programming are also claimed to facilitate thinking, giving a higher "bird''s eye view" of the code and increasing the number of concepts the mind can successfully retain and process. Applicability of the concept to programming on a large scale, that of commercial-grade programs, is proven by an edition of TeX code as a literate program.

!!!!!! Contrast with documentation generation

Literate programming is very often misunderstood to refer only to formatted documentation produced from a common file with both source code and comments -which is properly called documentation generation-; or to voluminous commentaries included with code. This is backwards: well-documented code or documentation extracted from code follows the structure of the code, with documentation embedded in the code; in literate programming code is embedded in documentation, with the code following the structure of the documentation.

This misconception has led to claims that comment-extraction tools, such as the Perl Plain Old Documentation or Java Javaerudite systems, are "literate programming tools". However, because these tools do not implement the "web of abstract concepts" hiding behind the system of natural-language macros, or provide an ability to change the order of the source code from a machine-imposed sequence to one convenient to the human mind, they cannot properly be called literate programming tools in the sense intended by Knuth.

!!!!!! Literate Programming in Cuis

Literate Programming in Cuis can be realized by the creation of {Book::class|books}. In particular, via code embedding in its different forms. Contrary to other LP systems, there''s no need for a tangling and weaving phase; document source is kept separatly from the source code, and the code is referenced and embeded from the documentation. Also, there''s no copying and pasting, the referenced code is always uptodate.') images: ((Dictionary new)); yourself); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Syntax test'; document: ((EruditeDocument contents: '!!!! Syntax test

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

[[[Smalltalk inspect]]]
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

!!!!!! Images

{/home/marian/Escritorio/smalltalk-logo.png ::image} ') images: ((Dictionary new) add: ('/home/marian/Escritorio/smalltalk-logo.png'->(EruditeForm fromBase64String:'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
AAAAAElFTkSuQmCC')); yourself); yourself); subsections: ((OrderedCollection new)); yourself); yourself); updateParents; yourself)! !

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

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:27'!
subsections: anObject
	"Set the value of subsections"

	subsections _ anObject! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:27'!
title
	"Answer the value of title"

	^ title! !

!EruditeBookSection methodsFor: 'accessing' stamp: 'MM 11/30/2018 13:27'!
title: anObject
	"Set the value of title"

	title _ anObject! !

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

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/9/2018 22:18'!
nextSection

	^ subsections 
		ifNotEmpty: [subsections first]
		ifEmpty: [parent sections after: self]! !

!EruditeBookSection methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:28'!
previousSection
	^ parent sections
		before: self
		ifNone: [
			(parent isKindOf: EruditeBookSection) ifTrue: [ parent ]].! !

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

!EruditeDocument methodsFor: 'accessing' stamp: 'MM 11/29/2018 19:25'!
contents
	"Answer the value of contents"

	^ contents! !

!EruditeDocument methodsFor: 'accessing' stamp: 'MM 12/10/2018 21:38'!
contents: anObject
	"Set the value of contents"

	contents _ anObject! !

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/18/2018 00:31:18'!
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

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:15:42'!
storeOn: aStream

	aStream nextPutAll: '((EruditeDocument contents: ';
			nextPutAll: contents asString printString;
			nextPutAll: ') images: '; store: images;
			nextPutAll: '; yourself)'! !

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

!EruditeSystem class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 15:34:59'!
initialize

	Preferences addPreference: #eruditeBrowserClassComments 
					category: 'erudite'  
					default: true  
					balloonHelp: 'Enabled/disable Erudite markup in browser class comments'.
					
	Preferences setPreference:  #tapAndHoldEmulatesButton2 toValue: false.
					 
	EruditeBook eruditeManual open! !

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

!ClassDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/9/2018 21:13'!
renderLink: aDocLink on: aStream

	aStream nextPut: (Text string: aDocLink labelOrTarget 
				attribute: (BlockTextAction do: [:x | |class|
						class _ Smalltalk at: aDocLink target withBlanksTrimmed asSymbol.
						self browse: class selector: nil]))! !

!ImageDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/17/2018 23:48:46'!
render: aDocLink in: aDocument on: aStream

	|filePath form imageMorph |
	
	filePath _ aDocLink target withBlanksTrimmed.
	form _ aDocument imageAt: filePath ifAbsent: [
				aDocument addImageFromPath: filePath].
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

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/16/2018 11:04:04'!
embed: aDocLink on: aStream

	|text methodReference textModel |
	
	methodReference _ self methodReferenceFor: aDocLink.
	
	methodReference ifNil: [^nil].
	
	text _ Text string: methodReference sourceCode.
							
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

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 16:25:01'!
renderCode: aDocCode

	|text textModel|
	
	text _ Text string: aDocCode code.
	
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.

	stream nextPut: textModel actualContents .! !

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

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 11/30/2018 16:30'!
visitHeading: aEruditeHeading

	|pointSizes|
	
	pointSizes _ #(17 14 12 11).

	stream nextPut: (Text string: aEruditeHeading heading attributes: 
							{TextColor blue.
							TextEmphasis bold.
							TextFontFamilyAndSize familyName: 'DejaVu' pointSize: (pointSizes at: aEruditeHeading level)})! !

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

!Browser methodsFor: '*Erudite' stamp: 'MM 12/13/2018 18:25'!
selectionInterval

	^ 1 to: 1! !

!Browser methodsFor: '*Erudite' stamp: 'MM 12/13/2018 18:26'!
text
	^ ''! !

!String methodsFor: '*Erudite' stamp: 'MM 12/15/2018 13:59:03'!
subStrings: separators 
	"Answer an array containing the substrings in the receiver separated 
	by the elements of separators."
	| char result sourceStream subString |
	#Collectn.
	"Changed 2000/04/08 For ANSI <readableString> protocol."
	(separators isString or:[separators allSatisfy: [:element | element is: Character]]) ifFalse:
		[^ self error: 'separators must be Characters.'].
	sourceStream := ReadStream on: self.
	result := OrderedCollection new.
	subString := String new.
	[sourceStream atEnd]
		whileFalse: 
			[char := sourceStream next.
			(separators includes: char)
				ifTrue: [subString notEmpty
						ifTrue: 
							[result add: subString copy.
							subString := String new]]
				ifFalse: [subString := subString , (String with: char)]].
	subString notEmpty ifTrue: [result add: subString copy].
	^ result asArray! !

!HierarchicalListMorph methodsFor: '*Erudite' stamp: 'MM 12/13/2018 18:42'!
expandRoot
	scroller submorphs first toggleExpandedState ! !

!TextModelMorph methodsFor: '*Erudite' stamp: 'MM 12/7/2018 12:55'!
enableEditing: aBoolean
	self textMorph enableEditing: aBoolean! !

!InnerTextMorph methodsFor: '*Erudite' stamp: 'MM 12/7/2018 12:59'!
enableEditing: aBoolean

	self setProperty: #disablesEdition toValue: aBoolean.
	aBoolean ifFalse: [self stopBlinking]
				ifTrue: [self removeProperty: #disablesEdition. self startBlinking]! !
EruditeSystem initialize!
