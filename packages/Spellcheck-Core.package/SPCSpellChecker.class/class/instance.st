accessing
instance

	^ Instance ifNil: [Instance := self basicNew initialize; yourself]