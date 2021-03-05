'From Cuis 5.0 [latest update: #4528] on 5 March 2021 at 5:31:06 pm'!
'Description Erudite extensions to Smalltalk tools.'!
!provides: 'EruditeToolsExtensions' 1 2!
!requires: 'Erudite' 1 88 nil!



!BrowserWindow methodsFor: '*EruditeToolsExtensions' stamp: 'MM 3/5/2021 17:07:35'!
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
				selectionGetter: nil;
				editing: false; 
				yourself).
		model addDependent: commentPane].
	
	^ commentPane! !
