actions
searchRegex

	self links: (self crawler storage searchForRegex: (self regexInputField contents asString)).
	self listMorph updateList: (self links)