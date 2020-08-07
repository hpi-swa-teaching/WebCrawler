testing
testRobotTXTEvaluation

	| robots |
	robots := 'User-agent: *', String cr, 'Disallow: /',String cr.
	self assert: (self object scanRobotEntries: robots) equals: false.
	robots := 'User-agent: *', String cr, 'Disallow: /test/',String cr.
	self assert: (self object scanRobotEntries: robots).
	robots := 'User-agent: google', String cr, 'Disallow: /',String cr.
	self assert: (self object scanRobotEntries: robots).
	robots := 'User-agent: google', String cr, 'Disallow: /', String cr, 'Disallow: hokuspokus', String cr, 'User-agent: *', String cr, 'Disallow: /',String cr.
	self assert: (self object scanRobotEntries: robots) equals: false