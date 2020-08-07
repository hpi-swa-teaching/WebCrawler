accessing
openSiteMapFor: anUrl

	" this method is called by the context menu "
	| siteMap |
	siteMap := WCUISiteMap new initialize: anUrl.
	siteMap crawler: self crawler.
	siteMap plugin treeUpdate value: OrderedCollection new