testing
testSearchLinkSubstring

	self object links: (OrderedCollection newFrom: {'www.wikipedia.org' . 'www.blank.org' . 'www.whattimeisitrightnow.com' . 'www.google.com'. 'www.timemagazine.com'. 'www.nytimes.com'}).
	self assert: ((self object searchLinkSubstring: 'time') size = 3).