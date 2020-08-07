creators
toogleLoadingScreen
	
	| morph |
	self loading 
		ifFalse: [
			morph := self createLoadingMorph.
			morph addMorphFront: self createLoadingTextMorph.
			self loadingScreen: morph.
			self loading: true]
		ifTrue: [
			self loadingScreen delete.
			self loading: false]