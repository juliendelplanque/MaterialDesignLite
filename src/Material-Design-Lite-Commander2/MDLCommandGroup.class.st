Class {
	#name : #MDLCommandGroup,
	#superclass : #CmUICommandGroup,
	#category : #'Material-Design-Lite-Commander2'
}

{ #category : #default }
MDLCommandGroup class >> defaultDisplayStrategy [

	^ CmUIDisplayAsGroup new
]

{ #category : #converting }
MDLCommandGroup >> asMDLMenuOn: htmlCanvas [
	MDLMenuBuilder new
		htmlCanvas: htmlCanvas;
		visit: self
]
