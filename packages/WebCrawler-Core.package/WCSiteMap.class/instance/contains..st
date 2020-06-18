accessing
contains: aLink

	self siteMap 
		at: aLink 
		ifPresent: [:entry | ^ true]
		ifAbsent: [^ false]