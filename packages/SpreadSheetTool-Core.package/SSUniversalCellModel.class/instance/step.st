stepping
step

	| newObject newHash |
	newObject := self getter ifNotNil: [self parent object executeMethod: self getter].
	newHash := newObject hash.
	latestHash = newObject hash ifFalse: [
		self withoutObservingDo: [self object: newObject].
		latestHash := newHash].