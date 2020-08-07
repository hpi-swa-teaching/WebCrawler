queries
mayInclude: aString

	| hashedValue maybeIncluded |
	hashedValue := self sha hashInteger: aString hash.
	maybeIncluded := true.
	self hashFunctions timesRepeat: [
		maybeIncluded := maybeIncluded and: [self entryTrue: hashedValue].
		hashedValue := self shiftHashedValue: hashedValue].
	^ maybeIncluded