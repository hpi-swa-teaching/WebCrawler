accessing
crawler: anObject

	| link |
	crawler := anObject.
	anObject executeOnUpdate: self treeUpdate.
	
	link := self vertices first label.
	self vertices first contextMenu add: 'Crawl this link' target: self crawler selector: #crawl: argument: link .
	self vertices first contextMenu add: 'Start Autocrawling from here' target: self crawler selector: #startAutoCrawl: argument: link.
	self vertices first contextMenu add: 'Open SiteMap' target: self selector: #openSiteMapFor: argument: link.