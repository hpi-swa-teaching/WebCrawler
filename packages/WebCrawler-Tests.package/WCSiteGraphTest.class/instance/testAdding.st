testing
testAdding

	| urls correct allEqual |
	urls := OrderedCollection newFrom: {'http://www.google.com' . 'http://www.google.com/stuff_that_happened_yesterday' . 'http://www.google.com/the_guy/right/behind_you.html' . 'http://www.blank.org/blankPage' . 'http://www.whattimeisitrightnow.com/bojack' . 'http://www.epstein.didnt/kill?val=himself'}.
	correct := OrderedCollection newFrom: {'google.com' . 'blank.org' . 'whattimeisitrightnow.com' . 'epstein.didnt'}.
	
	self object addLinks: urls parent: 'nytimes.com'.
	Transcript show: self object domains.
	allEqual := true.
	correct do: [:link |
		allEqual := allEqual & (self object domains includes: link)].
	self assert: allEqual equals: true