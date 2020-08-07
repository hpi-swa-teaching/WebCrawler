storing
shiftHashedValue: aHashedNumber

	| maxByteValue |
	maxByteValue := 256.
	^ aHashedNumber bitShift: (-1 * (maxByteValue / self hashFunctions) asInteger)