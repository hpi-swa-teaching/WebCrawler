autocrawling
breadthFirstSearch: aString

	| url depth newPairs urlPair crawledLinks | 
	self linkQueue add: aString.
	self visited add: aString.
	depth := 1.
	
	(self linkQueue size > 0 and: [depth <= self options maxRecursionDepth]) whileTrue: [
		urlPair := self linkQueue removeFirst.
		url := urlPair key.
		depth := urlPair value.
		
		(self visited includes: url)
			ifFalse: [
				self reportStatus.
				self urlCrawler crawl: url.
				crawledLinks := self selectMostRelevantLinks: self urlCrawler content.
				self options maintainSiteMap
					ifTrue: [self siteMap addLinks: crawledLinks parent: url].
				self visited add: url.
				depth < self options maxRecursionDepth
					ifTrue: [
						newPairs := crawledLinks collect: [:link | link -> (depth + 1)].
						self linkQueue addAll: newPairs]]]