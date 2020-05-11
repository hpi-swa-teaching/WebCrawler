parsing
traverseDocumentTree: aHtmlEntity

	(aHtmlEntity tagName = 'a' or: [aHtmlEntity tagName = 'script'])
		ifTrue: [self evaluateLink: aHtmlEntity].
	
	(aHtmlEntity mayContain: HtmlAnchor new)
		ifTrue: [
			aHtmlEntity subEntities do: [:subHtmlEntity | 
				self traverseDocumentTree: subHtmlEntity]]