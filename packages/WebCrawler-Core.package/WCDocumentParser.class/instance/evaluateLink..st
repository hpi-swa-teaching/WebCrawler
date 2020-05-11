parsing
evaluateLink: aHtmlEntity

	| link |
	link := aHtmlEntity getAttribute: 'href'.
	(link isNil) ifFalse: [
    		((link at: 1) ~=  $# or: [self includeSiteInternalReferences]) ifTrue: [
            	Transcript show: (aHtmlEntity getAttribute: 'href') ;cr.
            	self links add: (aHtmlEntity getAttribute: 'href')]]