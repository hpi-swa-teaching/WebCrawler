testing
testBeautifyLinks

	| link beautified allEqual correctLinks | 
	link := OrderedCollection newFrom: {'tsch%C3%B6 mit %C3%B6'. 'n%C3%A4mlich mit h', '%C3%BCberbordende euphorie' . 'https://en.wikipedia.org/wiki/B%C3%B6hlen'}.
	correctLinks := OrderedCollection newFrom: {'tschö mit ö'. 'nämlich mit h', 'überbordende euphorie' . 'https://en.wikipedia.org/wiki/Böhlen'}.
	beautified := self object beautifyLinks: link.
	
	allEqual := true.
	1 to: self object links size do: [:i |
		allEqual := allEqual & ((correctLinks at: i) = (beautified at: i))].
	self assert: allEqual equals: true