graphUpdating
singleVertexRepulsion: aDistancePoint

	| distance coulomb |
	distance := aDistancePoint dotProduct: aDistancePoint.
	distance := distance max: 0.001.
	coulomb := distance reciprocal.
	^ coulomb * aDistancePoint