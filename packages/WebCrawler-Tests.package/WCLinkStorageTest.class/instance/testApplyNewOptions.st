testing
testApplyNewOptions

	self object options maintainBloomFilter: false.
	self object options maintainSiteGraph: false.
	self object options maintainSiteMap: false.
	self object applyNewOptions.
	self assert: self object bloomFilter equals: nil.
	self assert: self object siteGraph equals: nil.
	self assert: self object siteMap equals: nil.
	
	self object options maintainBloomFilter: true.
	self object options maintainSiteGraph: true.
	self object options maintainSiteMap: true.
	self object applyNewOptions.
	self assert: self object bloomFilter isNil equals: false.
	self assert: self object siteGraph isNil equals: false.
	self assert: self object siteMap isNil equals: false.