initialize-release
initialize

	super initialize.
	self setLabel: 'WebCrawler - Vernetzungsgraph';
		plugin: 
			(WCUISiteGraphPlugin new extent: self defaultPluginSize;
				position: self position + self defaultPluginPadding);
		addMorphFront: self plugin;
		openInWorld;
		addAutoCrawlButton;
		addAnimationButton;
		addAutoCrawAbortButton;
		extent: self defaultWindowSize;
		lastButtonStartPosition: (self plugin position x + self plugin extent x + self buttonPadding) @ self defaultPluginPadding.
	self plugin scroller extent: self plugin extent.