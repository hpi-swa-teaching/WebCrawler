parsing
parse: aByteStream from: anUrl

	self links: OrderedCollection new.
	self documentRoot: (HtmlParser parse: aByteStream).
	self sourceUrl: anUrl.
	self traverseDocumentTree: self documentRoot