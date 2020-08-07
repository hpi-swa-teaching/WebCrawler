storing
getHashIndex: aHashedNumber

	| byteSize |
	byteSize := 8.
	^ ((aHashedNumber / byteSize) floor + 1)