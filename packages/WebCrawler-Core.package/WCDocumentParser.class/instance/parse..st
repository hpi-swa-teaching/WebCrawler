parsing
parse: aByteStream

	self links: OrderedCollection new.
	self documentRoot: (HtmlParser parse: aByteStream).
	self traverseDocumentTree: self documentRoot.