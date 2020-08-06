initialize-release
initialize

	self links: OrderedCollection new.
	self newLinks: OrderedCollection new.
	self options: WCOptions new.
	self secondLevelDomains: OrderedCollection new.
	self secondLevelDomainDictionary: Dictionary new.