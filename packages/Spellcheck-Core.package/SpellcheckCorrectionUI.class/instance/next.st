private
next
	selectedIndex := 0.
	inputText ~= '' ifTrue: [
		wrongWords removeKey: currentKey.
		currentKey := self getFirstKey.
		currentKey ifNil: [self clear. ^self].
		currentWord := inputText string copyFrom: currentKey to: (wrongWords at: currentKey).
		parser := SpellingTextParser new.
		self wrongWordText: (parser getSentenceContextOfWordAt: currentKey within: inputText string).].