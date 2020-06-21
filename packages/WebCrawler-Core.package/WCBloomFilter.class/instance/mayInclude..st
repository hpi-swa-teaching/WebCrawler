queries
mayInclude: aString

	| hashedValue maybeIncluded |
	hashedValue := self sha hashInteger: aString hash.
	maybeIncluded := true.
	
	self hashFunctions timesRepeat: [
		| hashPart storedValue |
		hashPart := hashedValue bitAnd: (self bitCount - 1).
		hashedValue := hashedValue bitShift: (-1 * (256 / self hashFunctions) asInteger).
		storedValue := self bloomFilterArray at: ((hashPart / 8) floor + 1).
		maybeIncluded := maybeIncluded and: 
			[(storedValue bitAnd: (2 raisedTo: (hashPart \\ 8))) > 0]].
	^ maybeIncluded