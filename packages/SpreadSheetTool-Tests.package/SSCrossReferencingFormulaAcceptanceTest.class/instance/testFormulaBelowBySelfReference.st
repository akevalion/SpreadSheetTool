testing
testFormulaBelowBySelfReference
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell belowBy: 0'
		in: 3 @ 3
		openDebuggerNotifying: 'self'.