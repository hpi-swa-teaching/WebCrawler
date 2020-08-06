graphUpdating
singleVertexRepulsion: aDistancePoint

	| distance coulomb |
	distance := aDistancePoint dotProduct: aDistancePoint.
	distance := distance max: 0.001.
	coulomb := 1 / distance.
	^ coulomb * aDistancePoint