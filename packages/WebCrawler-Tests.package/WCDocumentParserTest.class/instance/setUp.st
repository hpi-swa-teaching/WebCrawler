initialize-release
setUp

	self object: WCDocumentParser new.
	self object sourceUrl: 'google.com'.
	self correctLinks: self correctLinkExample