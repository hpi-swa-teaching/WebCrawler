initialize-release
propagateNewOptions

	self fetcher options: self options.
	self parser options: self options.
	self storage options: self options.