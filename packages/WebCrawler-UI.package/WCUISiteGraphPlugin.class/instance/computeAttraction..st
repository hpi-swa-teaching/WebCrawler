graphUpdating
computeAttraction: aVertex

	| attraction |
	attraction := 0.
	aVertex edges do: [:edge |
		| adjacentVertex |
		adjacentVertex := self vertices at: edge key."
		attraction := attraction + (adjacentVertex position - aVertex position)"""
		attraction := attraction + (adjacentVertex position - aVertex position) * ((self weightModificator: edge value) max: 1)""].
	^ attraction