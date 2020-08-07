autocrawling
abortAutoCrawling

	self process isNil ifFalse: [self process terminate]