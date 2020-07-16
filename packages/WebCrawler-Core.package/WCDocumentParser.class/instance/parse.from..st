parsing
parse: aWebResponse from: anUrl

    	self links: OrderedCollection new.
   	self links add: anUrl.
	(aWebResponse contentType = 'application/pdf'
		 or: [aWebResponse contentType = 'application/x-swc']
		 or: [aWebResponse contentType includesSubstring: 'image']
		 or: [aWebResponse contentType = 'application/zip'])
		ifTrue: [^self].
    	self documentRoot: (HtmlParser parse: aWebResponse content).
   	self sourceUrl: (self extractSecondLevelDomain: anUrl).
    	self traverseDocumentTree: self documentRoot.