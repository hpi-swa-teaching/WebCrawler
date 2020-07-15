actions
startCrawling

	| url |
	url := self urlInputField contents asString.
	url isEmpty
		ifTrue: [
			self urlInputField balloonText: 'Please enter url to crawl!'.
			self urlInputField update: #baloonText]
		ifFalse: [
			self toogleLoadingScreen.
			self crawler asyncCrawl: (self fillHTTPS: url) callback: [
				Transcript show: self crawler storage newLinks.
				self crawler reportStatus.
				self listMorph updateList: self crawler storage newLinks.
				self toogleLoadingScreen]].
	