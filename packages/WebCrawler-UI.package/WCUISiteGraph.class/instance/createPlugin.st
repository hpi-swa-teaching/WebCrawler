initialize-release
createPlugin

	self plugin: 
			(WCUISiteGraphPlugin new extent: self defaultPluginSize;
				position: self position + self defaultPluginPadding;
				yourself);
		addMorphFront: self plugin.
	self plugin scroller extent: self plugin extent