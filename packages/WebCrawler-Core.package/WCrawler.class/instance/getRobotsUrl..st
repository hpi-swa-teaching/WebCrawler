crawling
getRobotsUrl: anUrlString

	| mainUrl |
	mainUrl := self storage extractSecondLevelDomain: anUrlString.
	^ 'http://www.', mainUrl, '/robots.txt'