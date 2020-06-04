events
listItemClicked: anEvent

	^ self listMorph getListItem: (self rowAtLocation: anEvent position)