testing
testFetchedHTTPResponse

	self object fetch: 'http://www.squeak.org';
	assert: (self object documentContent asString startsWith: 'HTTP/1.1 200 OK').
	