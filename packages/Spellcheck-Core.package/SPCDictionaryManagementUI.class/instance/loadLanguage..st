dictionary loading
loadLanguage: languageName
	| language |
	
		language := SPCHunspellLanguage new.
		language affixPath: (self affixPath: languageName).
		language dictionaryPath: (self dictionaryPath:languageName).
		language languageName: languageName.
		
		
		self spellchecker loadedLanguages add: language.
		self spellchecker reloadHunspellHandle;
			reloadAddedWords.
		