initialize-release
testFailPropability

	| stringsIncluded failCounter |
	self object: (WCBloomFilter new initialize: 100).
	stringsIncluded := OrderedCollection new.
	failCounter := 0.
	
	100 timesRepeat: [
		| randomString |
		randomString := ''.
		100 atRandom timesRepeat: [randomString := randomString , ((26 atRandom + $a asInteger) asCharacter)].
		self object add: randomString.
		stringsIncluded add: randomString].
	1 to: 100 do: [:i |
		self assert: (self object mayInclude: (stringsIncluded at: i)) equals: true].
	100 timesRepeat: [
		| randomString |
		randomString := ''.
		100 atRandom timesRepeat: [randomString := randomString , ((26 atRandom + $a asInteger) asCharacter)].
		(self object mayInclude: randomString) = (stringsIncluded includes: randomString)
			ifFalse: [failCounter := failCounter + 1]].
	self assert: (failCounter / 100) < (2 * self object fpPropability) equals: true