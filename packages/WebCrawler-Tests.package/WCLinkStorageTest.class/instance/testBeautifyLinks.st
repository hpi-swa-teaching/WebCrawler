testing
testBeautifyLinks

	| link beautified correctLinks | 
	link := OrderedCollection newFrom: {'tsch%C3%B6 mit %C3%B6'. 'n%C3%A4mlich mit h', '%C3%BCberbordende euphorie' . 'https://en.wikipedia.org/wiki/B%C3%B6hlen'}.
	correctLinks := OrderedCollection newFrom: {'tschö mit ö'. 'nämlich mit h', 'überbordende euphorie' . 'https://en.wikipedia.org/wiki/Böhlen'}.
	beautified := self object beautifyLinks: link.
	
	self assert: (self allEntriesOf: correctLinks equal: beautified)