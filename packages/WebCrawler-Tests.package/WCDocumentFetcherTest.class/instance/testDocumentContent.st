testing
testDocumentContent

	self object fetch: 'http://www.squeak.org';
	assert: (self object documentContent asString size > 1).
	