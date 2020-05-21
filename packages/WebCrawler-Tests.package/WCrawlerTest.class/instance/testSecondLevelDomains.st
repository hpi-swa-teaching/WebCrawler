testing
testSecondLevelDomains
	
	self object crawl: 'https://de.wikipedia.org/wiki/Thomas_Thabane'.
	self assert: (self object secondLevelDomain = 'wikipedia.org').
	self object crawl:'http://www.google.com/search?q=hello'.
	self assert: (self object secondLevelDomain = 'google.com').
	self object crawl: 'http://www.squeak.org'.
	self assert: (self object secondLevelDomain = 'squeak.org').
	
	Transcript show: 'All SecondLevenDomains test cases ran without error!';cr