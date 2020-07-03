graphUpdating
computeRepulsion: aVertex

	| repulsion dividend i |
	repulsion := 0@0.
	dividend := self extent / self positionHashMapResolution.
	i := aVertex position x - aVertex repulsionRadius.
	[i <= (aVertex position x + aVertex repulsionRadius)]
		whileTrue: [
			| j |
			j := aVertex position y - aVertex repulsionRadius.
			[j <= (aVertex position y + aVertex repulsionRadius)]
				whileTrue: [
					| hashedPosition currentPosition |
					currentPosition := i@j.
					hashedPosition := self hashPosition: currentPosition.
					hashedPosition := self clamp: hashedPosition min: 1 asPoint max: self positionHashMap columnCount asPoint.
					(self positionHashMap at: hashedPosition x at: hashedPosition y) do: [:vertex |
						| distance coulomb |
						vertex index ~= aVertex index
							ifTrue: ["
								Transcript show: 'in hash stuff found another one! hp: ', hashedPosition, ' ownp: ', aVertex position, ' hisp: ', vertex position;cr."
								distance := (aVertex position - vertex position) dotProduct: (aVertex position - vertex position).
								distance := distance max: 0.001.
								coulomb := 1 / distance."
								Transcript show: 'now coulomb: ', coulomb;cr."
								repulsion := repulsion + (coulomb * (aVertex position - vertex position))]].
					j := j + dividend y].
			i := i + dividend x].
	^ repulsion
			