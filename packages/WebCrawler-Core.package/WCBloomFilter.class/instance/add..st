storing
add: aString

	(self includes: aString)
		ifTrue: [
			self flag: #toDo. " set flags in bloom filter array "
			self links add: aString]