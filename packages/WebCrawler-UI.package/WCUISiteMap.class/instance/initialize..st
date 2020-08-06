initialize-release
initialize: aParentUrl

	super initialize.
	self setLabel: 'WebCrawler - SiteMap';
		plugin: 
			(WCUISiteMapPlugin new initialize: aParentUrl;
				extent: self defaultPluginSize;
				position: self position + self defaultPluginPadding);
		addMorphFront: self plugin;
		addAutoCrawAbortlButton;
		openInWorld;
		extent: self defaultWindowSize.
	self plugin scroller extent: self plugin extent.