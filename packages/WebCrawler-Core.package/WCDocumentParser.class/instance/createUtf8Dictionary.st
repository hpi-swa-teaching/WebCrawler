initialize-release
createUtf8Dictionary

	self utf8dictionary: (Dictionary newFrom: 
		{#'%C3%B6' -> 'ö' . #'%C3%BC' -> 'ü' . #'%C3%A4' -> 'ä' . 
		  #'%C3%9F' -> 'ß' . #'%C3%84' -> 'Ä' . #'%C3%96' -> 'Ö' . #'%C3%9C' -> 'Ü'}).