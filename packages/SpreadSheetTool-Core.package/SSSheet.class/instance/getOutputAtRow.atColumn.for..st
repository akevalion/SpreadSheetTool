accessing
getOutputAtRow: aRow atColumn: aColumn for: aClient

	| target |
	aColumn @ aRow = (0 @ 0)
		ifTrue: [self errorSubscriptBounds: aColumn @ aRow].
	target := true
		caseOf: {
			[aColumn = 0] -> [self rowHeaderAt: aRow].
			[aRow = 0] -> [self columnHeaderAt: aColumn] }
		otherwise: [self atRow: aRow atColumn: aColumn].
	aClient addServer: target.
	^ target output