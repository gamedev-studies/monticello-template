"example classes, instVars below are not required"
Class {
	#name : #MtExample,
	#superclass : #Object,
	#instVars : [
		'lorem',
		'ipsum'
	],
	#category : #'MtExample'
}

{ #category : #'main' }
"example code to run as a test"
MtExample >> run [
	Transcript show: 'This is a test'.
	Transcript cr.
]
