testing
testUtf8Dictionary

	self assert: self object utf8Dictionary isNil equals: false.
	
	self assert: (self object utf8Dictionary at: #'%C3%B6') equals: 'ö'