crawl
crawl: url

	self links: OrderedCollection new.
	self parser links: OrderedCollection new.
	self content links: OrderedCollection new.
	self fetcher fetch: url.
	self parser parse: (self fetcher content) from: url.
	self content store: self parser.

	self content substituteRelativeUrls: url.
	self parser links: self content links