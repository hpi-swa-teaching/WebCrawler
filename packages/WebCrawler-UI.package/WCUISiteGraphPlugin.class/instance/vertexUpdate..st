graphUpdating
vertexUpdate: aCollection

	aCollection do: [:link |
		| newVertex newPosition reconstructed |
		newPosition := (self extent x atRandom) @ (self extent y atRandom).
		newVertex := (WCUIVertex new
			position: newPosition;
			label: link;
			index: self vertices size + 1).
		reconstructed := self crawler storage secondLevelDomainDictionary at: link.
		newVertex contextMenu add: 'Crawl this link' target: self crawler selector: #crawl: argument: reconstructed.
		newVertex contextMenu add: 'Start Autocrawling from here' target: self crawler selector: #startAutoCrawl: argument: reconstructed.
		newVertex contextMenu addLine.
		newVertex contextMenu add: 'Open SiteMap' target: self selector: #openSiteMapFor: argument: reconstructed.
		
		self hashVertex: newVertex.
		self vertexPlane addMorph: newVertex.
		self vertices add: newVertex].
	Transcript show: 'ADDED ', aCollection size, ' VERTICES!';cr.