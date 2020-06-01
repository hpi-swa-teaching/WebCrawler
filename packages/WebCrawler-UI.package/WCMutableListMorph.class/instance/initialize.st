initialization
initialize

	super initialize.
	self extent: 100 asPoint.
	self scroller color: Color green;
		layoutPolicy: TableLayout new;
		cellInset: 0@0;
		listDirection: #topToBottom;
		listCentering: #topLeft.
	
	self list: OrderedCollection new.
	self dynamicResize: true.