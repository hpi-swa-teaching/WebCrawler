initialize-release
setOwnAttributes

	self setLabel: 'WebCrawler';
		extent: (self defaultWindowWidth @ self defaultWindowHeight);
		loading: false;
		crawler: WCrawler new;
		openInWorld.