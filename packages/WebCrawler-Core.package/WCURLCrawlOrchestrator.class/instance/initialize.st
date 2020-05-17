initialize-release
initialize

	self fetcher: WCDocumentFetcher new.
	self parser: WCDocumentParser new.
	self content: WCDocumentContentManager new.
	
	self fetcher options: self options.
	self parser options: self options.
	self content options: self options