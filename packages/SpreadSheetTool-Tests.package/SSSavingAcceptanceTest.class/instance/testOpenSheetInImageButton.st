testing
testOpenSheetInImageButton
	"Acceptance test for #14 (Save/Load sheet in image)"

	| openButton |
	openButton := self subject findByLabel: 'Open sheet'.
	self assert: openButton isUnique.