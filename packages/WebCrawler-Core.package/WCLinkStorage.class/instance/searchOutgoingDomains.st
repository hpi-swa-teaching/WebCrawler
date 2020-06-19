filtering
searchOutgoingDomains

	^ self searchForRegex: '^((?!',(self secondLevelDomains first),').)*$'