crawling
robotsTXTPermits: anUrlString

	| robotsContent robotsUrl |
	robotsUrl := self getRobotsUrl: anUrlString.
	robotsContent := ''.
	[robotsContent := (WebClient httpGet: robotsUrl) content]
		on: Exception do: [^true].
	^ self scanRobotEntries: robotsContent