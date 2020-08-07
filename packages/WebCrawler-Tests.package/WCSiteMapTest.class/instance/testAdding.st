initialize-release
testAdding

	| urls |
	urls := OrderedCollection newFrom: {'http://www.google.com' . 'http://www.google.com' . 'hello' . 'hello' . 'hello' . 'hello' . 'http://www.google.com/the_guy/right/behind_you.html'}.
	self object addLinks: urls parent: 'nytimes.com'.
	
	self assert: self object siteMap size equals: 1.
	self assert: self object siteMap keys first equals: 'nytimes.com'.
	self assert: (self allEntriesOf: (self object siteMap at: 'nytimes.com') equal: urls)