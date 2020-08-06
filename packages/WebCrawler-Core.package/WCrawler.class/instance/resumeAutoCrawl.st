autocrawling
resumeAutoCrawl

	self process: [self breadthFirstSearch: self linkQueue removeFirst] fork