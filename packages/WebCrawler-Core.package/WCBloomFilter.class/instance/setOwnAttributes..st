initialize-release
setOwnAttributes: expectedNumberOfElements

	| byteSize |
	byteSize := 8.
	self hashFunctions: ((self bitCount / expectedNumberOfElements) * 2 ln) ceiling;
		bloomFilterArray: (ByteArray new: self bitCount / byteSize);
		sha: SecureHashAlgorithm new.