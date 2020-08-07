initialize-release
initialize: expectedNumberOfElements

	" this implementation is largely equivalent to the python implemenation of a bloom filter under this link: 
		https://gist.github.com/josephkern/2897618"
	self setBitCount: expectedNumberOfElements.
	self setOwnAttributes: expectedNumberOfElements