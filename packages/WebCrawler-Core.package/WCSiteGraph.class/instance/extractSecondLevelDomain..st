storing
extractSecondLevelDomain: url

	| startOfDomain endOfDomain char amountOfDots |

	char := 0.
	endOfDomain := 0.
	[char < url size] whileTrue: 
		[char := char+1 .(url at: char) == $/ 
		ifTrue: [
			(char > 1 and: [((url at: char-1) == $/) | ((url at: char-1) == $:)])
				ifFalse: [endOfDomain := char. char := url size]]].
	endOfDomain = 0 ifTrue: [endOfDomain := char + 1].

	char := endOfDomain.
	amountOfDots := 0.
	startOfDomain := 0.
	    [char > 1] whileTrue: 
		[char := char-1. (url at: char) == $. 
		ifTrue: 
			[amountOfDots = 1 
			ifTrue: [startOfDomain := char. char = 0] 
			ifFalse: [amountOfDots := amountOfDots+1]]].

	^ url copyFrom: (startOfDomain+1) to: (endOfDomain -1).