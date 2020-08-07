initialize-release
testCorrectLinkEvaluationInput

	self object links: OrderedCollection new.
	self object options includeOutgoingDomains: true.
	self object options includeSubdomains: true.
	self object evaluateLink: 'http://www.google.com'.
	self object evaluateLink: 'http://www.github.com/RealDonaldTrump'.
	self assert: self object links size equals: 2.