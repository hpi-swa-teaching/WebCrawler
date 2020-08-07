accessing
crawler: anObject

	crawler := anObject.
	self siteGraph: anObject siteGraph.
	anObject executeOnUpdate: self graphUpdate.