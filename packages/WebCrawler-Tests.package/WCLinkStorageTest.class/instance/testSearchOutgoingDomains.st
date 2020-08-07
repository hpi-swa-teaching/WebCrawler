testing
testSearchOutgoingDomains

	self object links: (OrderedCollection newFrom: {'www.wikipedia.org' . 'www.blank.org' . 'www.whattimeisitrightnow.com' . 'www.google.com'. 'https://de.wikipedia.org/wiki/Berlin'. 'https://de.wikipedia.org/wiki/Stadtstaat'}).
	self object relevantAuthorities: (OrderedCollection newFrom: {'wikipedia.org'. 'hpi.de'}).
	self assert: ((self object searchOutgoingDomains) size = 3).