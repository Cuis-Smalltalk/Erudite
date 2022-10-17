'From Cuis 6.0 [latest update: #5494] on 17 October 2022 at 8:20:48 pm'!
'Description '!
!provides: 'EruditeFilesBookStorer' 1 4!
!requires: 'Erudite' 1 208 nil!
!requires: 'YAXO' 1 20 nil!
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

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 20:13:24'!
fileNameForSection: aBookSection

	^ aBookSection parent ifNotNil: [:parent |
		(self fileNameForSection: parent), '.', (self titleFileName: aBookSection title)]
		ifNil: [self titleFileName: aBookSection title]! !

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 20:15:12'!
fileNameForSectionWithExt: aBookSection

	^ (self fileNameForSection: aBookSection), '.erd'! !

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 20:04:27'!
store

	self storeBookLayout.
	self storeBookContents.! !

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 20:05:12'!
storeBookContents

	book sections do: [:section |
		self storeSectionOnFile: section].! !

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 20:19:02'!
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
		doc printXMLOn: writer]! !

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 20:19:59'!
storeSection: aBookSection on: anXMLElement

	| sectionElmt |
	
	sectionElmt _ XMLElement 
				named: 'Section' 
				attributes: {
					'title' -> aBookSection title.
					'path' -> (self fileNameForSectionWithExt: aBookSection)
					} asDictionary.
	
	aBookSection subsections do: [:subsection |
		self storeSection: subsection on: sectionElmt].
	
	anXMLElement addElement: sectionElmt ! !

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 20:17:21'!
storeSectionOnFile: aBookSection

	|filename filepath|
	
	filename _ self fileNameForSectionWithExt: aBookSection.
	
	filepath _ self storageDirectory // filename.
	
	filepath fileContents: aBookSection document contents.
	
	aBookSection subsections do: [:subsection | self storeSectionOnFile: subsection] ! !

!EruditeFilesBookStorer methodsFor: 'as yet unclassified' stamp: 'MM 10/17/2022 20:13:40'!
titleFileName: aString

	^ aString asCamelCase select: [:char | char isAlphaNumeric ]! !
