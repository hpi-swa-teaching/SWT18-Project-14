initialize-release
initialize 

	hunspell := SpellcheckHunspellAPI new.
	parser := SpellcheckTextParser new.
	AddedWords ifNil: [AddedWords := Set new].
	self reloadAddedWords