testing
testAddDictionary

	hunspell := SpellcheckHunspellAPI new.
	self deny: (hunspell isWordCorrect: 'Schnee').

	hunspell addDictionary: self class germanDictionary.
	
	self assert: (hunspell isWordCorrect: 'Schnee')