testing
testOutgoingDomains
	
	| domain outgoingLinks count |
	
	self object crawl: 'https://de.wikipedia.org/wiki/Thomas_Thabane'.
	domain := self object secondLevelDomain.
	outgoingLinks := self object searchOutgoingDomains.
	count := 0.
	
	outgoingLinks do: [:link | (link includesSubstring: domain) ifTrue: [count = count + 1]].
	
	self assert: (count = 0).
	
	Transcript show: 'All OutgoingDomains test cases ran without error!';cr