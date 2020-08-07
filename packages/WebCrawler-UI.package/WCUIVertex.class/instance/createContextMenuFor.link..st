initialize-release
createContextMenuFor: aCrawler link: aLink

	(self contextMenu) 
		add: 'Crawl this link' target: aCrawler selector: #crawl: argument: aLink;
		add: 'Start Autocrawling from here' target: aCrawler 
			selector: #startAutoCrawl: argument: aLink;
		addLine;
		add: 'Open SiteMap' target: self 
			selector: #openSiteMapFor:withCrawler: argumentList: 
				(Array with: aLink with: aCrawler)