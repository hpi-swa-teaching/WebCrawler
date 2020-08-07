storing
add: aString

	| hashedValue |
	hashedValue := self sha hashInteger: aString hash.
	self hashFunctions timesRepeat: [
		self updateByteValue: hashedValue.
		hashedValue := self shiftHashedValue: hashedValue]