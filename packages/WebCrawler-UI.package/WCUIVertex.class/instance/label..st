updating
label: aString

	self labelMorph contents: aString.
	self labelMorph center: self center.
	self contextMenu title: aString asString asUppercase