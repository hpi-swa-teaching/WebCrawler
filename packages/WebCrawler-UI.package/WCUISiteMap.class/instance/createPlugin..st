initialize-release
createPlugin: aParentUrl

	self plugin: 
			(WCUISiteMapPlugin new initialize: aParentUrl;
				extent: self defaultPluginSize;
				position: self position + self defaultPluginPadding;
				yourself);
		addMorphFront: self plugin.
	self plugin scroller extent: self plugin extent