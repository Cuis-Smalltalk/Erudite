'From Cuis 6.0 [latest update: #5352] on 6 July 2022 at 6:55:30 am'!
'Description Erudite extensions to Smalltalk tools.'!
!provides: 'EruditeToolsExtensions' 1 5!
!requires: 'Erudite' 1 198 nil!



!BrowserWindow methodsFor: '*EruditeToolsExtensions' stamp: 'as 7/6/2022 06:54:36'!
buildMorphicCommentPane
	"Construct the pane that shows the class comment."

	| commentPane |
	
	(EruditeSystem preferences at: #browserClassComments) 
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
