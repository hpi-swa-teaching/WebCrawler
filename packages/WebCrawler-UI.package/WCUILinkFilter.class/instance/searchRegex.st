actions
searchRegex

	self links: (self crawler searchForRegex: (self regexInputField contents asString)).
	self listMorph updateList: (self links)