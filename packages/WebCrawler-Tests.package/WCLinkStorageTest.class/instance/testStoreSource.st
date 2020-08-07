testing
testStoreSource

	| urls |
	self object links: OrderedCollection new.
	self object newLinks: OrderedCollection new.
	urls := OrderedCollection newFrom: {'http://www.google.com' . 'http://www.github.com' . 'http://www.nytimes.com'}.
	self object store: urls source: 'http://www.google.com'.
	self assert: (self allEntriesOf: urls equal: self object newLinks)