testing-distributing
testDistributeCellsInDimension: aVaryingDimensionSymbol unchangedDimension: anUnchangedDimension dimensionName: aDimensionName
	"Test for #8 (Distribute rows/columns)"

	| oldBounds oldScales newVaryingScales |
	self bringChaosOverTheSplitters.
	
	oldBounds := self subject bounds.
	oldScales := self findCells morphs
		collect: [:morph | morph model -> (morph in: anUnchangedDimension)]
		as: Dictionary.
	
	(self subject findByLabel: 'Distribute ', aDimensionName) click.
	self subject redraw.
	
	newVaryingScales := self findCells morphs
		collect: aVaryingDimensionSymbol.
	self
		assert: [newVaryingScales range < 5]
			description: 'All ', aDimensionName, ' should be of equal size';
		assert: oldBounds equals: self subject bounds
			description: 'The window size should not change while distributing cells'.
	oldScales keysAndValuesDo: [:model :oldScale | | cell |
		cell := model containingMorphicModels singleOne.
		self
			assert: oldScale equals: (cell in: anUnchangedDimension)
			description: 'The ', anUnchangedDimension, ' should not change'].