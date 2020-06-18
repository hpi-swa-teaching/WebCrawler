actions
searchSubstring

	self links: (self crawler storage searchLinkSubstring: (self subStringInputField contents asString)).
	self listMorph updateList: (self links)