parsing
evaluateLink: aHtmlEntity

	| link |
	
	self flag: #toDo.
	" change this to also be able to process <script>- Tags"
	
	link := aHtmlEntity getAttribute: 'href'.
	(link isNil) ifFalse: [
    		((link at: 1) ~=  $# or: [self options includeSiteInternalReferences]) ifTrue: [
            	" add more url checking here (exclude e.g. if it is a subdomain-reference but self options includeSubdomains is set to false)"
            	self links add: (aHtmlEntity getAttribute: 'href')]]