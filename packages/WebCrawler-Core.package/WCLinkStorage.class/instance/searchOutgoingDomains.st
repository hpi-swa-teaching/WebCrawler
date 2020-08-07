searching
searchOutgoingDomains

	^ self searchForRegex: '^((?!',(self relevantAuthorities first),').)*$' in: self links