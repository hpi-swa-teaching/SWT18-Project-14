as yet unclassified
selectedOrganizeIndex

	selectedIndex ifNotNil: [^selectedIndex].
	selectedIndex := 0.
	self selectedAlternativeIndex: selectedIndex.
	^selectedIndex