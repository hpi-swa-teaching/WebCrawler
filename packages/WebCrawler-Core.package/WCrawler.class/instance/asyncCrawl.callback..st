crawling
asyncCrawl: aUrlString callback: aBlockClosure

	self process: [
		self crawl: aUrlString.
		aBlockClosure value] fork