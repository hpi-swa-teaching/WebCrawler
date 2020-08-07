initialize-release
testOutgoingAndSubdomainsBlocked
	
	self object links: OrderedCollection new.
	self object options includeOutgoingDomains: false.
	self object options includeSubdomains: false.
	self object evaluateLink: 'http://www.google.com'.
	self object evaluateLink: 'http://www.github.com/RealDonaldTrump'.
	self assert: self object links size equals: 0