crawling
scanRobotEntries: aRobotContentString

	| robotLines foundMatchingUserAgent |
	robotLines := aRobotContentString findTokens: String cr.
	foundMatchingUserAgent := false.
	robotLines do: [:line |
		line = 'User-agent: *'
			ifTrue: [foundMatchingUserAgent := true]
			ifFalse: [
				(foundMatchingUserAgent and: [line = 'Disallow: /'])
					ifTrue: [^ false].
				(foundMatchingUserAgent and: [line matchesRegex: '^User-agent.*'])
					ifTrue: [foundMatchingUserAgent := false]]].
	^ true