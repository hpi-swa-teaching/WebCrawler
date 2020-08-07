initialize-release
setBitCount: expectedNumberOfElements

	| arraySize  minimumArraySize |
	" get array size according to following link: 
	https://stackoverflow.com/questions/658439/how-many-hash-functions-does-my-bloom-filter-need"
	minimumArraySize := ((-1 * expectedNumberOfElements * (self fpPropability ln)) / (2 ln raisedTo: 2)) ceiling.
	arraySize := 2 raisedTo: (minimumArraySize log2 ceiling).
	self bitCount: arraySize