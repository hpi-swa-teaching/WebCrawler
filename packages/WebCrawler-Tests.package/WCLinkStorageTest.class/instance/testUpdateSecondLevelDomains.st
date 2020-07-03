testing
testUpdateSecondLevelDomains

	| urls correct allEqual |
	urls := OrderedCollection newFrom: {'http://www.google.com' . 'http://www.google.com/stuff_that_happened_yesterday' . 'http://www.google.com/the_guy/right/behind_you.html' . 'http://www.blank.org/blankPage' . 'http://www.whattimeisitrightnow.com/bojack' . 'http://www.epstein.didnt/kill?val=himself'}.
	correct := OrderedCollection newFrom: {'google.com' . 'blank.org' . 'whattimeisitrightnow.com' . 'epstein.didnt'}.
	self object secondLevelDomains: OrderedCollection new.
	self object updateSecondLevelDomains: urls.
	
	allEqual := true.
	1 to: self object links size do: [:i |
		allEqual := allEqual & ((urls at: i) = (correct at: i))].
	self assert: allEqual equals: true