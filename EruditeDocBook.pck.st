'From Cuis 5.0 [latest update: #4241] on 20 July 2020 at 11:36:31 am'!
'Description DocBook import/export for Erudite.'!
!provides: 'EruditeDocBook' 1 5!
!requires: 'Erudite' 1 139 nil!
!requires: 'YAXO' 1 16 nil!
SystemOrganization addCategory: #EruditeDocBook!


!classDefinition: #EruditeDocBookImporter category: #EruditeDocBook!
Object subclass: #EruditeDocBookImporter
	instanceVariableNames: 'docBookFile eruditeBook currentSection contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'EruditeDocBookImporter class' category: #EruditeDocBook!
EruditeDocBookImporter class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocBookRenderer category: #EruditeDocBook!
Object subclass: #EruditeDocBookRenderer
	instanceVariableNames: 'stream requestor book docBookFilePath language xml level'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'EruditeDocBookRenderer class' category: #EruditeDocBook!
EruditeDocBookRenderer class
	instanceVariableNames: ''!

!classDefinition: #EruditeDocBookParser category: #EruditeDocBook!
SAXHandler subclass: #EruditeDocBookParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocBook'!
!classDefinition: 'EruditeDocBookParser class' category: #EruditeDocBook!
EruditeDocBookParser class
	instanceVariableNames: ''!


!EruditeDocBookRenderer commentStamp: '<historical>' prior: 0!
Renders a Book to a DocBook file.

Example:

(EruditeDocBookRenderer render: EruditeBook eruditeManual) edit.
(EruditeDocBookRenderer render: EruditeManual new to: '/home/marian/src/Cuis/Erudite/EruditeManual.xml') .!

!EruditeDocBookImporter methodsFor: 'as yet unclassified' stamp: 'MM 7/17/2020 22:46:44'!
import
	eruditeBook _ EruditeBook new.
	EruditeDocBookParser parseDocumentFromFileNamed: 	docBookFile.
	^eruditeBook! !

!EruditeDocBookImporter methodsFor: 'as yet unclassified' stamp: 'MM 7/17/2020 22:15:05'!
initialize: aDocBookFile
	docBookFile _ aDocBookFile ! !

!EruditeDocBookImporter class methodsFor: 'as yet unclassified' stamp: 'MM 7/17/2020 22:14:31'!
importBookFrom: aDocBookFile
	^(self new initialize: aDocBookFile) import! !

!EruditeDocBookRenderer methodsFor: 'xml' stamp: 'MM 7/19/2020 21:02:23'!
endElement: aString
	xml endTag: aString! !

!EruditeDocBookRenderer methodsFor: 'xml' stamp: 'MM 7/19/2020 21:09:13'!
pcData: aString
	^xml pcData: aString! !

!EruditeDocBookRenderer methodsFor: 'xml' stamp: 'MM 7/19/2020 21:28:04'!
startElement: aString
	^ self startElement: aString attributeList: Dictionary new! !

!EruditeDocBookRenderer methodsFor: 'xml' stamp: 'MM 7/19/2020 21:28:10'!
startElement: aString attributeList: attributes
	^xml startElement: aString attributeList: attributes asDictionary; endTag! !

!EruditeDocBookRenderer methodsFor: 'xml' stamp: 'MM 7/19/2020 21:05:35'!
withElement: aString andAttributes: attributes do: aBlock
	self startElement: aString attributeList: attributes.
	aBlock value.
	self endElement: aString.! !

!EruditeDocBookRenderer methodsFor: 'xml' stamp: 'MM 7/19/2020 20:58:20'!
withElement: aString do: aBlock
	self startElement: aString.
	aBlock value.
	self endElement: aString.! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/19/2020 10:36:37'!
initialize: aBook

	book _ aBook.
	stream _ WriteStream on: String new.
	xml _ XMLWriter on: stream.
	language _ 'en'.
	level _ 0! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/20/2020 11:35:20'!
render

	self renderWithTemplate: [
		book sections do: [:aBookSection | 
			self renderSection: aBookSection]].
	
	docBookFilePath ifNotNil: [:f | f fileContents: stream contents asUtf8 ].
	
	^stream contents! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:47:47'!
renderBook

	self render! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/19/2020 21:00:17'!
