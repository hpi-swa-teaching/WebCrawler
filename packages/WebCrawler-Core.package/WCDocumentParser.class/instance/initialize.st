initialize-release
initialize

	self links: OrderedCollection new.
	self createUtf8Dictionary.
	self options: WCOptions new