initialize-release
initialize: expectedNumberOfElements

	" this implementation is largely equivalent to the python implemenation of a bloom filter under this link: 
		https://gist.github.com/josephkern/2897618"
	| arraySize  minimumArraySize |
	
	" get array size according to following link: https://stackoverflow.com/questions/658439/how-many-hash-functions-does-my-bloom-filter-need"
	minimumArraySize := ((-1 * expectedNumberOfElements * (self fpPropability ln)) / (2 ln raisedTo: 2)) ceiling.
	arraySize := 2 raisedTo: (minimumArraySize log2 ceiling).
	
	self hashFunctions: ((arraySize / expectedNumberOfElements) * 2 ln) ceiling.
	"self hashFunctions: 13."
	self bloomFilterArray: (ByteArray new: arraySize / 8).
	
	self bitCount: arraySize.
	self sha: SecureHashAlgorithm new.
	