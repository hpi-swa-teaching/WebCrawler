autocrawling
startAutoCrawl: aUrlString

	self process: [
		self breadthFirstSearch: aUrlString
		] fork.