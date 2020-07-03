initialize-release
testAttibuteSetting

	self object maintainBloomFilter: true.
	self assert: self object maintainBloomFilter equals: true.
	self object maintainBloomFilter: false.
	self assert: self object maintainBloomFilter equals: false.
	self object maxRecursionDepth: 42.
	self assert: self object maintainBloomFilter equals: 42.
	self object maxLinksToExtract: 0.
	self assert: self object maintainBloomFilter equals: 0.