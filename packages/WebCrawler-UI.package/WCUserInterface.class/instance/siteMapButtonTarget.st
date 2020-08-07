actions
siteMapButtonTarget

	^ [	self crawler links isEmpty
			ifFalse: [
				self uiSiteMap: (WCUISiteMap new initialize: self urlInputField contents asString;
						crawler: self crawler;
						yourself)]]