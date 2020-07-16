initialize-release
initialize

	super initialize.
	self color: (Color lightBlue);
		borderWidth: 3;
		extent: 50@50.
	self labelMorph: (StringMorph new contents: '';
		center: self center;
		font: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 6)).
	self addMorph: self labelMorph.
	self edges: OrderedCollection new.
	self contextMenu: CustomMenu new.
	self index: 0;
		on: #mouseDown send: #value: to:
			[ :event |
         			event yellowButtonPressed ifTrue: [self contextMenu invokeOn: self].
         			event blueButtonPressed ifTrue: [self contextMenu invokeOn: self]];
		on: #mouseEnter send: #value to: 
			[self color: Color orange];
		on: #mouseLeave send: #value to: 
			[self color: Color lightBlue]