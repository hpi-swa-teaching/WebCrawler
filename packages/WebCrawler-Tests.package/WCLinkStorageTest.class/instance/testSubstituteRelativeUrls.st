testing
testSubstituteRelativeUrls

	| correct urls |
	urls := OrderedCollection newFrom: {'http://www.google.com' . '/stuff_that_happened_yesterday' . '/the_guy/right/behind_you.html'}.
	correct := OrderedCollection newFrom: {'http://www.google.com' . 'http://www.google.com/stuff_that_happened_yesterday' . 'http://www.google.com/the_guy/right/behind_you.html'}.
	urls := self object substituteRelativeUrls: urls parent: 'http://www.google.com'.
	self assert: (self allEntriesOf: correct equal: urls)