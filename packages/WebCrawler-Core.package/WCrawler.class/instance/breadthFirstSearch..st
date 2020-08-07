autocrawling
breadthFirstSearch: aString

	| currentUrl | 
	self adjustOptions.
	self linkQueue add: aString -> 1.
	[self linkQueue isEmpty]
		whileFalse: [
			currentUrl := self linkQueue removeFirst.
			self crawl: currentUrl key.
			self addNewLinksToQueue: currentUrl value]