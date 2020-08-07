storing
updateSecondLevelDictionary: aUrlString extracted: aUrlRepresentationString

	(self secondLevelDomainDictionary includesKey: aUrlRepresentationString)
		ifFalse: [self secondLevelDomainDictionary at: aUrlRepresentationString put: aUrlString]