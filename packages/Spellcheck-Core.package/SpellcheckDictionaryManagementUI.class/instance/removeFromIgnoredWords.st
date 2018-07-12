as yet unclassified
removeFromIgnoredWords

	selectedWord ifNotNil: 
		[SpellcheckChecker instance removeWordFromDictionary: selectedWord.
		self changed: #ignoredWords]