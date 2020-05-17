testing
testAll

	WCTestClass subclasses do: [:subClass |
		| obj |
		obj := subClass new.
		obj setUp.
		obj testAll]