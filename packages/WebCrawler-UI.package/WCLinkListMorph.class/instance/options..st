accessing
options: aWCUIOptions

	options := aWCUIOptions.
	self linkColors: (OrderedCollection newFrom: {options color3 . options color4})