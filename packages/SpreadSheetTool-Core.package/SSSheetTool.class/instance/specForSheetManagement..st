toolbuilder
specForSheetManagement: aBuilder

	| children |
	children := { 
		self specForNewSheetButton: aBuilder.
		self specForOpenSheetButton: aBuilder.
		self specForSaveSheetButton: aBuilder }.
	^ aBuilder pluggablePanelSpec new
		children: children;
		layout: #vertical;
		yourself
	