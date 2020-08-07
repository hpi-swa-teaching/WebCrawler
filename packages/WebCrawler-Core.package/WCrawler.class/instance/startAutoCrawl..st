autocrawling
startAutoCrawl: aUrlString

	self abortAutoCrawling.
	self process: [
		self breadthFirstSearch: aUrlString. 
		Transcript show: 'autocrawling has ended!'] fork