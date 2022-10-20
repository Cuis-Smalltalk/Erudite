'From Cuis 6.0 [latest update: #5494] on 20 October 2022 at 6:12:46 pm'!
'Description HTML renderer for Erudite books.'!
!provides: 'EruditeHTML' 1 8!
!requires: 'Erudite' 1 213 nil!
SystemOrganization addCategory: 'EruditeHTML'!


!classDefinition: #HTMLEruditeBookExporter category: 'EruditeHTML'!
EruditeBookExporter subclass: #HTMLEruditeBookExporter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeHTML'!
!classDefinition: 'HTMLEruditeBookExporter class' category: 'EruditeHTML'!
HTMLEruditeBookExporter class
	instanceVariableNames: ''!

!classDefinition: #HTMLEruditeDocRenderer category: 'EruditeHTML'!
Object subclass: #HTMLEruditeDocRenderer
	instanceVariableNames: 'stream requestor highlightSyntax book documentClass htmlFilePath'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeHTML'!
!classDefinition: 'HTMLEruditeDocRenderer class' category: 'EruditeHTML'!
HTMLEruditeDocRenderer class
	instanceVariableNames: ''!


!HTMLEruditeDocRenderer commentStamp: '<historical>' prior: 0!
Renders a Book to a Latex file.

Example:

(HTMLEruditeDocRenderer on: CuisManual new)
	htmlFilePath: '/home/marian/src/Cuis/Erudite/CuisManual.html';
	render.
	
(HTMLEruditeDocRenderer on: EruditeManual new)
	htmlFilePath: '/home/marian/src/Cuis/Erudite/EruditeManual.html';
	render.!

!HTMLEruditeBookExporter methodsFor: 'as yet unclassified' stamp: 'MM 10/20/2022 17:54:24'!
export

	(HTMLEruditeDocRenderer on: book)
			htmlFilePath: location;
			render.! !

!HTMLEruditeBookExporter class methodsFor: 'as yet unclassified' stamp: 'MM 10/20/2022 17:53:34'!
exporterName

	^ 'HTML'! !

