crawl
crawl: url parameter: aDictionary
" test if parameters are neccessary in future releases! "
	| links |
	
	self flag: #ToDo.
	
	links := self urlCrawler crawl: url.
	links do: [:link | Transcript show: link ;cr]