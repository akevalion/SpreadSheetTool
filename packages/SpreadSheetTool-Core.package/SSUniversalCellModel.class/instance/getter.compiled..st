accessing
getter: aFormula compiled: aBlock

	getterFormula := aFormula.
	getterBlock := aBlock.
	
	(model isKindOf: SSCellModel) ifTrue: [
		self withoutObservingDo: [
			model acceptContents: aFormula.
			self flag: #workaround]].