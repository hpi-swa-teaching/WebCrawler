initialize-release
testOnlySubdomains

	self object links: OrderedCollection new.
	self object options includeOutgoingDomains: false.
	self object options includeSubdomains: true.
	self object evaluateLink: 'http://www.google.com'.
	self object evaluateLink: 'http://www.github.com/RealDonaldTrump'.
	self assert: self object links size equals: 1.
	self assert: self object links first equals: 'http://www.google.com'