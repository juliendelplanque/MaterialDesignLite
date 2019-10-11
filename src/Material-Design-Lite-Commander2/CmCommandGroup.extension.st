Extension { #name : #CmCommandGroup }

{ #category : #'*Material-Design-Lite-Commander2' }
CmCommandGroup >> asMDLCommandGroup [
	^ self decorateWith: MDLCommandGroup
]

{ #category : #'*Material-Design-Lite-Commander2' }
CmCommandGroup class >> forMDL [
	^ self new asMDLCommandGroup
]
