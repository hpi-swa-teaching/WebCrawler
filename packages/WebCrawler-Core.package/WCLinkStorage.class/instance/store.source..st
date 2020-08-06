storing
store: anOrderedCollection source: aParentUrlString

	| processedLinks parentUrl |
	parentUrl := self parser extractSecondLevelDomain: aParentUrlString.
	processedLinks := self processLinks: anOrderedCollection parent: aParentUrlString.
	(self secondLevelDomainDictionary includesKey: parentUrl)
					ifFalse: [self secondLevelDomainDictionary at: parentUrl put: aParentUrlString].
	
	self options maintainSiteMap
		ifTrue: [
			| subdomains |
			subdomains := self searchSubDomainsFor: aParentUrlString in: processedLinks.
			subdomains := self filterUniqueUrls: subdomains. 
			self siteMap addLinks: subdomains parent: aParentUrlString].
	self options maintainSiteGraph
		ifTrue: [
			| outgoingDomains |
			outgoingDomains := self searchOutgoingDomainsFor: aParentUrlString in: processedLinks.
			outgoingDomains := outgoingDomains collect: [:domain | 
				| outgoingSecondLevel |
				outgoingSecondLevel := self parser extractSecondLevelDomain: domain.
				(self secondLevelDomainDictionary includesKey: outgoingSecondLevel)
					ifFalse: [self secondLevelDomainDictionary at: outgoingSecondLevel put: domain].
				outgoingSecondLevel].
			self siteGraph addLinks: outgoingDomains parent: parentUrl].
	self options maintainBloomFilter
		ifTrue: [self bloomFilter addLinks: processedLinks].
	
	self newLinks: processedLinks.
	
	self updateSecondLevelDomains: processedLinks.
	self links: self links, processedLinks