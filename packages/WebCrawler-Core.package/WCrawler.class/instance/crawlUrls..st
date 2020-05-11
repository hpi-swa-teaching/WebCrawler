crawl
crawlUrls: anOrderedCollection

	| crawledLinks |
	self halt.
	crawledLinks := OrderedCollection new.
	anOrderedCollection do: [:url |
		crawledLinks := (crawledLinks , ((self urlCrawler crawl: url) links))].
	self links: crawledLinks.
	Transcript show: self links;cr.
	self crawlUrls: self links.