initialize-release
initialize

	self parameter: (Dictionary newFrom: {
		#sourceUrls -> self defaultIncludeSourceUrls .
		#outgoingDomains -> self defaultIncludeOutgoingDomains .
		#subdomains -> self defaultIncludeSubdomains . 
		#siteInternalReferences -> self defaultIncludeSiteInternalReferences . 
		#fetchProtocol -> self defaultFetchProtocol . 
		#maxRecursionDepth -> self defaultMaxRecursionDepth . 
		#maxLinksToExtract -> self defaultMaxLinksToExtract . 
		#uniqueUrls -> self defaultUniqueUrls .
		#maintainSiteMap -> self defaultMaintainSiteMap})