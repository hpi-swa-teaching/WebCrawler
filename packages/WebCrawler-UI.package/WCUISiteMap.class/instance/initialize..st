initialize-release
initialize: aParentUrl

	super initialize.
	self setOwnAttributes.
	self createPlugin: aParentUrl.
	self addButtons