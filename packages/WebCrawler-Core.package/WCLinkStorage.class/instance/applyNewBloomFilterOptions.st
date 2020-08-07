initialize-release
applyNewBloomFilterOptions

	| numberOfLinks recursionDepth totalExpectedNumber |
	numberOfLinks := self options defaultExpectedLinksPerSite.
	recursionDepth := self options maxRecursionDepth + 1.
	totalExpectedNumber := numberOfLinks raisedTo: recursionDepth.
	self options maintainBloomFilter
		ifTrue: [
			self bloomFilter isNil ifTrue: [self bloomFilter: (WCBloomFilter new initialize: totalExpectedNumber)]]
		ifFalse: [self bloomFilter: nil]