parsing
traverseDocumentTree: aHtmlEntity

	(aHtmlEntity tagName = 'a')
		ifTrue: [self evaluateLink: (aHtmlEntity getAttribute: 'href')].
	
	(aHtmlEntity mayContain: HtmlAnchor new)
		ifTrue: [
			aHtmlEntity subEntities do: [:subHtmlEntity | 
				self traverseDocumentTree: subHtmlEntity]]