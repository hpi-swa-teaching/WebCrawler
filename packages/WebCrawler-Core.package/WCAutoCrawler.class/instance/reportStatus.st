autocrawling
reportStatus

	self flag: #toDo. " implement observer system (objects can request to get status updates from the crawler (maybe through event triggers)) "
	
	Transcript show: 'Number of Urls crawled: ', self visited links size, ' links queued: ', self linkQueue size;cr.