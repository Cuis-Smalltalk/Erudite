'From Cuis 6.0 [latest update: #5494] on 17 October 2022 at 7:12:09 pm'!
'Description '!
!provides: 'EruditeFilesBookStorer' 1 3!
!requires: 'Erudite' 1 208 nil!
SystemOrganization addCategory: 'EruditeFilesBookStorer'!


!classDefinition: #EruditeFilesBookStorer category: 'EruditeFilesBookStorer'!
EruditeBookStorer subclass: #EruditeFilesBookStorer
	instanceVariableNames: 'storageDirectory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'EruditeFilesBookStorer'!
!classDefinition: 'EruditeFilesBookStorer class' category: 'EruditeFilesBookStorer'!
EruditeFilesBookStorer class
	instanceVariableNames: ''!


!EruditeFilesBookStorer commentStamp: 'MM 10/17/2022 18:40:14' prior: 0!
Stores and loads Erudite books from files on disk.

The main book description lives in an xml file, and the book contents in a separate file per section.

------------------------------------

(EruditeFilesBookStorer on: EruditeManual new)
	storageDirectory: (DirectoryEntry smalltalkImageDirectory / 'EruditeManual');
	store!

!EruditeFilesBookStorer methodsFor: 'accessing' stamp: 'MM 10/17/2022 18:28:47'!
storageDirectory
	"Answer the value of storageDirectory"

	^ storageDirectory! !

!EruditeFilesBookStorer methodsFor: 'accessing' stamp: 'MM 10/17/2022 18:28:47'!
storageDirectory: anObject
	"Set the value of storageDirectory"

	storageDirectory := anObject! !

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 18:29:16'!
store

	self storeBookLayout.! !

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 19:10:49'!
storeBookLayout

	| layoutFile writer doc bookElmt bookTitleElmt sectionsElmt |
	
	layoutFile _ storageDirectory // 'book.xml'.
	doc _ XMLDocument new.
	
	layoutFile writeStreamDo: [:s |
		writer _ XMLWriter on: s.
		writer initialize.
		
		bookElmt := XMLElement named: 'Book'.
		
		bookTitleElmt := XMLElement named: 'Title'.
		bookTitleElmt addContent: (XMLStringNode string: book title). 
		bookElmt addElement: bookTitleElmt.
		
		sectionsElmt _ XMLElement named: 'Sections'.
		book sections do: [:section |
			self storeSection: section on: sectionsElmt].
		bookElmt addElement: sectionsElmt.
		
		doc addElement: bookElmt.
		doc printXMLOn: writer]
		! !

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 19:09:12'!
storeSection: aBookSection on: anXMLElement

	| sectionElmt |
	
	sectionElmt _ XMLElement named: 'Section' attributes: {'name' -> aBookSection title} asDictionary.
	
	aBookSection subsections do: [:subsection |
		self storeSection: subsection on: sectionElmt].
	
	anXMLElement addElement: sectionElmt ! !
