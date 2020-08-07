graphUpdating
computeAttraction: aVertex

	| attraction adjacentVertex |
	attraction := 0.
	aVertex edges do: [:edge |
		adjacentVertex := edge key.
		attraction := attraction + ((adjacentVertex position - aVertex position) * (self weightModificator: edge value))].
	^ attraction * self attractionFactor