initialize-release
setUp

	self object: WCrawler new.
	self object fetcher: WCDocumentFetcherMock new.
	self correctLinks: self correctLinkExample