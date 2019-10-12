Class {
	#name : #MDLMenuBuilder,
	#superclass : #CmVisitor,
	#instVars : [
		'menuButtonWidget',
		'htmlCanvas'
	],
	#category : #'Material-Design-Lite-Commander2'
}

{ #category : #accessing }
MDLMenuBuilder >> htmlCanvas [
	^ htmlCanvas
]

{ #category : #accessing }
MDLMenuBuilder >> htmlCanvas: anObject [
	htmlCanvas := anObject
]

{ #category : #visiting }
MDLMenuBuilder >> visitCommand: aCmCommandEntry [
	self htmlCanvas
		mdlMenuItem: [ 
			self htmlCanvas anchor
				callback: [ aCmCommandEntry execute ];
				with: [ self htmlCanvas text: aCmCommandEntry name ] ]
]

{ #category : #visiting }
MDLMenuBuilder >> visitCommandGroup: aCmCommandsGroup [
	self htmlCanvas div
		id: self htmlCanvas nextId;
		class:
			'menuButtonWidgetButton mdl-button mdl-js-button menuButtonWidgetButton';
		with: [ self htmlCanvas mdlIcon: 'arrow_drop_down' ].
	self htmlCanvas mdlMenu
		bottomLeft;
		for: self htmlCanvas lastId;
		class: 'menuButtonWidgetMenu';
		with: [ 
			aCmCommandsGroup entries
				do: [ :command | command acceptVisitor: self ] ]
]
