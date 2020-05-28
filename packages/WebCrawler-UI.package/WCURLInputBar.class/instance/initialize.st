initialize-release
initialize

	super initialize.
	
	self crAction: [].
	self options: WCUIOptions new.
	self backgroundColor: (Color lightGray);
		contents: 'enter url here!aj;lkdsfjasdfhsdf;adsljkfas;dflkjasf;lskafjasfd';
		autoFit: false;
		width: 300;
		height: 200;
		wrapFlag: false;
		beAllFont: self options defaultFont;
		position: 100@100;
		borderStyle: (BorderStyle width: 3 color: self options color4);
		margins: 7;
		openInWorld