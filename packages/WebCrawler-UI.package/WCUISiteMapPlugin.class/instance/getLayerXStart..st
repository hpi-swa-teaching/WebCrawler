treeUpdate
getLayerXStart: aCollection
	
	| treeCenter |
	treeCenter := self rootVertex position x.
	^ treeCenter - ((aCollection size / 2) *  self intraLayerSpacing)