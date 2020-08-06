accessing
openSiteMapFor: anUrl

	| siteMap |
	siteMap := WCUISiteMap new initialize: anUrl.
	siteMap crawler: self crawler.
	siteMap plugin treeUpdate value: OrderedCollection new