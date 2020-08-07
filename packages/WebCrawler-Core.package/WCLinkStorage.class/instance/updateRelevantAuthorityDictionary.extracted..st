storing
updateRelevantAuthorityDictionary: aUrlString extracted: aUrlRepresentationString

	(self relevantAuthorityDictionary includesKey: aUrlRepresentationString)
		ifFalse: [self relevantAuthorityDictionary at: aUrlRepresentationString put: aUrlString]