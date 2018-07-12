testing
testSpellCheckAfterRestart

	| instance |
	SpellcheckChecker startUp: true.
	self shouldnt: [instance := SpellcheckChecker instance] raise: Error