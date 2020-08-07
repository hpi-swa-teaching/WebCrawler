parsing
removeUrlPrefix: anUrlString

	| newUrl wordLength |
	newUrl := anUrlString.
	wordLength := 8.
	(newUrl findString: 'http://') = 1 ifTrue: [
		newUrl := newUrl copyFrom: wordLength to: newUrl size].
	(newUrl findString: 'https://') = 1 ifTrue: [
		newUrl := newUrl copyFrom: (wordLength + 1) to: newUrl size].
	^ newUrl