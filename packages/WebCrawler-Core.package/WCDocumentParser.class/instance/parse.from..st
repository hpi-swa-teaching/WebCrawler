parsing
parse: aWebResponse from: anUrl

    	self links: OrderedCollection new.
   	self links add: anUrl.
	(aWebResponse contentType includesSubString: 'text/html') ifFalse: [^self].
    	self documentRoot: (HtmlParser parse: aWebResponse content).
   	self sourceUrl: (self extractRelevantAuthority: anUrl).
    	self traverseDocumentTree: self documentRoot.