searching
searchLinkSubstring: aString

	^ self searchForRegex: '.*',(aString),'.*'
	