initialize-release
initialize

	self fetcher: WCDocumentFetcher new.
	self parser: WCDocumentParser new.
	self content: WCDocumentContentManager new.
	
	self options: WCOptions new.
