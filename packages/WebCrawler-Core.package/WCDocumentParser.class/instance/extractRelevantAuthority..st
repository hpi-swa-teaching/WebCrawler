accessing
extractRelevantAuthority: anUrl

	| secondLevelDomain indexOfPoint lastIndexOfPoint |
	secondLevelDomain := anUrl.
	(secondLevelDomain findString: 'http://') = 1 ifTrue: [
		secondLevelDomain := secondLevelDomain copyFrom: 8 to: secondLevelDomain size].
	(secondLevelDomain findString: 'https://') = 1 ifTrue: [
		secondLevelDomain := secondLevelDomain copyFrom: 9 to: secondLevelDomain size].
	secondLevelDomain := (((secondLevelDomain upTo: $/) upTo: $&) upTo: $?).
	indexOfPoint := secondLevelDomain indexOf: $..
	lastIndexOfPoint := 0.
	[(secondLevelDomain indexOf: $. startingAt: (indexOfPoint + 1)) ~= 0]
		whileTrue: [
			lastIndexOfPoint := indexOfPoint.
			indexOfPoint := secondLevelDomain indexOf: $. startingAt: (indexOfPoint + 1)].
	^ secondLevelDomain copyFrom: lastIndexOfPoint + 1 to: secondLevelDomain size