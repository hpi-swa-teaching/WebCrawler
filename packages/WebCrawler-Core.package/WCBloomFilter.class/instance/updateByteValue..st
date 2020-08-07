storing
updateByteValue: aHashedValue

	| hashIndex hashPart newByteValue |
	hashPart := aHashedValue bitAnd: (self bitCount - 1).
	newByteValue := self getNewHashedValue: hashPart.
	hashIndex := self getHashIndex: hashPart.
	self bloomFilterArray at: hashIndex put: newByteValue