!HTMLEruditeBookExporter class methodsFor: 'as yet unclassified' stamp: 'MM 10/20/2022 17:55:07'!
requestEditorArgumentsFor: aBook

	"Request arguments for the exporter from the book editor tool."
	
	| defaultFilePath path |
	
	defaultFilePath _ DirectoryEntry currentDirectory / (aBook title, '.html').
	path _ self request: 'Export to:' initialAnswer: defaultFilePath asString.
	^ {#location: -> path}! !

!HTMLEruditeDocRenderer methodsFor: 'rendering' stamp: 'KLG 3/25/2021 21:57:27'!
render

	self renderWithTemplate: [
		book sections do: [:aBookSection | 
			self renderSection: aBookSection]].
	
	htmlFilePath fileContents: stream contents! !

!HTMLEruditeDocRenderer methodsFor: 'rendering' stamp: 'KLG 3/29/2021 19:24:39'!
renderCode: aDocCode
	"Render some (Smalltalk_ code"

	self renderElement: 'pre' withContents: 	aDocCode code
! !

!HTMLEruditeDocRenderer methodsFor: 'rendering' stamp: 'MM 10/18/2022 13:25:05'!
renderDocument: aDocument
	
	|doc|
	
	doc _ EruditeMarkupParser parse: aDocument contents.
	
	doc contents do: [:node |
		node isString
			ifTrue: [ | textToRender needsParagraph |
				(needsParagraph _ node beginsWith: {Character newLineCharacter. Character newLineCharacter})
					ifTrue: [ 
						textToRender _ node copyFrom: 3.
						stream
							newLine;
							nextPutAll: '<p>' ]
					ifFalse: [ textToRender _ node ].
				stream nextPutAll: (self escapeHTML: textToRender).
				needsParagraph ifTrue: [
					stream
						nextPutAll: '</p>';
						newLine ]	 ]
			ifFalse: [ node accept: self].
		stream ]! !

!HTMLEruditeDocRenderer methodsFor: 'rendering' stamp: 'KLG 3/26/2021 13:45:18'!
renderElement: anElementName withContents: aString
	"Render an element with contents a string."

	stream nextPut: $<;
		nextPutAll: anElementName;
		nextPut: $>;
		nextPutAll: aString ;
		nextPutAll: '</';
		nextPutAll: anElementName;
		nextPut: $>
			! !

!HTMLEruditeDocRenderer methodsFor: 'rendering' stamp: 'KLG 3/29/2021 18:43:48'!
renderElement: anElementName withContents: aString andAttributes: someAttributes
	"Render an element with contents a string."

	stream nextPut: $<;
		nextPutAll: anElementName.
	someAttributes keysAndValuesDo: [ :key :value |
		stream
		       nextPut: ($ );
			nextPutAll: key;
			nextPut: $=;
			nextPutAll: value ].
	stream
		nextPut: $>;
		nextPutAll: aString ;
		nextPutAll: '</';
		nextPutAll: anElementName;
		nextPut: $>
			! !

!HTMLEruditeDocRenderer methodsFor: 'rendering' stamp: 'KLG 3/29/2021 18:31:49'!
renderHeading: aTitleString level: anInteger
	"Render a heading."

	stream nextPutAll: '<h'.
	anInteger printOn: stream.
	stream
		nextPut: $>;
		nextPutAll: aTitleString;
		nextPutAll: '</h'.
	anInteger printOn: stream.
	stream 
		nextPut: $>;
		nl
		! !

!HTMLEruditeDocRenderer methodsFor: 'rendering' stamp: 'KLG 3/26/2021 23:00:50'!
renderSection: aBookSection
	"Render a section of a book."

	self 
		renderHeading: aBookSection title level: 1;
		renderDocument: aBookSection document.
	
	aBookSection sections do: [:section |
		self renderSubsection: section]! !

!HTMLEruditeDocRenderer methodsFor: 'rendering' stamp: 'KLG 3/26/2021 23:01:08'!
renderSubsection: aBookSection

	self
		renderHeading: aBookSection title level: 		2;
		renderDocument: aBookSection document.
	
	aBookSection sections do: [:section |
		self renderSubsubsection: section]! !

!HTMLEruditeDocRenderer methodsFor: 'rendering' stamp: 'KLG 3/26/2021 23:00:26'!
renderSubsubsection: aBookSection

	self
		renderHeading: aBookSection title level: 3;	
		renderDocument: aBookSection document
	
	! !

!HTMLEruditeDocRenderer methodsFor: 'rendering' stamp: 'KLG 3/29/2021 18:28:18'!
renderWithTemplate: aBlock
	"Render with a template; maybe a stylesheet."

	stream
		nextPutAll: '<html>';
		newLine;
		nextPutAll: '<head>';
		newLine;
		nextPutAll: '</head>';
		newLine;
		nextPutAll: '<body>'.
	aBlock value.
	stream
		newLine;
		nextPutAll: '</body>'! !

!HTMLEruditeDocRenderer methodsFor: 'visiting' stamp: 'KLG 3/26/2021 23:02:56'!
visitActionLink: aDocLink

	self renderElement: 'u' withContents: aDocLink title! !

!HTMLEruditeDocRenderer methodsFor: 'visiting' stamp: 'KLG 3/25/2021 21:52:19'!
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

!HTMLEruditeDocRenderer methodsFor: 'visiting' stamp: 'KLG 3/29/2021 18:49:28'!
visitHeading: anEruditeHeading

	"?: self renderHeading: anEruditeHeading heading level: anEruditeHeading level.
	stream newLine; newLine"! !

!HTMLEruditeDocRenderer methodsFor: 'visiting' stamp: 'KLG 3/26/2021 23:31:29'!
visitLink: aDocLink
	
	"(self linkRendererFor: aDocLink type) ifNotNil: [:aLinkRenderer |
		aLinkRenderer render: aDocLink in: document on: stream]"
	
	| label target |
	target _ aDocLink target.
	label _ aDocLink label ifNil: target.
	self
		renderElement: 'a'
		withContents: label
		andAttributes: {'href' -> target} asDictionary! !

