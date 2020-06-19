autocrawling
breadthFirstSearch: aString

	| url depth newPairs urlPair crawledLinks | 
	self linkQueue: OrderedCollection new.
	self options storeUniqueUrls: true.
	self options maintainVisited: true.
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
		
		crawledLinks := self storage newLinks reject: [:link | self storage isVisited: link].
		crawledLinks := self selectMostRelevantLinks: crawledLinks.
		self storage setVisited: crawledLinks.
		depth < self options maxRecursionDepth
			ifTrue: [
				newPairs := crawledLinks collect: [:link | link -> (depth + 1)].
				self linkQueue addAll: newPairs]].
	self reportStatus.
	Transcript show: 'Crawling finished successfully!';cr