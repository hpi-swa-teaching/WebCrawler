initialize-release
testReplaceUTF8

	| cleanLink |
	
	cleanLink := self object replaceUTF8: 'https://de.wikipedia.org/wiki/Berlin-Sch%C3%B6neberg'.
	self assert: (cleanLink = 'https://de.wikipedia.org/wiki/Berlin-Schöneberg')