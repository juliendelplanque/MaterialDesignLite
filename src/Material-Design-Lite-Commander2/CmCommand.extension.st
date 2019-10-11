Extension { #name : #CmCommand }

{ #category : #'*Material-Design-Lite-Commander2' }
CmCommand >> asMDLCommand [
	^ self decorateWith: MDLCommand
]

{ #category : #'*Material-Design-Lite-Commander2' }
CmCommand class >> forMDL [
	^ self new asMDLCommand
]
