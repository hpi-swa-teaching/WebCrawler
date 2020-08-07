initialize-release
createLabel

	self labelMorph: 
			(StringMorph new contents: '';
				center: self center;
				font: self defaultFont;
				yourself);
		addMorph: self labelMorph