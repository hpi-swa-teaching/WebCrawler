testing
testDocumentContent

	self object fetch: 'http://www.squeak.org';
	assert: (self object documentContent asString size > 1).
	
	Transcript show: 'All DocumentContent test cases ran without error!';cr