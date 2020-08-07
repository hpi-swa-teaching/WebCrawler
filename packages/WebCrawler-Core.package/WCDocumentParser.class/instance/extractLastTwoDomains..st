parsing
extractLastTwoDomains: anUrlString

	| indexOfPoint lastIndexOfPoint |
	indexOfPoint := anUrlString indexOf: $..
	lastIndexOfPoint := 0.
	[(anUrlString indexOf: $. startingAt: (indexOfPoint + 1)) ~= 0]
		whileTrue: [
			lastIndexOfPoint := indexOfPoint.
			indexOfPoint := anUrlString indexOf: $. startingAt: (indexOfPoint + 1)].
	^ anUrlString copyFrom: lastIndexOfPoint + 1 to: anUrlString size