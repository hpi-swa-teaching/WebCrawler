crawl
crawl: url parameter: aDictionary
" test if parameters are neccessary in future releases! "
	| links |
	
	self parameter: aDictionary.
	self flag: #ToDo.
	
	links := self urlCrawler crawl: url.
	self appendLinks: links