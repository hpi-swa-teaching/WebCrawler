storing
add: aString

	| hashedValue |
	hashedValue := self sha hashInteger: aString hash.
	self hashFunctions timesRepeat: [
		| hashPart newValue |
		hashPart := hashedValue bitAnd: (self bitCount - 1).
		hashedValue := hashedValue bitShift: (-1 * (256 / self hashFunctions)) asInteger.
		newValue := self bloomFilterArray at: ((hashPart / 8) floor + 1).
		newValue := newValue bitOr: (2 raisedTo: (hashPart \\ 8)).
		self bloomFilterArray at: ((hashPart / 8) floor + 1) put: newValue]