crawl
crawl: url

	self fetcher fetch: url.
	self parser parse: (self fetcher documentContent content).
	"self content store: self parser content.
	
	self content substituteRelativeUrls: url."