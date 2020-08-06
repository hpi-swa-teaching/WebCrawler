testing
testSearchSubDomains

	self object links: (OrderedCollection newFrom: {'de.wikipedia.org' . 'www.blank.org' . 'www.whattimeisitrightnow.com' . 'www.google.com'. 'en.wikipedia.org'. 'tv.wikipedia.org'}).
	self object secondLevelDomains: (OrderedCollection newFrom: {'wikipedia.org'. 'hpi.de'}).	
	self assert: ((self object searchSubDomains) size = 3).