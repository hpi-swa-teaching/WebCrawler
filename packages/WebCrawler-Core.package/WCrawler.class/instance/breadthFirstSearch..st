autocrawling
breadthFirstSearch: aString

	| url depth newPairs urlPair crawledLinks | 
	self linkQueue: OrderedCollection new.
	self options storeUniqueUrls: true.
	self options maintainBloomFilter: true.
	self storage applyNewOptions.
	self linkQueue add: aString -> 1.
	depth := 1.
	
	[self linkQueue size > 0 and: [depth <= self options maxRecursionDepth]] whileTrue: [
		urlPair := self linkQueue removeFirst.
		url := urlPair key.
		depth := urlPair value.
		
		Transcript show: 'crawling url: ', url;cr; show: 'depth: ', depth;cr.
		self reportStatus.
		self crawl: url.
		
		self visitedCount: (self visitedCount + self storage newLinks size).
		
		crawledLinks := self selectMostRelevantLinks: self storage newLinks.
		depth < self options maxRecursionDepth
			ifTrue: [
				newPairs := crawledLinks collect: [:link | link -> (depth + 1)].
				self linkQueue addAll: newPairs]].
	self reportStatus.
	Transcript show: 'Crawling finished successfully!';cr.
	Transcript show: 'AVERAGE STORE DURATION PER LINK: ', (self durationCounter / self linkCounter) asFloat;cr.
	Transcript show: 'TOTAL STORE DURATION: ', self durationCounter;cr.
	Transcript show: 'TOTAL LINK COUNT: ', self linkCounter;cr.
	