testing
testSelectMostRelevantLinks

	| urls relevant extracted |
	self object options maxLinksToExtract: 3.
	urls := OrderedCollection newFrom: {'1' . '2' . '3' . '4' . '6' . '7' . '8' . '9' . '10' . '11' . '12' . '13' . '14' . '15' . '16'}.
	relevant := OrderedCollection newFrom: {'13' . '10' . '7'}.
	extracted := self object selectMostRelevantLinks: urls.
	self assert: (self allEntriesOf: relevant equal: extracted)