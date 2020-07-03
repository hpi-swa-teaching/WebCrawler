autocrawling
reportStatus
	
	Transcript show: 'Number of Urls crawled: ', self visitedCount, ' links queued: ', self linkQueue size;cr.
	self statusUpdateBlockClosures do: [:aClosure |
		aClosure value: self storage newLinks]
	