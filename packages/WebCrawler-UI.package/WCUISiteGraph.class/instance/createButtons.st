initialize-release
createButtons

	self lastButtonStartPosition: 
			((self plugin position x + self plugin extent x + self buttonPadding) 
				@ self defaultPluginPadding x);
		addAutoCrawlButton;
		addAnimationButton;
		addAutoCrawAbortButton