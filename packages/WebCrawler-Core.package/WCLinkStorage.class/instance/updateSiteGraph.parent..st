storing
updateSiteGraph: aCollection parent: aParentUrlString

	| outgoingDomains parentAuthority |
	outgoingDomains := self searchOutgoingDomainsFor: aParentUrlString in: aCollection.
	outgoingDomains := self extractOutgoingAuthorities: outgoingDomains.
	parentAuthority := self parser extractRelevantAuthority: aParentUrlString.
	self siteGraph addLinks: outgoingDomains parent: parentAuthority