initialize-release
addButtons

	self lastButtonStartPosition: 
			((self defaultPluginPadding x + self plugin extent x + self buttonPadding x) 
				@ self defaultPluginPadding y);
		addAutoCrawAbortlButton