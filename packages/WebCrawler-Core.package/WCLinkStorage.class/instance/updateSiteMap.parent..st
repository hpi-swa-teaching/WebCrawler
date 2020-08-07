storing
updateSiteMap: aCollection parent: aParentUrlString

	| subdomains |
	subdomains := self searchSubDomainsFor: aParentUrlString in: aCollection.
	subdomains := self filterUniqueUrls: subdomains. 
	self siteMap addLinks: subdomains parent: aParentUrlString