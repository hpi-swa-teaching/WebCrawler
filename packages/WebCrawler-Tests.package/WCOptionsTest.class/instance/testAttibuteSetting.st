initialize-release
testAttibuteSetting

	self object maintainBloomFilter: true.
	self assert: self object maintainBloomFilter equals: true.
	self object maintainBloomFilter: false.
	self assert: self object maintainBloomFilter equals: false