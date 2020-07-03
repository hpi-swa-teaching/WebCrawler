graphUpdating
hashVertex: aWCUIVertex

	| hashIndex |
	hashIndex := self hashPosition: aWCUIVertex position.
	hashIndex := self clamp: hashIndex min: 1 asPoint max: self positionHashMap columnCount asPoint.
	(self positionHashMap at: hashIndex x at: hashIndex y) add: aWCUIVertex