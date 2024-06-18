'From Cuis7.1 [latest update: #6469] on 18 June 2024 at 12:40:29 am'!
'Description '!
!provides: 'EruditeXMLExtras' 1 1!
!requires: 'EruditeXMLBook' 1 11 nil!
SystemOrganization addCategory: #EruditeXMLExtras!


!classDefinition: #EruditeXMLInfoParser category: #EruditeXMLExtras!
EruditeXMLElementParser subclass: #EruditeXMLInfoParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLExtras'!
!classDefinition: 'EruditeXMLInfoParser class' category: #EruditeXMLExtras!
EruditeXMLInfoParser class
	instanceVariableNames: ''!


!EruditeXMLInfoParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 23:19:41'!
parse: anXMLElement using: aParser

	^ EruditeStyledText 
		text: anXMLElement contents first string
		styles: (Array with: TextBackgroundColor blue
					  with: TextColor white)! !

!EruditeXMLInfoParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 22:36:26'!
tag
	^ 'info'! !
