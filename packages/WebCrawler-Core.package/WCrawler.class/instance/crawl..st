crawling
crawl: aUrlString

	| startTime |
	self fetcher fetch: aUrlString.
	self parser parse: (self fetcher documentContent) from: aUrlString.
	startTime := DateAndTime now.
	self storage store: self parser links source: aUrlString.
	self durationCounter: self durationCounter + (DateAndTime now - startTime) asMilliSeconds.
	self linkCounter: self linkCounter + self parser links size.
	Transcript show: 'MS NEEDED TO STORE THE LINKS: ', (DateAndTime now - startTime) asMilliSeconds; cr