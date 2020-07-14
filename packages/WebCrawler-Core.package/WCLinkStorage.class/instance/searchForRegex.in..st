searching
searchForRegex: aRegex in: aCollection

	^ aCollection select: [:link | (link matchesRegex: aRegex)]