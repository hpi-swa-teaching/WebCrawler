initialize-release
applyNewSiteGraphOptions

	self options maintainSiteGraph
		ifTrue: [self siteGraph isNil ifTrue: [self siteGraph: WCSiteGraph new]]
		ifFalse: [self siteGraph: nil]