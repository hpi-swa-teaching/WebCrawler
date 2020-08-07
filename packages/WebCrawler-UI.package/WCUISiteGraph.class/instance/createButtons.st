initialize-release
createButtons

	self lastButtonStartPosition: 
			((self defaultPluginPadding x +self plugin extent x + self buttonPadding) 
				@ self defaultPluginPadding y);
		addAutoCrawlButton;
		addAnimationButton;
		addAutoCrawAbortButton