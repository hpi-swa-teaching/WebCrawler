testing
testUrlCrawling

	| urlSize |
	
	self assert: self object links size equals: 0.
	self object crawl: 'http://www.squeak.org'.
	self assert: (self object links size > 1).
	
	Transcript show: (self object links size); cr.
	
	urlSize := self object links size.
	self object crawl: 'http://www.squeak.org'.
	
	Transcript show: (self object links size).
	self assert: (self object links size = (2 * urlSize)).
	
	Transcript show: 'All URLCrawling test cases ran without error!';cr