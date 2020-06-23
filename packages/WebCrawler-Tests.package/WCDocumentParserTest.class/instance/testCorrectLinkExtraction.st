initialize-release
testCorrectLinkExtraction

	| fetcher correctLinks allEqual |
	fetcher := WCDocumentFetcherMock new.
	self object parse: fetcher content from: 'http://www.squeak.org'.
	correctLinks :=  OrderedCollection newFrom: 
		{'http://files.squeak.org/5.3/Squeak5.3-19435-64bit/Squeak5.3-19435-64bit-202003021730-macOS.dmg' . 
		'http://files.squeak.org/5.3/Squeak5.3-19435-64bit/Squeak5.3-19435-64bit-202003021730-Windows.zip' . 
		'http://files.squeak.org/5.3/Squeak5.3-19435-64bit/Squeak5.3-19435-64bit-202003021730-Linux.zip' . 
		'http://files.squeak.org/5.3/Squeak5.3-19435-64bit/Squeak5.3-19435-64bit-All-in-One.zip' . 
		'http://files.squeak.org/5.3/Squeak5.3-19435-32bit/Squeak5.3-19435-32bit-202003021730-ARMv6.zip' .
		 'http://news.squeak.org/' . 'http://bugs.squeak.org/view_all_bug_page.php' . 'http://wiki.squeak.org/squeak' . 
		'http://wiki.squeak.org/squeak' . 'http://news.squeak.org/' . 'http://news.squeak.org/' . 
		'http://bugs.squeak.org/view_all_bug_page.php' . 'http://bugs.squeak.org/view_all_bug_page.php' . 
		'http://map.squeak.org/' . 'http://source.squeak.org/inbox.html' . 
		'http://files.squeak.org/various_images/OpenCroquet/' . 'http://wiki.squeak.org/squeak/5833' . 'http://wiki.squeak.org/squeak/5833'}.
	allEqual := true.
	1 to: self object links size do: [:i |
		allEqual := allEqual & ((self object links at: i) = (correctLinks at: i))].
	self assert: allEqual equals: true