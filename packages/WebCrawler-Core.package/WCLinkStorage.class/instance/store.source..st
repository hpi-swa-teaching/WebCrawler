storing
store: anOrderedCollection source: aParentUrlString

	| processedLinks |
	processedLinks := self processLinks: anOrderedCollection parent: aParentUrlString.
	
	self options maintainSiteMap
		ifTrue: [self siteMap addLinks: processedLinks parent: aParentUrlString].
	self options maintainSiteGraph
		ifTrue: [self siteGraph addLinks: processedLinks parent: aParentUrlString].
	self options maintainBloomFilter
		ifTrue: [self bloomFilter addLinks: processedLinks].
	
	self newLinks: processedLinks.
	
	self updateSecondLevelDomains: processedLinks.
	self links: self links, processedLinks