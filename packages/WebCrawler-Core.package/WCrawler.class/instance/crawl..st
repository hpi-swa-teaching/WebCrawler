crawl
crawl: url

	self urlCrawler crawl: url.
	self links: self links , self urlCrawler links