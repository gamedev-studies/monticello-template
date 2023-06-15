# Monticello Template
A template for creating your own Monticello repository with baselines.

## How does it work?
In the src folder, you can see 2 folders. One is the baseline, the other is your actual code. Your repository dependencies are all described inside the baseline. Pharo will download and install your dependencies, and the dependencies of the dependencies, and so on.

## How do I use it?
- Add your dependencies to BaselineOfMtExample
- Add your code to MtExample. You can have more classes if you want.
- Replace the word "MtExample" everywhere by the name of your repository. 

## How do I install it?
    Metacello new
        baseline: 'MtExample';
        repository: 'github://your-username/your-repository-name:branch';
        onConflict: [ :ex | ex useIncoming ];
        onUpgrade: [ :ex | ex useIncoming ];
        onDowngrade: [ :ex | ex useLoaded ];
        load.

## How do I run the test?

    "open the Playground and type"
    test := MtExample new.
    test run.