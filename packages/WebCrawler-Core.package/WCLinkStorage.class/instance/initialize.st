initialize-release
initialize

	self links: OrderedCollection new.
	self newLinks: OrderedCollection new.
	self options: WCOptions new.
	self relevantAuthorities: OrderedCollection new.
	self relevantAuthorityDictionary: Dictionary new.