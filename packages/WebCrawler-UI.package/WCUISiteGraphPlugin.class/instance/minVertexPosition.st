graphUpdating
minVertexPosition

	| largestValue |
	largestValue := 1000.
	^ self vertices inject: largestValue asPoint into: [:minimum :vertex | minimum min: vertex position]