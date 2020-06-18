storing
addLinks: anOrderedCollection parent: aParentUrl

	| parentDomain |
	
	parentDomain := self extractSecondLevelDomain: aParentUrl.
	(self domains includes: parentDomain)
		ifFalse: [self domains add: parentDomain].
	anOrderedCollection do: [:link | 
		| secondLevelDomain |
		secondLevelDomain := self extractSecondLevelDomain: link.
		secondLevelDomain = parentDomain
			ifFalse: [
				(self domains includes: secondLevelDomain)
					ifTrue: [
						| index searchKey |
						searchKey := parentDomain -> secondLevelDomain.
						index := self domainConnections detect: [:assoc | assoc key  = searchKey or: [assoc key = (searchKey value -> searchKey key)]] ifNone: [0].
						index ~= 0
							ifTrue: [
								| assoc |
								index := self domainConnections indexOf: index.
								assoc := self domainConnections at: index.
								assoc := assoc key -> (assoc value + 1).
								self domainConnections at: index put: assoc]
							ifFalse: [self domainConnections add: ((parentDomain -> secondLevelDomain) -> 1)]]
					ifFalse: [
						self domains add: secondLevelDomain.
						self domainConnections add: ((parentDomain -> secondLevelDomain) -> 1)]]]