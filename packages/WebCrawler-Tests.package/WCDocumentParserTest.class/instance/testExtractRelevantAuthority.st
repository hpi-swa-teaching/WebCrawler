initialize-release
testExtractRelevantAuthority

	self assert: (self object extractRelevantAuthority: 'https://de.wikipedia.org/wiki/Berlin-Sch%C3%B6neberg') equals: 'wikipedia.org'.
	self assert: (self object extractRelevantAuthority: 'https://www.google.com/search?source=hp&ei=LPvxXtn9LuujgweI-rhQ&q=epstein+didn%27t+kill+himself&oq=epstein+didn&gs_lcp=CgZwc3ktYWIQARgAMgIIADoFCAAQsQM6BQgAEIMBOg4IABDqAhC0AhCaARDlAjoECAAQClCsCVjkQGDmSGgEcAB4AIABmQGIAfoMkgEDNy45mAEAoAEBqgEHZ3dzLXdperABBg&sclient=psy-ab') equals: 'google.com'.
	self assert: (self object extractRelevantAuthority: 'http://www.github.com') equals: 'github.com'.
	self assert: (self object extractRelevantAuthority: 'http://www.squeak.org/help') equals: 'squeak.org'