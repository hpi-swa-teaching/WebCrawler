accessing
dynamicResize: aBoolean

	dynamicResize := aBoolean.
	"dynamicResize
		ifTrue: [
			self hResizing: #shrinkWrap;
				vResizing: #shrinkWrap]
		ifFalse: [
			self hResizing: #rigid;
				vResizing: #rigid]"