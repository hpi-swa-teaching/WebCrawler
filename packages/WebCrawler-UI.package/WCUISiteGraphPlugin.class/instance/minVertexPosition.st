graphUpdating
minVertexPosition

	^ self vertices inject: 1000 asPoint into: [:minimum :vertex | minimum min: vertex position]