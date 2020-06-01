actions
startCrawling

	| url |
	url := self urlInputField contents asString.
	self crawler asyncCrawl: url callback: [
		Transcript show: self crawler links.
		self listMorph addLinks: self crawler links]