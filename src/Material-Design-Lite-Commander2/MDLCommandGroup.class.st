Class {
	#name : #MDLCommandGroup,
	#superclass : #CmUICommandGroup,
	#category : #'Material-Design-Lite-Commander2'
}

{ #category : #converting }
MDLCommandGroup >> asMDLMenuOn: htmlCanvas [
	MDLMenuBuilder new
		htmlCanvas: htmlCanvas;
		visit: self
]
