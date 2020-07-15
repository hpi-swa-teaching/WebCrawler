graphUpdating
showPositionHashMap

	1 to: self positionHashMap columnCount do: [:i |
		1 to: self positionHashMap rowCount do: [:j |
			Transcript show: ' ', (self positionHashMap at: j at: i) size].
		Transcript cr.]