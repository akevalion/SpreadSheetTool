interaction
rowCount: aRowCount columnCount: aColumnCount

	(self okToChangeRowCount: aRowCount columnCount: aColumnCount)
		ifFalse: [^ self].
	
	self contentSheet
		rowCount: aRowCount
		columnCount: aColumnCount.
	self containingWindows do: [:window | window
		minimumExtent: self minimumExtent;
		extent: window extent].
	self changed: #buildCellsPanel.