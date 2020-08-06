positionHashing
hashVertex: aWCUIVertex

	| hashIndex |
	hashIndex := self hashPosition: aWCUIVertex position.
	(self positionHashMap at: hashIndex x at: hashIndex y) add: aWCUIVertex