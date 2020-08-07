initialize-release
setOwnAttributes: aParentUrl
	
	self setLabel: 'WebCrawler - Filter';
		setWindowColor: Color darkGray;
		parentDomain: aParentUrl asString;
		openInWorld;
		extent: self defaultSize