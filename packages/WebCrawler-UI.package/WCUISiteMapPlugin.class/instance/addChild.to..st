treeUpdate
addChild: anUrl to: aVertex

	| newLayer newEdge newVertex newLineMorph indexToInsert lastParent numberOfDifferentParents oldLayer |
	newLayer := aVertex layer + 1.
	newVertex := (WCUIVertex new
		position: (0@0);
		label: anUrl;
		index: self vertices size + 1).
	newVertex layer: newLayer.
	newVertex contextMenu add: 'Crawl this link' target: self crawler selector: #crawl: argument: anUrl.
	newVertex contextMenu add: 'Start Autocrawling from here' target: self crawler selector: #startAutoCrawl: argument: anUrl.
	newVertex updateEdge: aVertex index -> 0.
	
	aVertex updateEdge: newVertex index -> 0.
	newLineMorph := LineMorph from: aVertex center to: newVertex center color: Color lightGray width: 5.
	newEdge := aVertex index -> (self vertices size + 1) -> newLineMorph.
	self vertices add: newVertex.
	self edges add: newEdge.
	self vertexPlane addMorphBack: newVertex.
	self edgePlane addMorphFront: newLineMorph.
	newLayer > self layers size 
		ifTrue: [
			self layers add: (OrderedCollection newFrom: {newVertex}).
			newVertex intraLayerPosition: 1]
		ifFalse: [
			indexToInsert := 0.
			numberOfDifferentParents := 0.
			lastParent := 0.
			Transcript show: 'inserting in layer: ', newLayer;cr.
			(self layers at: newLayer) do: [:vertexInLayer | 
				| localParent |
				localParent := self vertices at: vertexInLayer edges first key.
				Transcript show: 'current parent: ', localParent intraLayerPosition, ' my parent: ', aVertex intraLayerPosition, ' indext to insert: ', indexToInsert;cr.
				localParent intraLayerPosition < aVertex intraLayerPosition
					ifTrue: [indexToInsert := ((self layers at: newLayer) indexOf: vertexInLayer) + 1]
					ifFalse: [vertexInLayer intraLayerPosition: vertexInLayer intraLayerPosition + 1]].
			oldLayer := self layers at: newLayer.
			Transcript show: 'got index to insert: ',indexToInsert;cr.
			self layers at: newLayer put: ((oldLayer copyFrom: 1 to: (indexToInsert - 1)), (OrderedCollection newFrom: {newVertex}), (oldLayer copyFrom: (indexToInsert max: 1) to: oldLayer size)).
			newVertex intraLayerPosition: indexToInsert]
	