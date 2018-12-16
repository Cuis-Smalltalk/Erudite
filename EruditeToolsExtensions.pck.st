'From Cuis 5.0 of 7 November 2016 [latest update: #3511] on 16 December 2018 at 11:28:39 am'!
'Description Erudite extensions to Smalltalk tools.'!
!provides: 'EruditeToolsExtensions' 1 1!
!requires: 'Erudite' 1 88 nil!



!BrowserWindow methodsFor: '*EruditeToolsExtensions' stamp: 'MM 12/15/2018 15:32:16'!
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
