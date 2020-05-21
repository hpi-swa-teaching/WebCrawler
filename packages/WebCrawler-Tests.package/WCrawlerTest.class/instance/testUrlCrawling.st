testing
testUrlCrawling

	| urlSize |
	self object links: OrderedCollection new.
	self assert: self object links size equals: 0.
	self object crawl: 'http://www.squeak.org'.
	self assert: (self object links size > 1).
	
	urlSize := self object links size.
	self object crawl: 'http://www.squeak.org'.
	self assert: (self object links size = (2 * urlSize)).
	
	Transcript show: 'All URLCrawling test cases ran without error!';cr