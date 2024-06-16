'From Cuis7.1 [latest update: #6469] on 15 June 2024 at 11:12:39 pm'!
'Description '!
!provides: 'EruditeXMLExtras' 1 0!
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


!EruditeXMLInfoParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 23:02:29'!
parse: anXMLElement using: aParser

	^ EruditeStyledText 
		text: anXMLElement contents first string
		styles: (Array with: (TextBackgroundColor blue)
					  with: (TextColor white))! !

!EruditeXMLInfoParser class methodsFor: 'as yet unclassified' stamp: 'MM 6/15/2024 22:36:26'!
tag
	^ 'info'! !
