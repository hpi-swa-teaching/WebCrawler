initialize-release
initialize

	self options: WCOptions new.
	self fetcher: WCDocumentFetcher new.
	self parser: WCDocumentParser new.
	self storage: WCLinkStorage new.
	self statusUpdateBlockClosures: OrderedCollection new.
	self visitedCount: 0.
	self durationCounter: 0.
	self linkCounter: 0.
	self linkQueue: OrderedCollection new.
	self propagateNewOptions