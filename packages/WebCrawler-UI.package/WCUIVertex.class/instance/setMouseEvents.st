initialize-release
setMouseEvents

	self on: #mouseDown send: #value: to:
			[ :event |
         			event yellowButtonPressed ifTrue: [self contextMenu invokeOn: self].
         			event blueButtonPressed ifTrue: [self contextMenu invokeOn: self]];
		on: #mouseEnter send: #value to: [self color: Color orange];
		on: #mouseLeave send: #value to: [self color: Color lightBlue].