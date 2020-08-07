initialize-release
testAuthorityExtraction

	self assert: (self object extractRelevantAuthority: 'google.com') equals: 'google.com'.
	self assert: (self object extractRelevantAuthority: 'google.com/sport/stuff.html') equals: 'google.com'.
	self assert: (self object extractRelevantAuthority: 'www.google.com/sport/stuff.html') equals: 'google.com'.
	self assert: (self object extractRelevantAuthority: 'http://google.com/sport/stuff.html') equals: 'google.com'.
	self assert: (self object extractRelevantAuthority: 'http://www.google.com/sport/stuff.html') equals: 'google.com'.
	self assert: (self object extractRelevantAuthority: 'https://www.google.com/sport/stuff.html') equals: 'google.com'.
	self assert: (self object extractRelevantAuthority: 'https://www.google.com') equals: 'google.com'.