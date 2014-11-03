Battleship
==============
battleship ruby practice

##CRC Cards

###Game Class

it should:
- have two players
- must be able to start
- chooses a player to start
- must end

it interacts with:
- player

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
- records ships
- records shots
- has water where there are no ships
- board tells ships if they are hit
- needs to know if it is the primary or tracking
- needs to tell the player if all the ships have sunk
- accepts intruction to place the ships
- needs to know the where the ships are placed

it interacts with:
- ships
- player

###Ship Class

it should:
- be able to float
- be able to sink
- has a length
- needs an identifier 

it interacts with:
- board
