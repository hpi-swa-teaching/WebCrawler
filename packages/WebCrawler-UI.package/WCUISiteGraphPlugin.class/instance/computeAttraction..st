graphUpdating
computeAttraction: aVertex

	| attraction |
	attraction := 0.
	aVertex edges do: [:edge |
		| adjacentVertex |
		adjacentVertex := self vertices at: edge key."
		attraction := attraction + (adjacentVertex position - aVertex position)"""
		attraction := attraction + (adjacentVertex position - aVertex position) * ((edge value * self weightFactor) max: 1)""].
	^ attraction