!HTMLEruditeDocRenderer methodsFor: 'visiting' stamp: 'MM 10/18/2022 13:34:48'!
visitStyledText: aStyledText

	self 
		renderElement: (aStyledText style caseOf: {
			[ #bold ] -> [ 'b' ].
			[ #italic ] -> [ 'em' ].
			[ #underlined ] -> ['u'].
			[ #unformatted ] -> [ 'blockquote' ] })
		withContents: aStyledText text! !

!HTMLEruditeDocRenderer methodsFor: 'initialization' stamp: 'KLG 3/25/2021 21:52:19'!
initialize: aBook

	book _ aBook.
	stream _ WriteStream on: String new.
	documentClass _ #book.
	highlightSyntax _ true! !

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
linkRendererFor: aLinkType

	|handlerClassName|
	
	handlerClassName _ aLinkType asString capitalized, 'DocLinkRenderer'.
	^ Smalltalk at: handlerClassName asSymbol ifAbsent: ["self error: 'No link renderer for: ', aLinkType asString" nil]! !

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
renderArticle

	documentClass _ #article.
	self render! !

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
renderBook

	documentClass _ #book.
	self render! !

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
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

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
renderCodeDoItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false]})! !

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
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

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
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

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
renderCodeExploreItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | (Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false) explore]})! !

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
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

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
renderCodeInspectItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | (Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false) inspect]})! !

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
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

!HTMLEruditeDocRenderer methodsFor: 'as yet unclassified' stamp: 'KLG 3/25/2021 21:52:19'!
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

!HTMLEruditeDocRenderer methodsFor: 'accessing' stamp: 'KLG 3/25/2021 21:57:38'!
book
	"Answer the value of book"

	^ book! !

!HTMLEruditeDocRenderer methodsFor: 'accessing' stamp: 'KLG 3/25/2021 21:52:19'!
book: aBook

	book _ aBook! !

!HTMLEruditeDocRenderer methodsFor: 'accessing' stamp: 'KLG 3/25/2021 21:57:38'!
htmlFilePath
	"Answer the value of htmlFilePath"

	^ htmlFilePath! !

!HTMLEruditeDocRenderer methodsFor: 'accessing' stamp: 'KLG 3/25/2021 21:57:38'!
htmlFilePath: anObject
	"Set the value of htmlFilePath"

	htmlFilePath _ anObject! !

!HTMLEruditeDocRenderer methodsFor: 'accessing' stamp: 'KLG 3/25/2021 21:52:19'!
requestor

	^ requestor! !

!HTMLEruditeDocRenderer methodsFor: 'accessing' stamp: 'KLG 3/25/2021 21:52:19'!
requestor: anObject

	requestor _ anObject! !

!HTMLEruditeDocRenderer methodsFor: 'escaping' stamp: 'KLG 3/29/2021 18:16:41'!
characterToEntityMapping
	"Answer the character  to entity mapping."

	^ self class characterToEntityMapping! !

!HTMLEruditeDocRenderer methodsFor: 'escaping' stamp: 'KLG 3/29/2021 18:15:24'!
escapeHTML: aString
	"Basic HTML escape."
	
	^ String streamContents: [ :s |
		aString do: [ :character |
			self characterToEntityMapping 
				at: character 
				ifPresent: [ :replacement | s nextPutAll: replacement ]
				ifAbsent: [ s nextPut: character ] ] ]! !

!HTMLEruditeDocRenderer class methodsFor: 'instance creation' stamp: 'KLG 3/25/2021 21:52:19'!
on: aBook

	^ self new initialize: aBook! !

!HTMLEruditeDocRenderer class methodsFor: 'rendering' stamp: 'KLG 3/25/2021 21:52:19'!
render: aBook
	
	^ (self on: aBook) render! !

!HTMLEruditeDocRenderer class methodsFor: 'rendering' stamp: 'KLG 3/25/2021 21:52:19'!
render: aBook notifying: anObject
	
	^ (self on: aBook)
		requestor: anObject; 
		render! !

!HTMLEruditeDocRenderer class methodsFor: 'escaping' stamp: 'KLG 3/29/2021 18:10:17'!
characterToEntityMapping
	"Answer the character  to entity mapping."

	^ `#(
		($< lt)
		($> gt)
		($" quot)
		($' apos)
		($& amp)
		($!! excl)
		($# num)
		($$ dollar)
		($% percnt)
		($( lpar)
		($) rpar)
		($* ast)
		($+ plus)
		($, comma)
		($. period)
		($/ sol)
		($; semi)
		($= equals)
		($? quest)
		($[ lsqb)
		($\ bsol)
		($] rsqb)
	       ($^ hat)
	       ($_ lobar)
		($` grave)
		(${ lcub)
		($| vert)
		($} rcub)
		($© copy)	
	) collect: [ :pair |
		pair first -> ('&', pair second, ';' )] :: asDictionary`! !
