"
Description
--------------------

Page containing all the Commander2 integration to MDL examples.
"
Class {
	#name : #MDLCommander2DemoPage,
	#superclass : #MDLDemoPageWithList,
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #accessing }
MDLCommander2DemoPage class >> pageName [
	^ 'Commander2'
]

{ #category : #accessing }
MDLCommander2DemoPage class >> priority [
	^ 70
]

{ #category : #rendering }
MDLCommander2DemoPage >> renderPageDescriptionOn: html [
	html
		paragraph:
			'TODO: provide nice explanation...'.
]

{ #category : #accessing }
MDLCommander2DemoPage >> screens [
	^ MDLCommander2Demo subclasses
]
