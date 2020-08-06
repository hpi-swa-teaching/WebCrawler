initialize-release
createNewPositionHashMap

	^ Matrix 
		rows: self positionHashMapResolution 
		columns: self positionHashMapResolution 
		tabulate: [:x :y | OrderedCollection new]