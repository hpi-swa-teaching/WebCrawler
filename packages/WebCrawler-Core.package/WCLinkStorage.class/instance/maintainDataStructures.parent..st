storing
maintainDataStructures: aCollection parent: aParentUrlString

	self options maintainSiteMap
		ifTrue: [self updateSiteMap: aCollection parent: aParentUrlString].
	self options maintainSiteGraph
		ifTrue: [self updateSiteGraph: aCollection parent: aParentUrlString].
	self options maintainBloomFilter
		ifTrue: [self bloomFilter addLinks: aCollection].