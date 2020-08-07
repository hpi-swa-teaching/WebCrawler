initialize-release
setOwnAttributes

	self setLabel: 'WebCrawler';
		loading: false;
		crawler: WCrawler new;
		openInWorld;
		extent: (self defaultWindowWidth @ self defaultWindowHeight)