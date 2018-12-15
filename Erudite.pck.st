'From Cuis 5.0 of 7 November 2016 [latest update: #3511] on 15 December 2018 at 4:35:45 pm'!
'Description Documenter and Literate Programming system for Cuis Smalltalk.'!
!provides: 'Erudite' 1 86!
!requires: 'PetitParser-Binding' 1 0 nil!
!requires: 'PetitParser' 1 5 nil!
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
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Morphic'!
!classDefinition: 'EruditeSmalltalkTextModel class' category: #'Erudite-Morphic'!
EruditeSmalltalkTextModel class
	instanceVariableNames: ''!

!classDefinition: #EruditeBookExplorer category: #'Erudite-Core'!
AbstractHierarchicalList subclass: #EruditeBookExplorer
	instanceVariableNames: 'book'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Erudite-Core'!
!classDefinition: 'EruditeBookExplorer class' category: #'Erudite-Core'!
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
	instanceVariableNames: 'contents'
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

!EruditeSmalltalkTextModel methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 16:21:26'!
formatAndStyle

	|styler|
	
	styler _ SHTextStylerST80 new textModel: self.

	self formatAndStyleIfNeededWith: styler! !

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

!EruditeBookReaderMorph methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 18:28'!
getStyledText: aDocument
	^ styledDocuments
		at: aDocument
		ifAbsent: [ | erudite text |
			erudite _ EruditeMarkupParser parse: aDocument contents.
			text _ MorphicEruditeDocRenderer render: erudite notifying: self.
			styledDocuments
				at: aDocument
				put: text.
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

!EruditeBook methodsFor: 'initialization' stamp: 'MM 12/1/2018 23:27'!
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

!EruditeBook class methodsFor: 'storage' stamp: 'MM 12/11/2018 22:49'!
eruditeManual

<book: 'Erudite Manual'>

^(EruditeBook basicNew title: 'Erudite Manual'; sections: ((OrderedCollection new) add: (EruditeBookSection basicNew title: 'Introduction'; document: (EruditeDocument contents: '!!!! Erudite Manual

by **Mariano Montone** //(marianomontone@gmail.com)//

This is a manual and reference of Erudite package por Cuis.

Erudite packages provides several things to augment Smalltalk documentation:

* A {EruditeDocument::class} parser. A Document is the container of formatted text. There are two classes available to parse and format Documents. {EruditeMarkupParser::class} and {SmalltalkEruditeParser::class}.
* {EruditeBook::class}s. Books are basically a collection of Documents organized in {EruditeBookSection::class|sections}.
* Book {EruditeBookReaderMorph::class|reader} and {EruditeBookEditorMorph::class|editor}. Morphic applications for Book reading and editing.

'); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Syntax reference'; document: (EruditeDocument contents: '!!!! Syntax reference

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
'); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Book reader and editor'; document: (EruditeDocument contents: '!!!! Book reader and editor

To read a book, send {open::selector} to a {Book::class}:

[[[EruditeBook eruditeManual open]]] doIt

The {EruditeBookReaderMorph::class|book reader} has editing capabilities, but the {EruditeBookEditorMorph::class|editor} provides live preview and instant updates for editing.

To edit a book, send {edit ::selector} to a Book:

[[[EruditeBook eruditeManual edit]]] doIt

Books are stored as methods in the class side of {EruditeBook::class} class and are marked with a pragma [[[<book: ''title''>]]]. To **remove** a book, just delete the method. To specify the **package** the book belongs to, just recategorize the method (//*PackageName//).
'); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Literate Programming'; document: (EruditeDocument contents: '!!!! Literate Programming

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

Literate Programming in Cuis can be realized by the creation of {Book::class|books}. In particular, via code embedding in its different forms. Contrary to other LP systems, there''s no need for a tangling and weaving phase; document source is kept separatly from the source code, and the code is referenced and embeded from the documentation. Also, there''s no copying and pasting, the referenced code is always uptodate.'); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Syntax test'; document: (EruditeDocument contents: '!!!! Syntax test

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
{at:put: ::selector}'); subsections: ((OrderedCollection new)); yourself); yourself); updateParents; yourself)! !

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

!EruditeDocument methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 21:42'!
storeOn: aStream

	aStream nextPutAll: '(EruditeDocument contents: ';
			nextPutAll: contents asString printString;
			nextPutAll: ')'! !

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

!DocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/1/2018 15:15'!
render: aLink on: aStream

	^ self subclassResponsibility ! !

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

!ClassDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/7/2018 14:22'!
render: aDocLink on: aStream

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

!MessageDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 18:30'!
render: aDocLink on: aStream

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

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/15/2018 16:26:52'!
embed: aDocLink on: aStream

	|text methodReference textModel |
	
	methodReference _ self methodReferenceFor: aDocLink.
	
	methodReference ifNil: [^nil].
	
	text _ Text string: methodReference sourceCode.
							
	textModel _ EruditeSmalltalkTextModel withText: text.
	textModel formatAndStyle.
	
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

!MethodDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 18:24'!
render: aDocLink on: aStream

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

!SectionDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/11/2018 14:14'!
render: aDocLink on: aStream

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

!SelectorDocLinkRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 12/10/2018 18:29'!
render: aDocLink on: aStream

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

!MorphicEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'MM 12/6/2018 11:41'!
visitLink: aDocLink
	
	(self linkRendererFor: aDocLink type) ifNotNil: [:aLinkRenderer |
		aLinkRenderer render: aDocLink on: stream]! !

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

!BrowserWindow methodsFor: '*Erudite' stamp: 'MM 12/15/2018 15:32:16'!
buildMorphicCommentPane
	"Construct the pane that shows the class comment."

	| commentPane |
	
	(Preferences valueOfFlag: #eruditeBrowserClassComments ifAbsent: false) 
		ifFalse: [
			commentPane _ BrowserCommentTextMorph
				textProvider: model
				textGetter: #classCommentText
				textSetter: #newClassComment:]
	ifTrue: [
		commentPane _ EruditeClassCommentMorph withModel:
			((EruditePluggableTextModel
				on: model)
				textGetter: #classCommentText
				textSetter: #newClassComment:
				selectionGetter: nil).
		model addDependent: commentPane].
	
	^ commentPane! !

!InnerTextMorph methodsFor: '*Erudite' stamp: 'MM 12/7/2018 12:59'!
enableEditing: aBoolean

	self setProperty: #disablesEdition toValue: aBoolean.
	aBoolean ifFalse: [self stopBlinking]
				ifTrue: [self removeProperty: #disablesEdition. self startBlinking]! !
EruditeSystem initialize!
