initialize-release
testOnlyOutgoingDomains

	self object links: OrderedCollection new.
	self object options includeOutgoingDomains: true.
	self object options includeSubdomains: false.
	self object evaluateLink: 'http://www.google.com'.
	self object evaluateLink: 'http://www.github.com/RealDonaldTrump'.
	self assert: self object links size equals: 1.
	self assert: self object links first equals: 'http://www.github.com/RealDonaldTrump'