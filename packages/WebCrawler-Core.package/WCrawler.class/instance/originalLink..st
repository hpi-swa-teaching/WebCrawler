accessing
originalLink: anUrl

	^ self storage relevantAuthorityDictionary at: anUrl ifAbsent: [anUrl]