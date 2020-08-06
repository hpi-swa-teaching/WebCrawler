graphUpdating
computeDamping: aPoint

	| damped |
	damped := aPoint * self dampingFactor.
	^ self clamp: damped min: -20 asPoint max: 20 asPoint.