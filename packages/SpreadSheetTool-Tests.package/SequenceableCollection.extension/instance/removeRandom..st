*SpreadSheetTool-Tests-removing
removeRandom: aGenerator

	^ self removeAt: (aGenerator nextInt: self size).