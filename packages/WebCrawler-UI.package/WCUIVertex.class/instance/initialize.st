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
	self index: 0.