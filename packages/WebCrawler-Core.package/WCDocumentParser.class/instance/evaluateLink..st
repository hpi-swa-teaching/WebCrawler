parsing
evaluateLink: aUrl

	| link prefix secondLevelDomain |
	link := aUrl.
	"secondLevelDomain := self sourceUrl."
	link isNil ifFalse: [
		link := link reject: [:char | char = $\].
		link := link withoutQuoting.
		prefix := link upTo: $:.
		(link size = 0 or: [prefix ~= 'http' and: [prefix ~= 'https']])ifFalse:  [
			link := self replaceUTF8: link.
    			((link at: 1) ~=  $# or: [self options includeSiteInternalReferences]) ifTrue: [
				secondLevelDomain := self extractSecondLevelDomain: link.
				(secondLevelDomain = self sourceUrl)
					ifTrue: [
						self options includeSubdomains ifTrue: [self links add: link]].
				(secondLevelDomain ~= self sourceUrl)
					ifTrue: [
						self options includeOutgoingDomains ifTrue: [self links add: link]]
				
				"((link asUrl authority match: self sourceUrl asUrl authority) or: [(link asUrl authority subStrings: '.') size < 1] or: [self options includeOutgoingDomains]) ifTrue: [
					((((link asUrl authority subStrings: '.') size > 1) and: [(link asUrl authority match: self sourceUrl asUrl authority) not]) or: [self options includeSourceUrls]) ifTrue: [
            				self links add: link]]]]]"]]]
	"((((link asUrl authority subStrings: '.') at: 2) match: ((self sourceUrl asUrl authority subStrings: '.') at: 2)) or: [self options includeSubdomains]) ifTrue: [] Ist hpi.uni-potsdam.de eine subdomain von hpi.de?"