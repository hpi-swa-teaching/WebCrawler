filtering
processLinks: anOrderedCollection parent: aParentUrlString

	| processedLinks |
	processedLinks := anOrderedCollection.
	
	self options substituteRelativeUrls
		ifTrue: [
			processedLinks := self substituteRelativeUrls: processedLinks parent: aParentUrlString].
	
	self options beautifyLinks
		ifTrue: [
			processedLinks := self beautifyLinks: processedLinks].
		
	self options storeUniqueUrls
		ifTrue: [
			processedLinks := self filterUniqueUrls: processedLinks].
		
	^ processedLinks