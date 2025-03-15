'From Cuis7.3 [latest update: #7070] on 15 March 2025 at 10:28:14 am'!
'Description '!
!provides: 'EruditeXMLBookUML' 1 0!
!requires: 'EruditeXMLBook' 1 23 nil!
!requires: 'EruditeUML' 1 7 nil!
SystemOrganization addCategory: #EruditeXMLBookUML!


!classDefinition: #EruditeXMLUMLParser category: #EruditeXMLBookUML!
EruditeXMLElementParser subclass: #EruditeXMLUMLParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeXMLBookUML'!
!classDefinition: 'EruditeXMLUMLParser class' category: #EruditeXMLBookUML!
EruditeXMLUMLParser class
	instanceVariableNames: ''!


!EruditeXMLUMLParser class methodsFor: 'as yet unclassified' stamp: 'MM 3/15/2025 10:27:32'!
parse: anXMLElement using: aParser

	^ EruditeUMLNode with: (String streamContents: [:s |
								s nextPutAll: '@startuml'; newLine;
								   nextPutAll: anXMLElement contentString; newLine;
								   nextPutAll: '@enduml'; newLine])! !

!EruditeXMLUMLParser class methodsFor: 'as yet unclassified' stamp: 'MM 3/15/2025 10:24:27'!
tag
	^ 'uml'! !
