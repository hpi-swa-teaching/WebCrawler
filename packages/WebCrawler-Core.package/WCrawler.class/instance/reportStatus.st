autocrawling
reportStatus

	self statusUpdateBlockClosures do: [:aClosure |
		aClosure value: self storage newLinks]
	