initialize-release
testUrlPrefixSuffixRemoval

	self assert: (self object removeUrlPrefix: 'http://www.google.com/sports/weather.htm') equals: 'www.google.com/sports/weather.htm'.
	self assert: (self object removeUrlPrefix: 'www.google.com/sports/weather.htm') equals: 'www.google.com/sports/weather.htm'.
	
	self assert: (self object removeUrlSuffix: 'www.google.com/sports/weather.htm') equals: 'www.google.com'.
	self assert: (self object removeUrlSuffix: 'www.google.com') equals: 'www.google.com'.