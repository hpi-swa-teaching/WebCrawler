creators
autoCrawlButtonTarget

	^ [self crawler linkQueue isEmpty
		ifTrue: [self crawler startRandomAutoCrawl]
		ifFalse: [self crawler resumeAutoCrawl]]