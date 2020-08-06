graphUpdating
rectifyVertexPositions

	| rectifiedPosition rectifyVector |
	rectifiedPosition := 20 asPoint.
	rectifyVector := rectifiedPosition - self minVertexPosition.
	self vertices do: [:vertex | vertex position: vertex position + rectifyVector]