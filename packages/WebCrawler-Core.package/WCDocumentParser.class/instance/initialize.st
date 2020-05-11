initialize-release
initialize

	self configuration: (Dictionary newFrom: {
		#metaUrls -> self defaultIncludeMetaUrls .
		#outgoingDomains -> self defaultIncludeOutgoingDomains .
		#subdomains -> self defaultIncludeSubdomains . 
		#siteInternalReferences -> self defaultIncludeSiteInternalReferences}).
	self links: OrderedCollection new