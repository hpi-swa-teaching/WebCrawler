accessing
crawler: anObject

	crawler := anObject.
	self siteMap: anObject siteMap siteMap.
	anObject executeOnUpdate: self treeUpdate.
	self rootVertex createContextMenuFor: anObject link: self rootVertex label