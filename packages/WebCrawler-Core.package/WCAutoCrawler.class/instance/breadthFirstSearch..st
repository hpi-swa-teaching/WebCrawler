autocrawling
breadthFirstSearch: aString

	| url depth newPairs urlPair crawledLinks | 
	self linkQueue: OrderedCollection new.
	self linkQueue add: aString -> 1.
	depth := 1.
	
	[self linkQueue size > 0 and: [depth <= self options maxRecursionDepth]] whileTrue: [
		urlPair := self linkQueue removeFirst.
		url := urlPair key.
		depth := urlPair value.
		
		Transcript show: 'crawling url: ', url;cr; show: 'depth: ', depth;cr.
		self reportStatus.
		self urlCrawler crawl: url.
		
		crawledLinks := self urlCrawler links select: [:link | (self visited includes: link) not].
		self options maintainSiteMap
			ifTrue: [self siteMap addLinks: crawledLinks parent: url].
		
		crawledLinks := self selectMostRelevantLinks: crawledLinks.
		self visited addAll: crawledLinks.
		depth < self options maxRecursionDepth
			ifTrue: [
				newPairs := crawledLinks collect: [:link | link -> (depth + 1)].
				self linkQueue addAll: newPairs]].
	self reportStatus.
	Transcript show: 'Crawling finished successfully!';cr