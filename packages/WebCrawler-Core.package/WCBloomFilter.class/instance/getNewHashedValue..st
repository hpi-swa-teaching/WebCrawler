storing
getNewHashedValue: aHashedNumber

	| byteSize newValue |
	byteSize := 8.
	newValue := self bloomFilterArray at: ((aHashedNumber / byteSize) floor + 1).
	^ newValue bitOr: (2 raisedTo: (aHashedNumber \\ byteSize))
	
