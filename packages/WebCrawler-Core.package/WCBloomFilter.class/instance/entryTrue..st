queries
entryTrue: aHashedValue

	| hashPart storedValue hashIndex byteSize |
	byteSize := 8.
	hashPart := aHashedValue bitAnd: (self bitCount - 1).
	hashIndex := self getHashIndex: hashPart.
	storedValue := self bloomFilterArray at: hashIndex.
	^ (storedValue bitAnd: (2 raisedTo: (hashPart \\ byteSize))) > 0