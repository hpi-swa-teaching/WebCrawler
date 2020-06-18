initialize-release
applyNewOptions

	self options maintainSiteMap
		ifTrue: [self siteMap isNil ifTrue: [self siteMap: WCSiteMap new]]
		ifFalse: [self siteMap: nil].
	self options maintainSiteGraph
		ifTrue: [self siteGraph isNil ifTrue: [self siteGraph: WCSiteGraph new]]
		ifFalse: [self siteGraph: nil].
	
	self options maintainVisited
		ifTrue: [
			self links: (self links collect: [:link | (link isKindOf: Association) ifTrue: [link] ifFalse: [link -> false]]).
			self visitedCount isNil ifTrue: [self visitedCount: 0]]
		ifFalse: [
			self links: (self links collect: [:link | (link isKindOf: Association) ifTrue: [link key] ifFalse: [link]]).
			self visitedCount: nil]