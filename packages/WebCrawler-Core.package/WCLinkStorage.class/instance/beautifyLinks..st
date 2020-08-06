filtering
beautifyLinks: anOrderedCollection
"
	Transcript show: 'beautified!';cr."
	^ anOrderedCollection collect: [:link | self replaceUTF8: link] 