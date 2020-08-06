crawling
robotsTXTPermits: anUrlString

	| robotsContent robotsUrl |
	robotsUrl := self getRobotsUrl: anUrlString.
	[robotsContent := (WebClient httpGet: robotsUrl) content]
		on: Exception do: [^true].
	^ self scanRobotEntries: anUrlString