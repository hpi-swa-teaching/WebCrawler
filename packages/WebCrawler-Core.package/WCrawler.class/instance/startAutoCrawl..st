autocrawling
startAutoCrawl: aUrlString

	self process: [
		self breadthFirstSearch: aUrlString. 
		Transcript show: 'autocrawling has ended!'] fork