queries
includes: aString

	self flag: #toDo. " check if string is in bloom filter and scan eventually the links orderedCollection "
	
	^ self links includes: aString