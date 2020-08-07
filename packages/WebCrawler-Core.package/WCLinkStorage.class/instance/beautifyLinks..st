filtering
beautifyLinks: anOrderedCollection

	^ anOrderedCollection collect: [:link | self parser replaceUTF8: link] 