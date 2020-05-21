initialize-release
initialize

	self urlCrawler: WCURLCrawlOrchestrator new.
	self options: WCOptions new.
	self visited: WCBloomFilter new.
	
	self options storeUniqueUrls: true.
	self urlCrawler options: self options.