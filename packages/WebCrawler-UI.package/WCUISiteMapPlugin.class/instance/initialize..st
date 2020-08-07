initialize-release
initialize: aParentUrl

	super initialize.
	self setOwnAttributes.
	self setDefaultValues.
	self createPlanes.
	self createRootVertex: aParentUrl