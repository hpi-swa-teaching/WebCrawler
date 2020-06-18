crawling
crawl: aUrlString

	self fetcher fetch: aUrlString.
	self parser parse: (self fetcher content) from: aUrlString.
	self storage store: self parser links source: aUrlString