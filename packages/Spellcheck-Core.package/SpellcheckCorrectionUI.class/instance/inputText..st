initialize
inputText: aText

	inputText := aText asText.	"might be a string"
	wrongWords := (SpellcheckChecker instance mistakenWordsIn: aText string).
	keyArray := wrongWords keys asSortedCollection asOrderedCollection.
	
	self displayCurrentWrongWord
	