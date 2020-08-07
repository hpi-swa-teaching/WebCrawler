accessing
openSiteMapFor: anUrl withCrawler: aCrawler

	| siteMap |
	siteMap := WCUISiteMap new initialize: anUrl.
	siteMap crawler: aCrawler.
	siteMap plugin treeUpdate value: OrderedCollection new