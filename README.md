Battleship
==============

Battleship is our second week task.  This has been the first task that we have structured and worked upon completely in a group.  As such, this has been the first task in which we have begun to deploy concepts such as kanban cards and collobarated our work via branching on Github.  Our team has collaborated via a repository managed on one team member's account, with everyone assigned as a collaborator.  Each morning, we held stand-up meetings to discuss progress, issues, and our approach.  We rotated in pairing and started to refactor.  To advance this in future, we should take this to another level and check we are consistent with the SOLID principles.  In terms of new Ruby concepts, we learnt about Struct this week.  We also begun to consider the User Interface and a central game "engine."  


##CRC Cards

###Game Class

|it should:|it interacts with:|
|-----|-----|
|- have two players|- player|
|- must be able to start| |
|- chooses a player to start| |
|- must end| |


###Player Class

|it should:|it interacts with:|
|-----|-----|
|- when initialized players are given two empty boards and a certain amount of ships |- game |
|- place the ships |-board|
|- shoots and updates boards| |
|- sees board| |
|- be able to win| |


###Board Class

|it should:|it interacts with:|
|-----|-----|
|- capacity of 100 squares|-ships|
|- belongs to a player|-player|
|- needs to know if it is the primary or tracking|-square (cell)|
|- needs to tell the player if all the ships have sunk| |
|- asks the player to place a ship| |
|- keeps track of which ships have not been placed| |
|- needs to know about square functions| |
|- needs to a grid| |
|- square location should be [a-j][1-10]| |


###Square Class

|it should:|it interacts with:|
|-----|-----|
|- belongs to a board|-board|
|- records ships|-ship|
|- records shots| |
|- has water where there are no ships| |
|- board tells ships if they are hit| |
|- must be unique| |


###Ship Class

|it should:|it interacts with:|
|-----|-----|
|- be able to float|-board|
|- be able to sink|-square (cell)|
|- has a length| |
|- needs an identifier| |
