crawling
getRobotsUrl: anUrlString

	| mainUrl |
	mainUrl := self parser extractSecondLevelDomain: anUrlString.
	^ 'http://www.', mainUrl, '/robots.txt'