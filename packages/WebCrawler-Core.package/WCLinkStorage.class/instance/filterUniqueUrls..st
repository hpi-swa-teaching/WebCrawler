filtering
filterUniqueUrls: anOrderedCollection

	self options maintainBloomFilter
		ifTrue: [
			^ anOrderedCollection reject: [:link | self bloomFilter mayInclude: link]]
		ifFalse: [
			^ anOrderedCollection reject: [:link | self links includes: link]]