testing
testAdding

	| urls correct uniqueUrls |
	urls := OrderedCollection newFrom: {'http://www.google.com' . 'http://www.google.com' . 'hello' . 'hello' . 'hello' . 'hello' . 'http://www.google.com/the_guy/right/behind_you.html'}.
	uniqueUrls := OrderedCollection newFrom: {'nytimes.com' . 'http://www.google.com' . 'hello' . 'http://www.google.com/the_guy/right/behind_you.html'}.
	correct := OrderedCollection newFrom: {'nytimes.com'->'http://www.google.com'->2 . 'nytimes.com'->'hello'->4 . 'nytimes.com'-> 'http://www.google.com/the_guy/right/behind_you.html'->1}.
	self object addLinks: urls parent: 'nytimes.com'.
	
	self assert: (self allEntriesOf: correct equal: self object domainConnections).
	self assert: (self allEntriesOf: uniqueUrls equal: self object domains)