storing
add: aString

	| hashedValue maxByteValue |
	maxByteValue := 256.
	hashedValue := self sha hashInteger: aString hash.
	self hashFunctions timesRepeat: [
		self updateByteValue: hashedValue.
		hashedValue := self shiftHashedValue: hashedValue]