parsing
processLink: anUrlString

	| link |
	link := anUrlString.
	link := (link reject: [:char | char = $\]) withoutQuoting.
	^ self replaceUTF8: link.