actions
startCrawling

	| url |
	url := self urlInputField contents asString.
	url isEmpty
		ifTrue: [self urlInputField updateBalloonText: 'Please enter url to crawl!']
		ifFalse: [
			self toogleLoadingScreen.
			self crawler asyncCrawl: (self fillHTTPS: url) callback: [
				self urlInputField contents: (self fillHTTPS: url).
				self listMorph updateList: self crawler storage newLinks.
				self toogleLoadingScreen]].
	