testing
testStoreSource

	| urls allEqual |
	self object links: OrderedCollection new.
	self object newLinks: OrderedCollection new.
	
	urls := OrderedCollection newFrom: {'http://www.google.com' . 'http://www.github.com' . 'http://www.nytimes.com'}.
	self object store: urls source: 'http://www.google.com'.
	allEqual := true.
	1 to: self object links size do: [:i |
		allEqual := allEqual & ((self object links at: i) = (self object newLinks at: i))].
	self assert: allEqual equals: true