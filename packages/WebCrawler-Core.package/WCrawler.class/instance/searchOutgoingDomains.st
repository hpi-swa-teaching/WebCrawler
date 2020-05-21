filtering
searchOutgoingDomains

	^ self searchForRegex: '^((?!',secondLevelDomain,').)*$'