filtering
beautifyLinks

	| cleanLink |
	
	self utf8dictionary.
	
	1 to: (links size) do: [ :index | cleanLink := self replaceUTF8: (links at: index). links at: index put: cleanLink] 