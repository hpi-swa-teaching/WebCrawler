actions
searchRelevantAuthority

	| authorities |
	authorities := OrderedCollection newFrom: (self crawler storage relevantAuthorities).
	self listMorph updateList: authorities