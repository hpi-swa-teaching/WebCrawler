testing
testAddLinksToQueue

	| mostRelevant |
	mostRelevant := self object selectMostRelevantLinks: self correctLinks.
	mostRelevant := mostRelevant collect: [:link | link -> 3].
	self object options maxRecursionDepth: 3.
	self object reset.
	self object linkQueue: OrderedCollection new.
	self object crawl: 'http://www.squeak.org'.
	self object addNewLinksToQueue: 4.
	self assert: self object linkQueue size equals: 0.
	self object addNewLinksToQueue: 2.
	self assert: (self allEntriesOf: mostRelevant equal: self object linkQueue)