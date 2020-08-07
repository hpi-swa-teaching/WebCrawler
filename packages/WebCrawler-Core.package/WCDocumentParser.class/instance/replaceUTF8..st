parsing
replaceUTF8: aLink

	| cleanLink |
	cleanLink := aLink.
	self utf8dictionary keysAndValuesDo: [ :key :val |
				cleanLink := cleanLink copyReplaceAll: key with: val].
	^ cleanLink