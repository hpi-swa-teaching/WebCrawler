autocrawling
extractNthLink: aCollection

	| positionToAdd selectedLinks |
	selectedLinks := OrderedCollection new.
	positionToAdd := (self nthLinkToExtract \\ aCollection size) + 1.
	self options maxLinksToExtract timesRepeat: [
		selectedLinks add: (aCollection at: positionToAdd).
		positionToAdd := ((positionToAdd + self nthLinkToExtract) \\ aCollection size) + 1].
	^ selectedLinks