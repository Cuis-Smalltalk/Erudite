'From Cuis 6.0 [latest update: #5062] on 8 February 2022 at 4:09:56 pm'!
'Description Provides online help for Cuis tools via Erudite.

Open halos on one of the tools (system browser, workspace, etc) using middle click over the tool, then click on the help halo at the bottom.'!
!provides: 'EruditeHelp' 1 4!
!requires: 'Erudite' 1 162 nil!



!BrowserWindow methodsFor: '*EruditeHelp' stamp: 'MM 2/8/2022 12:07:32'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	CuisManual openInSection: 'The System Browser'! !

!DebuggerWindow methodsFor: '*EruditeHelp' stamp: 'MM 2/8/2022 14:22:20'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	CuisManual openInSection: 'The Debugger'! !

!WorkspaceWindow methodsFor: '*EruditeHelp' stamp: 'MM 2/8/2022 16:06:51'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	CuisManual openInSection: 'Workspace'! !
