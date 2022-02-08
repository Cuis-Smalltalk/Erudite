'From Cuis 6.0 [latest update: #5062] on 8 February 2022 at 2:24:01 pm'!
'Description '!
!provides: 'EruditeHelp' 1 3!
!requires: 'Erudite' 1 160 nil!



!BrowserWindow methodsFor: '*EruditeHelp' stamp: 'MM 2/8/2022 12:07:32'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	CuisManual openInSection: 'The System Browser'! !

!DebuggerWindow methodsFor: '*EruditeHelp' stamp: 'MM 2/8/2022 14:22:20'!
mouseDownOnHelpHandle: anEvent
	"The mouse went down in the show-balloon handle"
	
	CuisManual openInSection: 'The Debugger'! !
