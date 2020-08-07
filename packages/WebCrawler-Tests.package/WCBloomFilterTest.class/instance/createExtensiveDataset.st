initialize-release
createExtensiveDataset

	| randomString |
	self extensiveDataset: OrderedCollection new.
	1000 timesRepeat: [
		randomString := ''.
		100 atRandom timesRepeat: [randomString := randomString , ((26 atRandom + $a asInteger) asCharacter)].
		self extensiveDataset add: randomString].