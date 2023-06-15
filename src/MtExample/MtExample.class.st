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
MtExample >> run [
"some code to run as a test"
	Transcript show: 'This is a test'.
	Transcript cr.
]
