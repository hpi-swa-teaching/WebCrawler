actions
startCrawling

	| url |
	url := self urlInputField contents asString.
	url isEmpty
		ifTrue: [
			self urlInputField balloonText: 'Please enter url to crawl!'.
			self urlInputField update: #baloonText]
		ifFalse: [
			self crawler reset.
			self crawler asyncCrawl: url callback: [
				Transcript show: self crawler storage newLinks.
				self listMorph updateList: self crawler storage newLinks]]
	