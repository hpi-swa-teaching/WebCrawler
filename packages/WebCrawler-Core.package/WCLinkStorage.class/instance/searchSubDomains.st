searching
searchSubDomains
	
	    ^ self searchForRegex: '[^(www)]*',(self secondLevelDomains first),'.*'