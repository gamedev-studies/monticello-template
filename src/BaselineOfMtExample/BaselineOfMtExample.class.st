"
Baseline of MtExample
"
Class {
	#name : #BaselineOfMtExample,
	#superclass : #BaselineOf,
	#category : #BaselineOfMtExample
}

{ #category : #baselines }
BaselineOfMtExample >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
        "Packages"
		self Roassal3Exporters: spec.
    ]

]

{ #category : #dependencies }
BaselineOfMtExample >> Roassal3Exporters: spec [

	spec
		baseline: 'Roassal3Exporters'
		with: [ spec repository: 'github://ObjectProfile/Roassal3Exporters' ]
        
]