filtering
beautifyLinks: anOrderedCollection

	Transcript show: 'beautified!';cr.
	^ anOrderedCollection collect: [:link | self parser replaceUTF8: link] 