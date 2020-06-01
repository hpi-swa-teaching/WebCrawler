itemManagement
update

	self scroller submorphs do: #delete.
	self list do: [:listItem | 
		self scroller addMorph: listItem]