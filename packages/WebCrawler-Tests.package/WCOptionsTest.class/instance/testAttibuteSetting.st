initialize-release
testAttibuteSetting

	self object beautifyLinks: false.
	self assert: self object beautifyLinks equals: false.
	self object fetchProtocol: 'https'.
	self assert: self object fetchProtocol equals: 'https'.
	self object includeOutgoingDomains: true.
	self assert: self object includeOutgoingDomains equals: true.
	self object includeSiteInternalReferences: true.
	self assert: self object includeSiteInternalReferences equals: true.
	self object includeSourceUrls: true.
	self assert: self object includeSourceUrls equals: true.
	self object includeSubdomains: true.
	self assert: self object includeSubdomains equals: true.
	self object maintainBloomFilter: false.
	self assert: self object maintainBloomFilter equals: false.
	self object maintainSiteGraph: true.
	self assert: self object maintainSiteGraph equals: true.
	self object maintainSiteMap: true.
	self assert: self object maintainSiteMap equals: true.
	self object storeUniqueUrls: true.
	self assert: self object storeUniqueUrls equals: true.
	self object substituteRelativeUrls: true.
	self assert: self object substituteRelativeUrls equals: true.
	self object maxRecursionDepth: 42.
	self assert: self object maxRecursionDepth equals: 42.
	self object maxLinksToExtract: 0.
	self assert: self object maxLinksToExtract equals: 0.