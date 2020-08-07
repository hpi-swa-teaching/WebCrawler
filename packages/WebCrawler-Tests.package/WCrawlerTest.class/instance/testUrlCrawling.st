testing
testUrlCrawling

	self assert: self object links size equals: 0.
	self object crawl: 'http://www.squeak.org'.
	self assert: (self allEntriesOf: self object links equal: self correctLinks).