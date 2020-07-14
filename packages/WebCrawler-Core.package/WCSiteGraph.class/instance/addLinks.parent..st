storing
addLinks: anOrderedCollection parent: aParentUrl

	(self domains includes: aParentUrl)
		ifFalse: [self domains add: aParentUrl].
	anOrderedCollection do: [:link | 
		(self domains includes: link)
			ifTrue: [
				| index searchKey |
				searchKey := aParentUrl -> link.
				index := self domainConnections detect: [:assoc | assoc key  = searchKey or: [assoc key = (searchKey value -> searchKey key)]] ifNone: [0].
				index ~= 0
					ifTrue: [
						| assoc |
						index := self domainConnections indexOf: index.
						assoc := self domainConnections at: index.
						assoc := assoc key -> (assoc value + 1).
						self domainConnections at: index put: assoc]
					ifFalse: [self domainConnections add: ((aParentUrl -> link) -> 1)]]
			ifFalse: [
				self domains add: link.
				self domainConnections add: ((aParentUrl -> link) -> 1)]]