storing
store: anOrderedCollection source: aParentUrlString

	| processedLinks |
	processedLinks := self processLinks: anOrderedCollection parent: aParentUrlString.
	
	self options maintainSiteMap
		ifTrue: [
			self siteMap addLinks: processedLinks parent: aParentUrlString].
	self options maintainSiteGraph
		ifTrue: [
			self siteGraph addLinks: processedLinks parent: aParentUrlString].
	
	self newLinks: processedLinks.
	
	self updateSecondLevelDomains: processedLinks.
	self options maintainVisited
		ifTrue: [
			processedLinks := processedLinks collect: [:link | link -> false]].
	self links: self links, processedLinks