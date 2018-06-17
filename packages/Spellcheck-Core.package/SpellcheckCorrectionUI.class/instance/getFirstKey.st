initialize
getFirstKey
	| key |
	key := (wrongWords associations sorted at:1 ifAbsent: [^nil]) key.
	^key.