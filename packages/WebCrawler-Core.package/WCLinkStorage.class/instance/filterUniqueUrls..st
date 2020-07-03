filtering
filterUniqueUrls: anOrderedCollection

	| firstFiltered |
	"firstFiltered := anOrderedCollection asSet.
	firstFiltered := firstFiltered asOrderedCollection."
	firstFiltered := anOrderedCollection.
	self options maintainBloomFilter
		ifTrue: [
			^ firstFiltered reject: [:link | 
				"(self bloomFilter mayInclude: link) = (self links includes: link)
					ifFalse: [Transcript show: 'UNGLEICHHEIT UNGLEICHHEIT UNGLEICHHEIT!!!!!!';cr.
						Transcript show: '    link: ',link,' bloom: ', (self bloomFilter mayInclude: link), ' links: ', (self links includes: link);cr.
						self halt]."
				self bloomFilter mayInclude: link]]
		ifFalse: [
			^ firstFiltered reject: [:link | self links includes: link]]