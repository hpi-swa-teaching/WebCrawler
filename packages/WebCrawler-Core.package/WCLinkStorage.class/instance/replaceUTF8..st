filtering
replaceUTF8: aLink

	| cleanLink |
	
	cleanLink := aLink.

	self utf8Dictionary keysAndValuesDo: [ :key :val |
				cleanLink := cleanLink copyReplaceAll: key with: val].
		
	^ cleanLink