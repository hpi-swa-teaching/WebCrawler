treeUpdate
filterNewChildren: aCollection forVertex: aVertex

	^ aCollection reject: 
		[:newChild | 
			aVertex edges inject: false into: [:previous :edge | 
				previous or: [ edge key label = newChild]]]