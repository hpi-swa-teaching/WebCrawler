testing
testObserverMechanismus

	| variableSet |
	variableSet := false.
	self object executeOnUpdate: [:links | variableSet := true].
	self object crawl: 'http://www.squeak.org'.
	self assert: variableSet