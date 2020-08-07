initialize-release
createUtf8Dictionary

	utf8dictionary := Dictionary new.
	
	utf8dictionary
	add: #'%C3%B6' -> 'ö';
	add: #'%C3%BC' -> 'ü';
	add: #'%C3%A4' -> 'ä';
	add: #'%C3%9F' -> 'ß';
	add: #'%C3%84' -> 'Ä';
	add: #'%C3%96' -> 'Ö';
	add: #'%C3%9C' -> 'Ü'.