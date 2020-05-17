fetching
fetch: url

	| protocol |
	protocol := (url upToAll: '://') asLowercase.
	(protocol = self options fetchProtocol)
		ifFalse: [
			self flag: #toDo
			"append the protocol in front of the url. !take care of misformed urls or false protocols (like ftp://...)"].
	self documentContent: (WebClient httpGet: url)