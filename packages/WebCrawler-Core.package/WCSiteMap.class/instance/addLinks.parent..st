accessing
addLinks: anOrderedCollection parent: aLink

	(self contains: aLink) ifFalse: [
		self siteMap add: aLink -> OrderedCollection new].
	anOrderedCollection do: [:childLink |
		(self siteMap at: aLink) add: childLink]
	