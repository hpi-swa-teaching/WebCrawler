testing
testSubstituteRelativeUrls

	| count |
	
	count := 0.
	self object substituteRelativeUrls: 'http://www.squeak.org'.
	self object links do: [:link | (link at: 1) = $/ ifTrue: [count = count + 1]];
	
	assert: (count = 0).
	
	Transcript show: 'All SubstituteRelativeUrls test cases ran without error!';cr
