graphUpdating
computeRepulsion: aVertex

	| repulsion dividend i collusionCount collisions coulomb distance |
	repulsion := 0@0.
	dividend := self extent / self positionHashMapResolution.
	collisions := Set new.
	i := aVertex position x - aVertex repulsionRadius.
	collusionCount := 0.
	[i <= (aVertex position x + aVertex repulsionRadius)]
		whileTrue: [
			| j |
			j := aVertex position y - aVertex repulsionRadius.
			[j <= (aVertex position y + aVertex repulsionRadius)]
				whileTrue: [
					| hashedPosition currentPosition |
					currentPosition := i@j.
					hashedPosition := self hashPosition: currentPosition.					
					(self positionHashMap at: hashedPosition x at: hashedPosition y) do: [:vertex |
						vertex index ~= aVertex index ifTrue: [collisions add: vertex]].
					j := j + dividend y].
			i := i + dividend x].
	"self halt: 'now in active repulsion!'."
	collusionCount := collisions size.
	collisions do: [:vertex |
		distance := (aVertex position - vertex position) dotProduct: (aVertex position - vertex position).
		distance := distance.
		distance := distance max: 0.001.
		coulomb := 1 / distance.
		repulsion := repulsion + (coulomb * (aVertex position - vertex position))].
	
	^ repulsion -> collusionCount
			