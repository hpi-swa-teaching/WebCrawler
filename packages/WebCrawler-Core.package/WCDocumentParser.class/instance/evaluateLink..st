parsing
evaluateLink: aHtmlEntity

	| link |
	
	self flag: #toDo.
	" change this to also be able to process <script>- Tags"
	
	link := aHtmlEntity getAttribute: 'href'.
	(link isNil or: [link size = 0]) ifFalse: [
		('javascript*' match: link) ifFalse:  [
    			((link at: 1) ~=  $# or: [self options includeSiteInternalReferences]) ifTrue: [
				((link asUrl authority match: self sourceUrl asUrl authority) or: [(link asUrl authority subStrings: '.') size < 1] or: [self options includeOutgoingDomains]) ifTrue: [
					((((link asUrl authority subStrings: '.') size > 1) and: [(link asUrl authority match: self sourceUrl asUrl authority) not]) or: [self options includeSourceUrls]) ifTrue: [
            				self links add: (aHtmlEntity getAttribute: 'href')]]]]]
	"((((link asUrl authority subStrings: '.') at: 2) match: ((self sourceUrl asUrl authority subStrings: '.') at: 2)) or: [self options includeSubdomains]) ifTrue: [] Ist hpi.uni-potsdam.de eine subdomain von hpi.de?"