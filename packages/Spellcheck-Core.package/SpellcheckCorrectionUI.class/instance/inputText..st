initialize
inputText: aText
	
	inputText := aText.	
	wrongWords := SpellChecker instance mistakenWordsIn: aText string.
	currentKey := self getFirstKey.
	currentKey ifNil: [self clear. ^self].
	currentWord := aText string copyFrom: currentKey to: (wrongWords at: currentKey).

	self wrongWordText: (parser getSentenceContextOfWordAt: currentKey within: aText string).
	
	