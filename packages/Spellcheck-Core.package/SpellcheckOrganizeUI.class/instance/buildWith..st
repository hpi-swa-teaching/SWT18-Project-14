as yet unclassified
buildWith: builder

	| windowSpec alternativesListSpec ignoreButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec 
		model: self;
		extent: 300@400;
		label: 'OrganizeUI';
		children: OrderedCollection new.
				
	alternativesListSpec := builder pluggableListSpec new.
	alternativesListSpec 
		model: self;
		frame: (0@0 corner: 0.7@1);
		list: #wordList;
		getIndex: #selectedOrganizeIndex; 
		setIndex: #selectedOrganizeIndex:.
	windowSpec children add: alternativesListSpec.
	
	ignoreButtonSpec := builder pluggableButtonSpec new.
	ignoreButtonSpec 
		model: self;
		label: 'Ignore';
		action: #ignore;
		frame: (0.7@0 corner: 1@0.05). 
	windowSpec children add: ignoreButtonSpec.		
		
	^ builder build: windowSpec 