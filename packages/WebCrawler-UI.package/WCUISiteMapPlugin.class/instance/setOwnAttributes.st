initialize-release
setOwnAttributes

	self scroller extent: self defaultSize;
		color: Color white.
	self extent: self scroller extent;
		hScrollBarPolicy: #always;
		vScrollBarPolicy: #always