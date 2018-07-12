buttons
ignoreAll

	wrongWords ifNotNil: [
		wrongWords keysAndValuesDo: [ :key :value | 
			SpellcheckChecker instance ignoreWord: (inputText string copyFrom: key to: value)]].
	self clear