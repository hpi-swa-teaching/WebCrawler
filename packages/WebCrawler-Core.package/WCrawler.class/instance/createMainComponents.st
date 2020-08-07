initialize-release
createMainComponents

	self options: WCOptions new;
		fetcher: WCDocumentFetcher new;
		parser: WCDocumentParser new;
		storage: WCLinkStorage new.
	self storage parser: (self parser)