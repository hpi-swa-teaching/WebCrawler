autocrawling
start: aString

	self options maintainSiteMap
		ifTrue: [self siteMap: WCSiteMap new.].
		
	self process: [
		self breadthFirstSearch: aString
		] fork.