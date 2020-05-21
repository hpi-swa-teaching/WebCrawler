initialize-release
initialize

	self parameter: (Dictionary newFrom: {
		#sourceUrls -> self defaultIncludeSourceUrls .
		#outgoingDomains -> self defaultIncludeOutgoingDomains .
		#subdomains -> self defaultIncludeSubdomains . 
		#siteInternalReferences -> self defaultIncludeSiteInternalReferences . 
		#fetchProtocol -> self defaultFetchProtocol})