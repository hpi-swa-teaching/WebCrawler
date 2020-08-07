initialize-release
testCorrectLinkExtraction

	| fetcher |
	fetcher := WCDocumentFetcherMock new.
	self object parse: fetcher from: 'http://www.squeak.org'.
	self assert: (self allEntriesOf: self correctLinks equal: self object links)