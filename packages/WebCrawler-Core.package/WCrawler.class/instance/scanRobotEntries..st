crawling
scanRobotEntries: aRobotContentString

	| disallowingRule matchingUA nextMatchingUA |
	matchingUA := aRobotContentString 
		findString: ('User-agent: *', String cr).
	nextMatchingUA := aRobotContentString 
		findString: 'User-agent' startingAt: (matchingUA + 1).
	disallowingRule := aRobotContentString 
		findString: ('Disallow: /', String cr) startingAt: (matchingUA + 1).
	^ matchingUA = 0 or: [(disallowingRule < nextMatchingUA) not]