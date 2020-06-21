filtering
searchForRegex: aRegex

	^ self links select: [:link | (link matchesRegex: aRegex)]