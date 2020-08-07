testing
testUniqueUrlFiltering

	| prevUrls |
	self object reset.
	self object options storeUniqueUrls: true.
	self object storage applyNewOptions.
	self object crawl: 'http://www.squeak.org'.
	prevUrls := OrderedCollection newFrom: self object links.
	self object crawl: 'http://www.squeak.org'.
	self assert: (self allEntriesOf: prevUrls equal: self object links)
