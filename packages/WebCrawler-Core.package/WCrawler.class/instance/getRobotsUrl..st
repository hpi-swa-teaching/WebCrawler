crawling
getRobotsUrl: anUrlString

	| mainUrl |
	mainUrl := self parser extractRelevantAuthority: anUrlString.
	^ 'http://www.', mainUrl, '/robots.txt'