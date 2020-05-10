crawl
crawl: url

	| links |
	links := self urlCrawler crawl: url.
	links do: [:link | Transcript show: link ;cr]