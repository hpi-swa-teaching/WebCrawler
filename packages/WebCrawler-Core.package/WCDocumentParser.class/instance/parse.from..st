parsing
parse: aByteStream from: anUrl

	self links: OrderedCollection new.
	self documentRoot: (HtmlParser parse: aByteStream).
	self sourceUrl: (self extractSecondLevelDomain: anUrl).
	self traverseDocumentTree: self documentRoot.
	