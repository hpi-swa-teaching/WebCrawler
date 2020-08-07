graphUpdating
computeDamping: aPoint

	| damped maxDisplacement |
	damped := aPoint * self dampingFactor.
	maxDisplacement := 20 asPoint.
	^ self clamp: damped min: -1 * maxDisplacement max: maxDisplacement