actions
siteMapButtonTarget

	^ [	self crawler links isEmpty
			ifFalse: [
				self uiSiteMap: (WCUISiteMap new initialize: self urlInputField contents;
						crawler: self crawler;
						yourself)]]