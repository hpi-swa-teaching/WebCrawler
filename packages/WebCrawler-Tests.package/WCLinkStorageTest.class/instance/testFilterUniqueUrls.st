testing
testFilterUniqueUrls

	| urls |
	self object: WCLinkStorage new.
	self object options maintainBloomFilter: false.
	self object applyNewOptions.
	self object links add: 'http://www.google.com'.
	self object links add: 'http://www.github.com'.
	self object links add: 'http://www.nytimes.com'.
	urls := OrderedCollection newFrom: {'http://www.google.com' . 'http://www.github.com' . 'http://www.nytimes.com'}.
	
	self assert: (self object filterUniqueUrls: urls) size equals: 0.
	urls add: 'http://www.wikipedia.org'.
	self assert: (self object filterUniqueUrls: urls) size equals: 1.
	urls add: 'http://www.google.com'.
	self assert: (self object filterUniqueUrls: urls) size equals: 1.