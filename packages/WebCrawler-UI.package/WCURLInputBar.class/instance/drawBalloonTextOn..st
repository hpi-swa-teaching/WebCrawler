drawing
drawBalloonTextOn: aCanvas 
	"Show balloon text in the text morph if it has no contents."
	self contents ifNotEmpty: [ ^ self ].
	([ self balloonText ]
		on: Error
		do: [ : err | 'error in balloonText' ]) ifNotNil:
		[ : text | aCanvas
			drawString: text
			in: (self innerBounds insetBy: (self defaultInputFieldMargins +self borderStyle width))
			font: (self defaultFont)
			color: (self userInterfaceTheme balloonTextColor ifNil: [Color gray: 0.7]) ]