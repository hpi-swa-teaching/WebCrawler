initialize-release
testExtensiveDataSet

	self object: (WCBloomFilter new initialize: 1000).
	self extensiveDataset do: [:string | self object add: string].
	self assert: (self extensiveDataset inject: true into: [:prev :link | prev and: [self object mayInclude: link]])