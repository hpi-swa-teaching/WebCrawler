accessing
originalLink: anUrl

	^ self storage secondLevelDomainDictionary at: anUrl ifAbsent: [anUrl]