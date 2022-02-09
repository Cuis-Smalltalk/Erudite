'From Cuis 6.0 [latest update: #5065] on 9 February 2022 at 10:05:51 am'!
'Description Provides online help for Cuis tools via Erudite.

Open halos on one of the tools (system browser, workspace, etc) using middle click over the tool, then click on the help halo at the bottom.'!
!provides: 'EruditeHelp' 1 7!
!requires: 'Erudite' 1 165 nil!



!CodePackageListWindow methodsFor: '*EruditeHelp' stamp: 'MM 2/9/2022 10:05:25'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	CuisManual openInSection: 'Installed Packages'! !

!BrowserWindow methodsFor: '*EruditeHelp' stamp: 'MM 2/8/2022 12:07:32'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	CuisManual openInSection: 'The System Browser'! !

!DebuggerWindow methodsFor: '*EruditeHelp' stamp: 'MM 2/8/2022 14:22:20'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	CuisManual openInSection: 'The Debugger'! !

!TranscriptWindow methodsFor: '*EruditeHelp' stamp: 'MM 2/8/2022 18:24:38'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	CuisManual openInSection: 'The Transcript'! !

!WorkspaceWindow methodsFor: '*EruditeHelp' stamp: 'MM 2/8/2022 16:06:51'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	CuisManual openInSection: 'Workspace'! !
