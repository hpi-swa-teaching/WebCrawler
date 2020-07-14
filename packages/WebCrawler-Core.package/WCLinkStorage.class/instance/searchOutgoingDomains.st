searching
searchOutgoingDomains

	^ self searchForRegex: '^((?!',(self secondLevelDomains first),').)*$' in: self links