testing
testExtract2ndLevelDomain

	self assert: (self object extractSecondLevelDomain: 'http://www.google.com') equals: 'google.com'.
	self assert: (self object extractSecondLevelDomain: 'https://www.google.com/search?source=hp&ei=LPvxXtn9LuujgweI-rhQ&q=epstein+didn%27t+kill+himself&oq=epstein+didn&gs_lcp=CgZwc3ktYWIQARgAMgIIADoFCAAQsQM6BQgAEIMBOg4IABDqAhC0AhCaARDlAjoECAAQClCsCVjkQGDmSGgEcAB4AIABmQGIAfoMkgEDNy45mAEAoAEBqgEHZ3dzLXdperABBg&sclient=psy-ab') equals: 'google.com'.
	self assert: (self object extractSecondLevelDomain: 'http://www.github.com') equals: 'github.com'.
	self assert: (self object extractSecondLevelDomain: 'http://www.squeak.org/help') equals: 'squeak.org'