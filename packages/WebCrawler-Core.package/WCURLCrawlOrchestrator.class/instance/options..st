accessing
options: aWCOptions

	options := aWCOptions.
	self fetcher options: self options.
	self parser options: self options.
	self content options: self options