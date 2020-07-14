storing
store: anOrderedCollection source: aParentUrlString

	| processedLinks parentUrl |
	parentUrl := self extractSecondLevelDomain: aParentUrlString.
	processedLinks := self processLinks: anOrderedCollection parent: aParentUrlString.
	
	self options maintainSiteMap
		ifTrue: [
			| subdomains |
			subdomains := self searchSubDomainsFor: aParentUrlString in: processedLinks.
			self siteMap addLinks: subdomains parent: parentUrl].
	self options maintainSiteGraph
		ifTrue: [
			| outgoingDomains |
			outgoingDomains := self searchOutgoingDomainsFor: aParentUrlString in: processedLinks.
			outgoingDomains := outgoingDomains collect: [:domain | self extractSecondLevelDomain: domain].
			self siteGraph addLinks: outgoingDomains parent: parentUrl].
	self options maintainBloomFilter
		ifTrue: [self bloomFilter addLinks: processedLinks].
	
	self newLinks: processedLinks.
	
	self updateSecondLevelDomains: processedLinks.
	self links: self links, processedLinks