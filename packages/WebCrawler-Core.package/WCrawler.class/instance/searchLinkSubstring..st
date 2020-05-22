filtering
searchLinkSubstring: aString

	^ self searchForRegex: '.*',(aString),'.*'.
	