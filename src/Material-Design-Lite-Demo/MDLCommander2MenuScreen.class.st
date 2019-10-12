Class {
	#name : #MDLCommander2MenuScreen,
	#superclass : #MDLCommander2Demo,
	#category : #'Material-Design-Lite-Demo-Commander2'
}

{ #category : #accessing }
MDLCommander2MenuScreen class >> description [
	"I should return a String that is the global description of the component."
	
	^ 'How to build MDL menu from Commander2 command group.'
]

{ #category : #accessing }
MDLCommander2MenuScreen class >> icon [
		^'compmenusPng'
]

{ #category : #accessing }
MDLCommander2MenuScreen class >> title [
	"I should return the title of the component screen."

	^ 'Menu generation'
]

{ #category : #rendering }
MDLCommander2MenuScreen >> renderScreenContentOn: html [
	html paragraph: [ html small: 'Note: The menu requires a non-static positioned parent element. Positioning options may not work properly if the menu is inside of a statically positioned node.' ].
	"self
		render: self bottomMenus on: html;
		render: self topMenus on: html"
]
