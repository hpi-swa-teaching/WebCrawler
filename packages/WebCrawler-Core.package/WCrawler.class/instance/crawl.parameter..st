crawl
crawl: url parameter: aDictionary

	| links |
	links := self urlCrawler crawl: url.
	links do: [:link | Transcript show: link ;cr]