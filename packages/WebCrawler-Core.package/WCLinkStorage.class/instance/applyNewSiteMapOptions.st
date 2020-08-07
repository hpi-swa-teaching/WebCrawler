initialize-release
applyNewSiteMapOptions

	self options maintainSiteMap
		ifTrue: [self siteMap isNil ifTrue: [self siteMap: WCSiteMap new]]
		ifFalse: [self siteMap: nil]