initialize-release
initialize

	self options: WCOptions new.
	self fetcher: WCDocumentFetcher new.
	self parser: WCDocumentParser new.
	self storage: WCLinkStorage new.
	
	self propagateNewOptions