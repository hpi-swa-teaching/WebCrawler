testing
testUrlCrawling

	| urlSize |
	
	self assert: self object links size equals: 0.
	self object crawl: 'http://www.squeak.org'.
	self assert: (self object links size > 1).

	urlSize := self object links size.
	self object crawl: 'http://www.squeak.org'.
	
	self assert: (self object links size = urlSize).
