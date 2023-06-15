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
        "list the dependencies you wish to install, one method must be created for each; self nameOfDependency: spec."
		self Roassal3Exporters: spec.
    ]

]

{ #category : #dependencies }
"create a method like this for each dependency you wish to install"
BaselineOfMtExample >> Roassal3Exporters: spec [

	spec
		baseline: 'Roassal3Exporters'
		with: [ spec repository: 'github://ObjectProfile/Roassal3Exporters' ]
        
]