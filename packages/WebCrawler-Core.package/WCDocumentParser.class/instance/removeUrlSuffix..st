parsing
removeUrlSuffix: anUrlString

	^ ((anUrlString upTo: $/) upTo: $&) upTo: $?