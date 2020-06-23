initialize-release
testEvaluateLink

	self object links: OrderedCollection new.
	self object evaluateLink: nil.
	self object evaluateLink: ''.
	self assert: self object links size equals: 0.
	self object evaluateLink: 'mail_to:funny@website.gov'.
	self assert: self object links size equals: 0.
	self object sourceUrl: 'google.com'.
	
	self object options includeOutgoingDomains: true.
	self object options includeSubdomains: true.
	self object evaluateLink: 'http://www.google.com'.
	self object evaluateLink: 'http://www.github.com/RealDonaldTrump'.
	self assert: self object links size equals: 2.
	
	self object links: OrderedCollection new.
	self object options includeOutgoingDomains: true.
	self object options includeSubdomains: false.
	self object evaluateLink: 'http://www.google.com'.
	self object evaluateLink: 'http://www.github.com/RealDonaldTrump'.
	self assert: self object links size equals: 1.
	self assert: self object links first equals: 'http://www.github.com/RealDonaldTrump'.
	
	self object links: OrderedCollection new.
	self object options includeOutgoingDomains: false.
	self object options includeSubdomains: true.
	self object evaluateLink: 'http://www.google.com'.
	self object evaluateLink: 'http://www.github.com/RealDonaldTrump'.
	self assert: self object links size equals: 1.
	self assert: self object links first equals: 'http://www.google.com'.
	
	self object links: OrderedCollection new.
	self object options includeOutgoingDomains: false.
	self object options includeSubdomains: false.
	self object evaluateLink: 'http://www.google.com'.
	self object evaluateLink: 'http://www.github.com/RealDonaldTrump'.
	self assert: self object links size equals: 0