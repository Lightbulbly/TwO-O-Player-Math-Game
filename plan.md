## Task 1: Extract Nouns for Classes

Read the description above again and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.

`Player`

`Game - the game's logic, verify answers, update scores`

`Question - generate questions`

## Task 2: Write their roles

### What is the role for each class?

#### Write out a brief paragraph describing the role that class will play in your app.

`Player class can initialize player entities.`
`Game can initialize game instances to keep track of and verify players' scores and decide if the game goes on or end.`

### Remember that objects are important for two things:

### State: Storing data describing themselves (variables)

### Behavior: Defining actions that can be performed on them (methods)

### Write down the methods for each class while also speaking to the following points:

#### What information is relevant to each class?

`Player: name, score`
`Game: player, score, question, response, answer`
`Question: question, answer, expected answer`

#### What will they need in order to be initialized?

`Player needs a name to be initialized`
`Game needs two players and a question`

#### What public methods will be defined on them?

#### Furthermore:

#### Which class will contain the game loop (where each instance of the loop is the other players turn)?

`Game`

#### Which class should manage who the current_player is?

`Game`

#### Which class(es) will contain user I/O and which will not have any?

`Question`
