storing
add: aString

	(self includes: aString)
		ifFalse: [
			self flag: #toDo. " set flags in bloom filter array "
			self links add: aString]