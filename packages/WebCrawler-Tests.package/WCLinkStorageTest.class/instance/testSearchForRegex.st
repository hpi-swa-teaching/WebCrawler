testing
testSearchForRegex

	self object links: (OrderedCollection newFrom: {'www.wikipedia.org' . 'www.blank.org' . 'www.whattimeisitrightnow.com' . 'www.google.com'}).
	self assert: ((self object searchForRegex: '^(www.)w.*') size = 2).