initialize-release
testExtensiveDatasetFailProbability

	| failCounter randomString |
	self object: (WCBloomFilter new initialize: 1000).
	self extensiveDataset do: [:string | self object add: string].
	failCounter := 0.
	1000 timesRepeat: [
		randomString := ''.
		100 atRandom timesRepeat: [randomString := randomString , ((26 atRandom + $a asInteger) asCharacter)].
		(self object mayInclude: randomString) = (self extensiveDataset includes: randomString)
			ifFalse: [failCounter := failCounter + 1]].
	self assert: (failCounter / 1000) < (2 * self object fpPropability)