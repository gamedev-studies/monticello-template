# Monticello Template
A template for creating your own Monticello repository with baselines.

## How does it work?
- In the src folder, you can see 2 folders. One is the baseline, the other is your actual code. 
- Your repository dependencies are all described inside the baseline. For example, in BaselineOfMtExample.class.st you can see 1 dependency being required: Roassal3Exporters. This dependency is just an example and can be removed if you do not want to use it.
- Pharo will execute the code in your BaselineOfMtExample.class.st, download and install the dependencies, and the dependencies of the dependencies, and so on.

## How do I use it?
- Add your dependencies to BaselineOfMtExample
- Add your code to MtExample. You can have more classes if you want.
- Replace the word "MtExample" everywhere by the name of your repository. 

## How do I install it?
Open the Playground and copy/paste the following. If you create another repo based on this one, remember to change the baseline and repository name accordingly.

    Metacello new
        baseline: 'MtExample';
        repository: 'github://gamedev-studies/monticello-template:main';
        onConflict: [ :ex | ex useIncoming ];
        onUpgrade: [ :ex | ex useIncoming ];
        onDowngrade: [ :ex | ex useLoaded ];
        load.

## How do I run the test?
Open the Playground and copy/paste the following. If you create another repo based on this one, remember to change the class name accordingly.

    "open the Playground and type"
    test := MtExample new.
    test run.