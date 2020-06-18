filtering
beautifyLinks: anOrderedCollection

	^ anOrderedCollection collect: [:link | self replaceUTF8: link] 