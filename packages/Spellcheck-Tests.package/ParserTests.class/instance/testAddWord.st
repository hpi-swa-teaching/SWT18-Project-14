testing
testAddWord

	| strings text |
	
	text := '...HalloBumbleBee?=)'.
	strings := Dictionary new.
	parser addWord: text from: 4 to: (text size) - 3 into: strings.	
	self assert: (strings size = 3)