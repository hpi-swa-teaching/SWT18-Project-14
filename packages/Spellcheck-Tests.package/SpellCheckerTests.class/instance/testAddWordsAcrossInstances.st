testing
testAddWordsAcrossInstances
	
	| spellChecker1 spellChecker2 |

	spellChecker1 := SpellcheckChecker instance.
	spellChecker1 addWordToDictionary: 'squeack'.
	spellChecker2 := SpellcheckChecker instance.
	self assert: (spellChecker1 isSpelledCorrectly: 'squeack').
	self assert: (spellChecker2 isSpelledCorrectly: 'squeack').
	
	SpellcheckChecker instance removeWordFromDictionary: 'squeack'
