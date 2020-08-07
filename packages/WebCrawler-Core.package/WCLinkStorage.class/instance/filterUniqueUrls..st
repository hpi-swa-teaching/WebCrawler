filtering
filterUniqueUrls: anOrderedCollection

	| firstFiltered |
	firstFiltered := anOrderedCollection.
	self options maintainBloomFilter
		ifTrue: [
			^ firstFiltered reject: [:link |
				self bloomFilter mayInclude: link]]
		ifFalse: [
			^ firstFiltered reject: [:link | self links includes: link]]