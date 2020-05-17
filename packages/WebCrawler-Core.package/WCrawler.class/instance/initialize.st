initialize-release
initialize

	self options: WCOptions new.
	self urlCrawler: WCURLCrawlOrchestrator new.
	self links: OrderedCollection new.
	
	self urlCrawler options: self options