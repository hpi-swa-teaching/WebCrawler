fetching
fetch: url

	self documentContent: (WebClient httpGet: url)