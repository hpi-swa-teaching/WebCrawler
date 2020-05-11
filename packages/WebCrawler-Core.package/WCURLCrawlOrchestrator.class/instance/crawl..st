crawl
crawl: url

	self fetcher fetch: url.
	self parser parse: self fetcher content.
	self content store: self parser content