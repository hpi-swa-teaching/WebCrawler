testing
allEntriesOf: aCollection equal: anotherCollection

	aCollection size ~= anotherCollection size
		ifTrue: [^ false].
	1 to: aCollection size do: [:i |
		(aCollection at: i) ~= (anotherCollection at: i) ifTrue: [^false]].
	 ^ true