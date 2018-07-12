accessing
wrongWordText: aString
	
	contextSentence := aString.
	self alternatives: (SpellcheckChecker instance suggestionsFor: self currentWord). 
	self changed: #wrongWordText