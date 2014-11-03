Battleship
==============
battleship ruby practice

##CRC Cards

###Game Class

|it should:|it interacts with:|
|-----|-----|
|- have two players| player|
|- must be able to start| |
|- chooses a player to start| |
|- must end| |


###Player Class

it should:
- when initialized players are given two empty boards and a certain amount of ships
- place the ships
- shoots and updates boards
- sees board
- be able to win


it interacts with:
- game
- board

###Board Class

it should:
- capacity of 100 squares
- belongs to a player
- needs to know if it is the primary or tracking
- needs to tell the player if all the ships have sunk
- asks the player to place a ship
- keeps track of which ships have not been placed
- needs to know about square functions
- needs to a grid
- square location should be [a-j][1-10]

it interacts with:
- ships
- player
- square

###Square Class
it should:
- belongs to a board
- records ships
- records shots
- has water where there are no ships
- board tells ships if they are hit
- must be unique

it interacts with:
-board
-ship

###Ship Class

it should:
- be able to float
- be able to sink
- has a length
- needs an identifier 

it interacts with:
- board
- square

Stuff we don't need to think about for a simple prototype

3x3 board - borrow from chris' noghts and crosses
both players see everything
one ship      

let's try to get a prototype quick
