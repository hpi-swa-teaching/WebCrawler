crawl
crawl: url

	self urlCrawler crawl: url.
	self secondLevelDomain: url.
	self links: self links , self urlCrawler links