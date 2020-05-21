autocrawling
selectMostRelevantLinks: anOrderedCollection

	self flag: #toDo. " select relevant links on a more profound basis "
	
	^ anOrderedCollection copyFrom: 1 to: self options maxLinksToExtract