graphUpdating
createVertex: aLinkString

	| newPosition newVertex reconstructed |
	newPosition := (self extent x atRandom) @ (self extent y atRandom).
	newVertex := (WCUIVertex new position: newPosition;
		label: aLinkString;
		index: self vertices size + 1)."
	reconstructed := self crawler storage secondLevelDomainDictionary at: aLinkString."
	reconstructed := 'http://www.', aLinkString.
	newVertex createContextMenuFor: self crawler link: reconstructed.
	^ newVertex