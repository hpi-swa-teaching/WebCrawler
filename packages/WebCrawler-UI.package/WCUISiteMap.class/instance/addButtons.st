initialize-release
addButtons

	self lastButtonStartPosition: 
			((self plugin position x + self plugin extent x + self buttonPadding x) 
				@ self defaultPluginPadding y);
		addAutoCrawAbortlButton