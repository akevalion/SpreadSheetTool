running
tearDown

	self toolUnderTest
		removeSheetNamed: sheetName
		ifAbsent: [].
	[windowHeap do: #abandon]
		on: ProvideAnswerNotification
		do: [:notification | notification resume: true].
	super tearDown.