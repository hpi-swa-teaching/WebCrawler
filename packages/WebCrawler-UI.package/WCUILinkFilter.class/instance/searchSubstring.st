actions
searchSubstring

	self links: (self crawler searchLinkSubstring: (self subStringInputField contents asString)).
	self listMorph updateList: (self links)