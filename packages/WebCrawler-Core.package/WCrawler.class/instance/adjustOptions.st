autocrawling
adjustOptions
	
	self linkQueue: OrderedCollection new.
	self options storeUniqueUrls: true.
	self options maintainBloomFilter: true.
	self storage applyNewOptions