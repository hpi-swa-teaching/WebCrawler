testing
testCreateRobotTXTUrls

	| exampleUrl |
	exampleUrl := 'http://fantasy-url.com'.
	self assert: (self object getRobotsUrl: exampleUrl) equals: 'http://www.fantasy-url.com/robots.txt'