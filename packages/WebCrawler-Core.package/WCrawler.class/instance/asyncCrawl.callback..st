crawl
asyncCrawl: aString callback: aBlockClosure

	self process: [
		self crawl: aString.
		aBlockClosure value
		] fork.