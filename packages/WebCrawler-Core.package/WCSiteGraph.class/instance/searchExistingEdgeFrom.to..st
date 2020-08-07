storing
searchExistingEdgeFrom: anUrl to: anotherUrl

	| searchKey |
	searchKey := anUrl -> anotherUrl.
	^ self domainConnections detect: [:assoc | 
			assoc key  = searchKey 
			or: [assoc key = (searchKey value -> searchKey key)]] 
		ifNone: [nil]