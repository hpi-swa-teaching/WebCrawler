parsing
evaluateLink: aHtmlEntity

	| link prefix |
	
	link := aHtmlEntity getAttribute: 'href'.
	link isNil ifFalse: [
		link := link withoutQuoting.
		prefix := link upTo: $:.
		(link size = 0 or: [('javascript*' match: link) or: [('fb-messenger*' match: link) or: [link asUrl scheme = 'mailto']]]) ifFalse:  [
			link := self replaceUTF8: link.
    			((link at: 1) ~=  $# or: [self options includeSiteInternalReferences]) ifTrue: [
				((link asUrl authority match: self sourceUrl asUrl authority) or: [(link asUrl authority subStrings: '.') size < 1] or: [self options includeOutgoingDomains]) ifTrue: [
					((((link asUrl authority subStrings: '.') size > 1) and: [(link asUrl authority match: self sourceUrl asUrl authority) not]) or: [self options includeSourceUrls]) ifTrue: [
            				self links add: link]]]]]
	"((((link asUrl authority subStrings: '.') at: 2) match: ((self sourceUrl asUrl authority subStrings: '.') at: 2)) or: [self options includeSubdomains]) ifTrue: [] Ist hpi.uni-potsdam.de eine subdomain von hpi.de?"