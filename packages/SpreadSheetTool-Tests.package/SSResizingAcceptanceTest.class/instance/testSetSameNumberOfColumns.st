testing
testSetSameNumberOfColumns
	"Test for #5 (Resizable tables)"

	^ self
		testChangeSheetRangeWithoutDeletedContentFor:#columns
		to: self columnCount
		notChanging: #rows