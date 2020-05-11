parsing
parse: aByteStream

	self documentRoot: (HtmlParser parse: aByteStream).
	self traverseDocumentTree: self documentRoot