renderCode: aDocCode

	self withElement: 'programlisting' do: [
		xml pcData: aDocCode code ].
	
	"Besides rendering the code, try to evaluate it, since there may be variable assignments."
	"[requestor 
		ifNil: [Compiler evaluate: aDocCode code for: self logged: false]
		ifNotNil: [Compiler evaluate: aDocCode code notifying: requestor logged: false]]
	on: Error do: [:error | error]"! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
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

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
renderCodeDoItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false]})! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
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

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/20/2020 11:16:34'!
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

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
renderCodeExploreItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | (Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false) explore]})! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
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

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
renderCodeInspectItWithButton: aDocCode

	stream nextPut: (Text string: (aDocCode action at: #button)
							attributes: 
							{TextColor magenta.
							TextEmphasis italic.
							TextEmphasis underlined .
							BlockTextAction do: [:anObject | (Compiler evaluate: aDocCode code notifying: anObject textProvider logged: false) inspect]})! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
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

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
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

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/19/2020 22:36:36'!
renderDocument: aDocument
	
	|doc|
	
	doc _ EruditeMarkupParser parse: aDocument contents.
	
	self startElement: 'para'.
	doc contents do: [:node |
		node isString ifTrue: [
			node lines do: [:line |
				line isEmpty ifTrue: [self endElement: 'para'; startElement: 'para']
					ifFalse: [self pcData: line]]	]
		ifFalse: [
			node accept: self]].
	self endElement: 'para'! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/19/2020 21:09:40'!
renderSection: aBookSection

	self withElement: (level isZero ifTrue: ['chapter'] ifFalse: ['section']) 
	      do: [
	
		self withElement: 'title' do: [
			self pcData: aBookSection title].
					
		self renderDocument: aBookSection document.
	
		level _ level + 1.
		
		aBookSection sections do: [:section |
			self renderSection: section].
	
		level _ level - 1]! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
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

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
renderSubsubsection: aBookSection

	documentClass caseOf: {
		[#book] -> [stream nextPutAll: '\subsection{'].
		[#article] -> [stream nextPutAll: '\subsubsection{'].
	}.
	stream nextPutAll: aBookSection title;
			nextPutAll: '}'; newLine.
			
	self renderDocument: aBookSection document.
	
	! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/20/2020 11:34:17'!
renderWithTemplate: aBlock
	xml xmlDeclaration: '1.0' encoding: 'utf-8'.
	stream nextPutAll: ' <!!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook V5.0//EN"
                   "http://www.oasis-open.org/docbook/xml/5.0/docbook.dtd">'. 
	self withElement: 'book' andAttributes: {'id' -> book title. 'lang' -> language} 
		do: [ self withElement: 'title' do: [
				self pcData: book title].
			aBlock value]! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
visitActionLink: aDocLink

	stream nextPutAll: '\underline{';
			nextPutAll: aDocLink title;
			nextPutAll: '}'! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
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

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/19/2020 21:09:26'!
visitHeading: aEruditeHeading

	"aEruditeHeading level caseOf: {
		[1] -> [stream nextPutAll: '\section*{'].
		[2] -> [stream nextPutAll: '\subsection*{'].
		[3] -> [stream nextPutAll: '\subsubsection*{'].
		[4] -> [stream nextPutAll: '\textbf{']
	}.
	stream nextPutAll: aEruditeHeading heading; nextPutAll: '}'; newLine; newLine"
	
	self withElement: 'title' do: [self pcData: aEruditeHeading heading]! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/19/2020 21:09:54'!
visitLink: aDocLink
	
	"(self linkRendererFor: aDocLink type) ifNotNil: [:aLinkRenderer |
		aLinkRenderer render: aDocLink in: document on: stream]"
	
	aDocLink label 
		ifNotNil: [
			self withElement: 'link' andAttributes: {'linkend' -> aDocLink target} do: [
				self pcData: aDocLink label	]]
		ifNil: [
			self withElement: 'ulink' andAttributes: {'url' -> aDocLink target} do: [
				self pcData: aDocLink target]]! !

!EruditeDocBookRenderer methodsFor: 'as yet unclassified' stamp: 'MM 7/19/2020 22:05:27'!
visitStyledText: aStyledText

	aStyledText style caseOf: {
		[#bold] -> [self withElement: 'emphasis' do: [
					self pcData: aStyledText text]].
		[#italic] -> [self withElement: 'emphasis' do: [
					self pcData: aStyledText text]].
		[#unformatted] -> [self withElement: 'screen' do: [
			                       self pcData: aStyledText text]]
	}! !

!EruditeDocBookRenderer methodsFor: 'accessing' stamp: 'MM 7/18/2020 20:46:08'!
book: aBook

	book _ aBook! !

!EruditeDocBookRenderer methodsFor: 'accessing' stamp: 'MM 7/19/2020 22:10:44'!
outputFile: aFile
	docBookFilePath _ aFile! !

!EruditeDocBookRenderer methodsFor: 'accessing' stamp: 'MM 7/18/2020 20:46:08'!
requestor

	^ requestor! !

!EruditeDocBookRenderer methodsFor: 'accessing' stamp: 'MM 7/18/2020 20:46:08'!
requestor: anObject

	requestor _ anObject! !

!EruditeDocBookRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
on: aBook

	^ self new initialize: aBook! !

!EruditeDocBookRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
render: aBook
	
	^ (self on: aBook) render! !

!EruditeDocBookRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 7/18/2020 20:46:08'!
render: aBook notifying: anObject
	
	^ (self on: aBook)
		requestor: anObject; 
		render! !

!EruditeDocBookRenderer class methodsFor: 'as yet unclassified' stamp: 'MM 7/19/2020 22:10:15'!
render: aBook to: aFile
	^(self on: aBook)
		outputFile: aFile;
		render! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 7/17/2020 22:48:43'!
characters: aString
	Transcript show: 'chars:'; show:aString; newLine.! !

!EruditeDocBookParser methodsFor: 'as yet unclassified' stamp: 'MM 7/17/2020 22:50:15'!
startElement: elementName attributeList: attributeList
	Transcript show: 'Element:'; show: elementName; show: attributeList printString; newLine.! !
