'From Cuis7.3 [latest update: #7166] on 17 May 2025 at 12:46:28 pm'!
'Description '!
!provides: 'EruditeDocumentBuilder' 1 0!
!requires: 'Erudite' 1 286 nil!
SystemOrganization addCategory: 'EruditeDocumentBuilder'!


!classDefinition: #EruditeDocumentBuilder category: 'EruditeDocumentBuilder'!
Object subclass: #EruditeDocumentBuilder
	instanceVariableNames: 'doc stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeDocumentBuilder'!
!classDefinition: 'EruditeDocumentBuilder class' category: 'EruditeDocumentBuilder'!
EruditeDocumentBuilder class
	instanceVariableNames: ''!


!EruditeDocumentBuilder commentStamp: '<historical>' prior: 0!
| builder |

builder := EruditeDocumentBuilder new.
builder h1: 'This is an example'.
builder p: 'This is an example'.
builder p: [
	builder nextPutAll: 'Second paragraph'; newLine.
	builder inspectIt: 'Smalltalk'].
builder document open!

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:35:19'!
cr
	stream nextPut: Character newLineCharacter ! !

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:40:38'!
doIt: aString

	stream nextPutAll: '[[[';
			nextPutAll: aString;
			nextPutAll: ']]] doIt' ! !

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:36:02'!
document
	^ EruditeDocument contents: stream contents! !

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:37:42'!
h1: aString
	stream nextPutAll: '!!!! '; nextPutAll: aString; newLine; newLine ! !

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:37:49'!
h2: aString
	stream nextPutAll: '!!!!!! '; nextPutAll: aString; newLine; newLine ! !

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:37:53'!
h3: aString
	stream nextPutAll: '!!!!!!!! '; nextPutAll: aString; newLine; newLine ! !

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:37:31'!
initialize

	stream := WriteStream with: ''.! !

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:40:47'!
inspectIt: aString

	stream nextPutAll: '[[[';
			nextPutAll: aString;
			nextPutAll: ']]] inspectIt' ! !

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:35:27'!
newLine
	stream nextPut: Character newLineCharacter ! !

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:41:11'!
nextPutAll: aString

	stream nextPutAll: aString! !

!EruditeDocumentBuilder methodsFor: 'as yet unclassified' stamp: 'MM 5/17/2025 12:42:53'!
p: aStringOrBlock
	
	aStringOrBlock isString ifTrue: [
		stream nextPutAll: aStringOrBlock; newLine; newLine]
		ifFalse: [
			aStringOrBlock valueWithPossibleArgument: self.
			stream newLine; newLine]! !
