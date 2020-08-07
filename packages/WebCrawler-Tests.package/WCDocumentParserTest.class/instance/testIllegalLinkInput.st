initialize-release
testIllegalLinkInput

	self object links: OrderedCollection new.
	self object evaluateLink: nil.
	self object evaluateLink: ''.
	self assert: self object links size equals: 0.
	self object evaluateLink: 'mail_to:funny@website.gov'.
	self assert: self object links size equals: 0