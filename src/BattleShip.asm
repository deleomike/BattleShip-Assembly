.data
#BattleShip
#Made By Michael DeLeo 2017
#Penn State Behrend

#NOTES:
#Letter coordinate is translated into a number when entered
#Board size is 1024 x 512
#uses i/o keyboard
#A-K
#1-9


#POSSIBILITIES:
#Another message with casualties, as well as what ship has just sunk
Stack:
	.word 0:80
Carrier_name: .asciiz "Aircraft Carrier"
BattleShip_name: .asciiz "BattleShip"
Submarine_name: .asciiz "Submarine"
Cruiser_name: .asciiz "Cruiser"
Destroyer_name: .asciiz "Destroyer"

next_line: .asciiz "\n"

Prompt_Rules: .asciiz "Rules of the Game:\n1. Select a setup mode (Randomly setup ships, or select your ships locations).\n2. Select a Mode Normal or Salvo\n3. Shots must be between A-K for the x axis, and 1-9 for the y axis\n4. A ship sinks when it has been hit for all its times\nCarrier: 5\nBattleShip: 4\nSubmarine: 3\nCruiser: 3\nDestroyer: 2\n5. You play against Semi-Intelligent AI Panda. First to lose all their ships, lose."
				
Prompt_Random_Setup: .asciiz "\nRandom Setup? Y/N"
Prompt_Mode_Setup: .asciiz "Normal Mode or Salvo Mode? N/S"
Prompt_Shot: .asciiz " Weapons Systems On Standby. Coordinates (A-K | 1-9): "
Prompt_Shot_Repeat: .asciiz "Coordinate Invalid (A-K | 1-9): "
Prompt_Redo_Placement: .asciiz " Is already there."
Prompt_Firing: .asciiz "Firing."
Prompt_Location_Setup: .asciiz " Upper Left Corner of Ship (A-K) | (1-11):"
Prompt_Orientation: .asciiz "\nOrientation? Right (R) or Down (D):"
Prompt_Self_Ack: .asciiz "Done."
Prompt_Next_Line: .asciiz "\n"
Prompt_Mode_Explain: .asciiz "\nNormal mode is your familiar BattleShip Game. You shoot once, and then your opponent shoots.\nRed Mark means a hit, White Mark means a miss.\nSalvo mode is a new way to play BattleShip. A Salvo is defined as when an entire fleet fires\ntheir weapons all at once. You have 1 shot for every ship still alive.\n"
AI_Won: .asciiz "Semi-Intelligent AI: PANDA Wins"
User_Won: .asciiz "You Win."
User_name: .asciiz "U5ER"
AI_name: .asciiz "AI PANDA"
Game_Name: "BATTLE5HIP"

X_One: .asciiz "A"
	.asciiz "B"    
	.asciiz	"C"    
	.asciiz	"D"    
	.asciiz	"E"    
	.asciiz	"F"    
	.asciiz	"G"
	.asciiz	"H"
	.asciiz	"I"   
	.asciiz	"J"   
X_Last:	.asciiz	"K"
#loaded into outtext
Y_Axis:
Y_one:	.asciiz "1"
Y_two:	.asciiz "2"
Y_three: .asciiz "3"
Y_four: .asciiz "4"
Y_five: .asciiz "5"
Y_six: .asciiz "6"
Y_seven: .asciiz "7"
Y_eight: .asciiz "8"
Y_nine: .asciiz "9"	

Carrier_Data:
	.word	5	#Number of Hits (total)
	.word	5	#Number of Hits left
	.word	Carrier_name	#Initialize address of string for carrier
	.word	0	#Initialize address of table for printing ship
	.word 	Carrier_Location_X,Carrier_Location_Y	#array for letter coordinates, array for number coordinates
	#may need more data
BattleShip_Data:
	.word	4	#Number of Hits (total)
	.word	4	#Number of Hits left
	.word	BattleShip_name	#Initialize address of string for carrier
	.word	0	#Initialize address of table for printing ship
	.word 	BattleShip_Location_X,BattleShip_Location_Y	#array for letter coordinates, array for number coordinates
	#may need more data	
Submarine_Data:
	.word	3	#Number of Hits (total)
	.word	3	#Number of Hits left
	.word	Submarine_name	#Initialize address of string for carrier
	.word	0	#Initialize address of table for printing ship
	.word 	Submarine_Location_X,Submarine_Location_Y	#array for letter coordinates, array for number coordinates
	#may need more data
Cruiser_Data:
	.word	3	#Number of Hits (total)
	.word	3	#Number of Hits left
	.word	Cruiser_name	#Initialize address of string for carrier
	.word	0	#Initialize address of table for printing ship
	.word 	Cruiser_Location_X,Cruiser_Location_Y	#array for letter coordinates, array for number coordinates
	#may need more data
Destroyer_Data:
	.word	2	#Number of Hits (total)
	.word	2	#Number of Hits left
	.word	Destroyer_name	#Initialize address of string for carrier
	.word	0	#Initialize address of table for printing ship
	.word 	Destroyer_Location_X,Destroyer_Location_Y	#array for letter coordinates, array for number coordinates
	#may need more data
########################################
AI_Carrier_Data:
	.word	5	#Number of Hits (total)
	.word	5	#Number of Hits left
	.word	Carrier_name	#Initialize address of string for carrier
	.word	0	#Initialize address of table for printing ship
	.word 	AI_Carrier_Location_X,AI_Carrier_Location_Y	#array for letter coordinates, array for number coordinates
	#may need more data
AI_BattleShip_Data:
	.word	4	#Number of Hits (total)
	.word	4	#Number of Hits left
	.word	BattleShip_name	#Initialize address of string for carrier
	.word	0	#Initialize address of table for printing ship
	.word 	AI_BattleShip_Location_X,AI_BattleShip_Location_Y	#array for letter coordinates, array for number coordinates
	#may need more data	
AI_Submarine_Data:
	.word	3	#Number of Hits (total)
	.word	3	#Number of Hits left
	.word	Submarine_name	#Initialize address of string for carrier
	.word	0	#Initialize address of table for printing ship
	.word 	AI_Submarine_Location_X,AI_Submarine_Location_Y	#array for letter coordinates, array for number coordinates
	#may need more data
AI_Cruiser_Data:
	.word	3	#Number of Hits (total)
	.word	3	#Number of Hits left
	.word	Cruiser_name	#Initialize address of string for carrier
	.word	0	#Initialize address of table for printing ship
	.word 	AI_Cruiser_Location_X,AI_Cruiser_Location_Y	#array for letter coordinates, array for number coordinates
	#may need more data
AI_Destroyer_Data:
	.word	2	#Number of Hits (total)
	.word	2	#Number of Hits left
	.word	Destroyer_name	#Initialize address of string for carrier
	.word	0	#Initialize address of table for printing ship
	.word 	AI_Destroyer_Location_X,AI_Destroyer_Location_Y	#array for letter coordinates, array for number coordinates
	#may need more data
#TODO ADD THE REST OF DATA

Color_Table:
	.word 0x000000	#black
	.word 0x0077be	#ocean blue
	.word 0x848482	#Ship color
	.word 0xff0000	#red hit marker
	.word 0xffffff	#White

#Hit map, with 0 unhit, 1 hit, 2 miss
Row1: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
Row2: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
Row3: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
Row4: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
Row5: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
Row6: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
Row7: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
Row8: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
Row9: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K

AIRow1: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AIRow2: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AIRow3: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AIRow4: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AIRow5: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AIRow6: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AIRow7: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AIRow8: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AIRow9: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K

#Location map, 1 is a ship, 0 is nothing
LOCRow1: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
LOCRow2: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
LOCRow3: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
LOCRow4: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
LOCRow5: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
LOCRow6: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
LOCRow7: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
LOCRow8: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
LOCRow9: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K

AILOCRow1: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AILOCRow2: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AILOCRow3: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AILOCRow4: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AILOCRow5: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AILOCRow6: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AILOCRow7: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AILOCRow8: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K
AILOCRow9: .word 0,0,0,0,0,0,0,0,0,0,0	#A-K

#x is Letter coordinate (converted to a number 1-#)
#y is number coordinate
Carrier_Location_X: .word -1,-1,-1,-1,-1
Carrier_Location_Y: .word -1,-1,-1,-1,-1

BattleShip_Location_X: .word -1,-1,-1,-1
BattleShip_Location_Y: .word -1,-1,-1,-1

Submarine_Location_X: .word -1,-1,-1
Submarine_Location_Y: .word -1,-1,-1

Cruiser_Location_X: .word -1,-1,-1
Cruiser_Location_Y: .word -1,-1,-1

Destroyer_Location_X: .word -1,-1
Destroyer_Location_Y: .word -1,-1

AI_Carrier_Location_X: .word -1,-1,-1,-1,-1
AI_Carrier_Location_Y: .word -1,-1,-1,-1,-1

AI_BattleShip_Location_X: .word -1,-1,-1,-1
AI_BattleShip_Location_Y: .word -1,-1,-1,-1

AI_Submarine_Location_X: .word -1,-1,-1
AI_Submarine_Location_Y: .word -1,-1,-1

AI_Cruiser_Location_X: .word -1,-1,-1
AI_Cruiser_Location_Y: .word -1,-1,-1

AI_Destroyer_Location_X: .word -1,-1
AI_Destroyer_Location_Y: .word -1,-1

AI_Last_Hit: .word -1,-1		#coordinate of last hit. Reset to -1,-1 once ship is destroyed
#HAS NOT BEEN IMPLEMENTED YET
AI_Ships_Left: .word 0		# used for ships left AI, since stack is weird in main
AI_Last_Hit_Try_Counter: .word	0	#used to brute force the AI, if it equals 10000 then the AI is trapped. Statistically could work not as intended
					#with AI not being encircled

Colors: .word   0x000000        # background color (black)

        .word   0xffffff        # foreground color (white)



DigitTable:

        .byte   ' ', 0,0,0,0,0,0,0,0,0,0,0,0

        .byte   '0', 0x7e,0xff,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0x7e

        .byte   '1', 0x38,0x78,0xf8,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18

        .byte   '2', 0x7e,0xff,0x83,0x06,0x0c,0x18,0x30,0x60,0xc0,0xc1,0xff,0x7e

        .byte   '3', 0x7e,0xff,0x83,0x03,0x03,0x1e,0x1e,0x03,0x03,0x83,0xff,0x7e

        .byte   '4', 0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0x7f,0x03,0x03,0x03,0x03,0x03

        .byte   '5', 0xff,0xff,0xc0,0xc0,0xc0,0xfe,0x7f,0x03,0x03,0x83,0xff,0x7f

        .byte   '6', 0xc0,0xc0,0xc0,0xc0,0xc0,0xfe,0xfe,0xc3,0xc3,0xc3,0xff,0x7e

        .byte   '7', 0x7e,0xff,0x03,0x06,0x06,0x0c,0x0c,0x18,0x18,0x30,0x30,0x60

        .byte   '8', 0x7e,0xff,0xc3,0xc3,0xc3,0x7e,0x7e,0xc3,0xc3,0xc3,0xff,0x7e

        .byte   '9', 0x7e,0xff,0xc3,0xc3,0xc3,0x7f,0x7f,0x03,0x03,0x03,0x03,0x03

        .byte   '+', 0x00,0x00,0x00,0x18,0x18,0x7e,0x7e,0x18,0x18,0x00,0x00,0x00

        .byte   '-', 0x00,0x00,0x00,0x00,0x00,0x7e,0x7e,0x00,0x00,0x00,0x00,0x00

        .byte   '*', 0x00,0x00,0x00,0x66,0x3c,0x18,0x18,0x3c,0x66,0x00,0x00,0x00

        .byte   '/', 0x00,0x00,0x18,0x18,0x00,0x7e,0x7e,0x00,0x18,0x18,0x00,0x00

        .byte   '=', 0x00,0x00,0x00,0x00,0x7e,0x00,0x7e,0x00,0x00,0x00,0x00,0x00

        .byte   'A', 0x18,0x3c,0x66,0xc3,0xc3,0xc3,0xff,0xff,0xc3,0xc3,0xc3,0xc3

        .byte   'B', 0xfc,0xfe,0xc3,0xc3,0xc3,0xfe,0xfe,0xc3,0xc3,0xc3,0xfe,0xfc

        .byte   'C', 0x7e,0xff,0xc1,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc1,0xff,0x7e

        .byte   'D', 0xfc,0xfe,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xfe,0xfc

        .byte   'E', 0xff,0xff,0xc0,0xc0,0xc0,0xfe,0xfe,0xc0,0xc0,0xc0,0xff,0xff

        .byte   'F', 0xff,0xff,0xc0,0xc0,0xc0,0xfe,0xfe,0xc0,0xc0,0xc0,0xc0,0xc0
 
        .byte	'G', 0x7e,0xff,0xc1,0xc0,0xc0,0xc0,0xcf,0xc1,0xc1,0xc1,0xff,0x7e
        
        .byte	'H', 0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0xff,0xc3,0xc3,0xc3,0xc3,0xc3
        
        .byte	'I', 0xff,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0xff
        
        .byte	'J', 0xff,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0xf0
        
        .byte	'K', 0xc3,0xc6,0xc8,0xcc,0xd8,0xf0,0xf0,0xd8,0xcc,0xc8,0xc6,0xc3
        
        .byte 	'L', 0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xc0,0xff,0xff
        
        .byte	'N', 0xc3,0xf3,0xf3,0xf3,0xdb,0xdb,0xdb,0xcf,0xcf,0xcf,0xcf,0xc3
        
        .byte	'P', 0xfc,0xfc,0xc3,0xc3,0xc3,0xfc,0xfc,0xc0,0xc0,0xc0,0xc0,0xc0
        
        .byte	'R', 0xfc,0xfc,0xc3,0xc3,0xc3,0xfc,0xfc,0xd8,0xcc,0xc6,0xc3,0xc3
        
        .byte	'T', 0xff,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18
        
        .byte	'U', 0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xff,0xff
        

#  0x80----  ----0x08
#  0x40--- || ---0x04
#  0x20-- |||| --0x02
#  0x10- |||||| -0x01
#       ||||||||
#       84218421

#   1   ...xx...      0x18
#   2   ..xxxx..      0x3c
#   3   .xx..xx.      0x66
#   4   xx....xx      0xc3
#   5   xx....xx      0xc3
#   6   xx....xx      0xc3
#   7   xxxxxxxx      0xff
#   8   xxxxxxxx      0xff
#   9   xx....xx      0xc3
#  10   xx....xx      0xc3
#  11   xx....xx      0xc3
#  12   xx....xx      0xc3

.text

main:

la $sp, Stack

jal DrawBoard

la $a0, Prompt_Rules
jal Print_String

#Random Setup? Y/N
la $a0, Prompt_Random_Setup
jal Print_String

li $v0, 12
syscall		#read character
beq $v0, 89, Random_Setup	#uppercase Y
beq $v0, 121, Random_Setup	#lowercase y
j Pick_Setup			#it is N
#If random, setup random
Random_Setup:
la $a0, Carrier_Data
jal Random_Set_Location	#set ship
la $a0, Carrier_Data
jal Draw_User_Ship	#show ship

la $a0, BattleShip_Data
jal Random_Set_Location
la $a0, BattleShip_Data
jal Draw_User_Ship	#show ship

la $a0, Submarine_Data
jal Random_Set_Location
la $a0, Submarine_Data
jal Draw_User_Ship	#show ship

la $a0, Cruiser_Data
jal Random_Set_Location
la $a0, Cruiser_Data
jal Draw_User_Ship	#show ship

la $a0, Destroyer_Data
jal Random_Set_Location
la $a0, Destroyer_Data
jal Draw_User_Ship	#show ship
#randomly sets locations of ships


j AI_Random_Setup	#skips over pick setup

#if no, go through list of ships, ask for orientation, and upper left corner
Pick_Setup:
#Ask for a top left corner of the ship, and the orientation
la $a0, Carrier_name
jal Print_String	#print carrier
la $a0, Carrier_Data
jal Set_Location	#set location array with data from user

la $a0, Carrier_Data
jal Draw_User_Ship	#test user ship draw function for carrier

la $a0, BattleShip_name
jal Print_String
la $a0, BattleShip_Data
jal Set_Location

la $a0, BattleShip_Data
jal Draw_User_Ship	#draw ship

la $a0, Submarine_name
jal Print_String
la $a0, Submarine_Data
jal Set_Location

la $a0, Submarine_Data
jal Draw_User_Ship	#draw ship

la $a0, Cruiser_name
jal Print_String
la $a0, Cruiser_Data
jal Set_Location

la $a0, Cruiser_Data
jal Draw_User_Ship	#draw ship

la $a0, Destroyer_name
jal Print_String
la $a0, Destroyer_Data
jal Set_Location	#the above will set the locations for the ships

la $a0, Destroyer_Data
jal Draw_User_Ship

AI_Random_Setup:
la $a0, AI_Carrier_Data
jal AI_Set_Location
la $a0, AI_Carrier_Data
#jal Draw_AI_Ship	#draw ship TEST

la $a0, AI_BattleShip_Data
jal AI_Set_Location
la $a0, AI_BattleShip_Data
#jal Draw_AI_Ship	#TEST

la $a0, AI_Submarine_Data
jal AI_Set_Location
la $a0, AI_Submarine_Data
#jal Draw_AI_Ship	#TEST

la $a0, AI_Cruiser_Data
jal AI_Set_Location
la $a0, AI_Cruiser_Data
#jal Draw_AI_Ship	#TEST

la $a0, AI_Destroyer_Data
jal AI_Set_Location
la $a0, AI_Destroyer_Data
#jal Draw_AI_Ship	#TEST
#randomly sets locations of ships

#SHIPS-
#carrier: 5 Hits
#BattleShip: 4 Hits
#Submarine: 3 Hits
#Cruiser: 3 Hits
#Destroyer: 2 Hits


#draw Board with Gridelines

#Example:
#A	B	C	D	...	A	B	C	D
#1				...1
#2		AI		...2		USER

#load ships into board

#each iteration, the hit markers are loaded last

#mode explanation
la $a0, Prompt_Mode_Explain
jal Print_String

#Ask user for Normal mode or Salvo Mode
la $a0, Prompt_Mode_Setup
jal Print_String

li $v0, 12
syscall		#get character

beq $v0, 83, Salvo	#upper case S
beq $v0, 115, Salvo	#lower case S
#will go to salvo, otherwise itll run into NORMAL

#NORMAL
Normal:
#start loop
#user goes first. Ask for letter:number coordinate
jal User_Shoot_Once	#Get_User_Shot already tests and loops to see if the shot is good
#Re-ask if it is a spot that has already been hit

la $a0, Prompt_Firing
jal Print_String

#TODO
#Display HIT MARKER

#If hit
	#if first hit, display ship with the hit marker as red -1 to hits left
	#if not first hit, Display hit marker with previous hit markers		-1 to hits left
#else
	#keep everything the same. and display location with a white miss marker
######################
#All of the above is taken care of in Get_User_Shot

jal Win_Condition	#2 is AI won, 1 is User won, 0 is no win
bnez $v0, Who_Won

#Checks inbetween, So AI loses if user gets all their ships, before they make an attack

#AI's turn
jal AI_Shoot_Once
#Re-ask if it is a spot that has already been hit
#TODO
#DISPLAY HIT MARKER

#if has_been_hit is true, keep trying to hit 1 around that spot
#else
	#do random shots
	#if hits, display red marker
	#else display white miss marker

jal Win_Condition	#2 is AI won, 1 is User won, 0 is no win
bnez $v0, Who_Won
#check win condition
	#if AI won, display "PANDA Wins"
	#if User wins, display "User wins"
#else loop

#TODO
#Display Board
#Draw Ships on both sides if necessary
#Draw Hit Markers
la $a0, AI_Carrier_Data
jal Draw_Dead_Ship
la $a0, AI_BattleShip_Data
jal Draw_Dead_Ship
la $a0, AI_Submarine_Data
jal Draw_Dead_Ship
la $a0, AI_Cruiser_Data
jal Draw_Dead_Ship
la $a0, AI_Destroyer_Data
jal Draw_Dead_Ship		#draws ships if they are dead
jal Draw_Hit_Markers
j Normal	#Loop

#SALVO MODE
Salvo:
#User enters (number of ships) number of coordinates. letter:number
#TODO Check for each ship as they come through this sequence to shoot from each ship
la $a0, Carrier_Data
jal User_Shoot_If_Alive

la $a0, BattleShip_Data
jal User_Shoot_If_Alive

la $a0,Submarine_Data
jal User_Shoot_If_Alive


la $a0, Cruiser_Data
jal User_Shoot_If_Alive

la $a0, Destroyer_Data
jal User_Shoot_If_Alive

la $a0, Prompt_Firing
jal Print_String

#Print off ship string before each call to Get_User_Shot so it seems like ships are loading.
#BUT, Make it so that the ships that are alive can do this

#check if they are hits
#if they are hits, place a red marker
	#if it is a first hit, red marker
	#else if it is a last hit, display ship
	#else, display red marker with others
#else place a white marker
jal Win_Condition
bnez $v0, Who_Won
#Ai's turn
#Ai takes (number of ships) number of shots. (if one is a hit, the AI will not know until later)

jal AI_How_Many_Left	#gets how many AI ships are left
sw $v0, AI_Ships_Left	#number of ships to loop through
AI_SALVO_LOOP:
	jal AI_Shoot_Once
	lw $t0, AI_Ships_Left	#gets number of ships left
	subi $t0, $t0, 1
	sw $t0, AI_Ships_Left	#update ships left in loop
	bgtz $t0, AI_SALVO_LOOP

la $a0, AI_Carrier_Data
jal Draw_Dead_Ship
la $a0, AI_BattleShip_Data
jal Draw_Dead_Ship
la $a0, AI_Submarine_Data
jal Draw_Dead_Ship
la $a0, AI_Cruiser_Data
jal Draw_Dead_Ship
la $a0, AI_Destroyer_Data
jal Draw_Dead_Ship		#draws ships if they are dead
#Display Hit Marker
jal Draw_Hit_Markers

#random if AI is not looking for a ship in particular
#if it is looking
	#make sure shots are not the same, shoot around the location in question
j Salvo

Who_Won:	#Called from win condition in main
beq $v0, 2, Who_Won_AI
#TODO
#Wipe Screen with some color or something
la $a0, User_Won
jal Print_String
j main

Who_Won_AI:
#TODO
#Wipe Screen with some color or something
la $a0, AI_Won
jal Print_String
j main


#pre: $a0 is string address
#prints string
Print_String:
addiu $sp, $sp, -4
sw $ra, 0($sp)

li $v0, 4
syscall

lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#pre: $a0 is id of generator, $a1 is seed for generator
#post: returns random number in $v0
Randomize:
	addiu $sp, $sp, -4	#set stack pointer
	sw $ra, 0($sp)		#save return
	##!!!!!!! I don't know if this works
	li $v0, 40	#set seed
	syscall
	
	li $v0, 30	#get current time in $a0
	syscall	
	
	li $v0, 41	#Returns random number
	syscall
	
	bgtz $a0, no_negate
	mul $a0, $a0, -1	#makes the random number positive
	
	no_negate:
	
	move $v0, $a0
	
	lw $ra, 0($sp)	#load return
	addiu $sp, $sp, 4
	jr $ra

#pre: $a0 is ship label
#post: will fill in the location arrays
Set_Location:
addiu $sp, $sp, -52
sw $ra, 0($sp)
sw $a0, 4($sp)	#save regs

la $a0, Prompt_Location_Setup
jal Print_String
lw $a0, 4($sp)		#load ship label
jal Access_Array_Data
sw $v0, 8($sp)		#save x array
sw $v1, 12($sp)		#save y array
j No_Redo_Initially	#initally do not ask for replacement

Redo_Placement:
move $a0, $v0		#this will have ship label
jal Access_Name		#get name
move $a0, $v0
jal Print_String	#print ship name in the way

la $a0, Prompt_Redo_Placement
li $v0, 4
syscall			#invalid coordinate, repeat

No_Redo_Initially:
jal Get_Double_Convert	#get coordinates. number is in v0, letter converted is in v1
sw $v0, 16($sp)
sw $v1, 20($sp)		#save upper left coordinate

lw $a0, 4($sp)		#load ship label
jal Access_Max_Hits	#max hits is in $v0
sw $v0, 24($sp)		#save max hits

Redo_Prompt:
la $a0, Prompt_Orientation
jal Print_String	#ask user for orientation
li $v0, 12
syscall			#read character
lw $s3, 8($sp)		#load x array
lw $s4, 12($sp)		#load y array
lw $s5, 24($sp)		#load max hits
beq $v0, 82, ORIENT_R		#uppercase R
beq $v0, 114, ORIENT_R		#lowercase r
beq $v0, 68, ORIENT_D		#uppercase D
beq $v0, 100, ORIENT_D		#lowercase d
j Redo_Prompt
#else the answer is down, so do that here
ORIENT_D:
	lw $s0, 20($sp)	#this is the x coordinate. This will not change here
	lw $s1, 16($sp)	#this is the y coordinate. This will increment up by 1
	sw $s0, 0($s3)	#save the x coordinate to iterator position in x array
	sw $s1, 0($s4)	#save the y coordinate to iterator position in y array
	
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)	#save s regs
	sw $s3, 40($sp)
	sw $s4, 44($sp)
	sw $s5, 48($sp)
	#SHIP COLLISION CHECK
	lw $a0, 20($sp)		#letter is first
	lw $a1, 16($sp)		#number is second param
	lw $a2, 4($sp)		#load option for skipping a ship
	jal User_What_Is_Here	#if it is 0 then it is a good placement
	bnez $v0, Redo_Placement	#if it is not 0, then redo the placement
	
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)	#load s regs
	lw $s3, 40($sp)
	lw $s4, 44($sp)
	lw $s5, 48($sp)
	
	addi $s1, $s1, 1	#increment y coordinate by 1
	beq $s1, 10, Redo_Placement	#ship is out of bounds
	sw $s1, 16($sp)		#update y coordinate
	addi $s3, $s3, 4	#increment x array
	addi $s4, $s4, 4	#increment y array
	subi $s5, $s5, 1	#decrement max hit counter by 1
	bnez $s5, ORIENT_D	#if counter is not 0, loop

j SET_SKIP_OVER
ORIENT_R:	#orient right
	lw $s0, 20($sp)	#this is the x coordinate. This will increment up by 1
	lw $s1, 16($sp)	#this is the y coordinate. This will not change here
	sw $s0, 0($s3)	#save the x coordinate to iterator position in x array
	sw $s1, 0($s4)	#save the y coordinate to iterator position in y array
	
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)	#save s regs
	sw $s3, 40($sp)
	sw $s4, 44($sp)
	sw $s5, 48($sp)
	
	#SHIP COLLISION CHECK
	lw $a0, 20($sp)		#letter is first
	lw $a1, 16($sp)		#number is second param
	lw $a2, 4($sp)		#load option for skipping a ship
	jal User_What_Is_Here	#if it is 0 then it is a good placement
	bnez $v0, Redo_Placement	#if it is not 0, then redo the placement
	
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)	#load s regs
	lw $s3, 40($sp)
	lw $s4, 44($sp)
	lw $s5, 48($sp)
	
	addi $s0, $s0, 1	#increment x coordinate by 1
	beq $s0, 12, Redo_Placement	#ship is out of bounds
	sw $s0, 20($sp)		#update x coordinate
	addi $s3, $s3, 4	#increment x array
	addi $s4, $s4, 4	#increment y array
	subi $s5, $s5, 1	#decrement max hit counter by 1
	bnez $s5, ORIENT_R	#if counter is not 0, loop
SET_SKIP_OVER:
#at this point, the 2D location array should be full of locations for one ship, that make sense for the game battleship
#now set values in the location map
lw $s0, 24($sp)	#load max hits
lw $s1, 8($sp)	#load x array
lw $s2, 12($sp)	#load y array
loop_through_arrays:
	lw $a0, 0($s1)	#load first x value
	lw $a1, 0($s2)	#load first y value
	li $a2, 1	#1 to write there is a boat
	la $a3, LOCRow1	#load user location map
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)	#save s regs
	
	jal Write_2D_Array	#write to 2D array
	
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)	#load s regs
	
	addi $s1, $s1, 4
	addi $s2, $s2, 4	#increment arrays by one word
	
	subi $s0, $s0, 1	#decrement max hits counter by 1
	bnez $s0, loop_through_arrays	#exit loop when counter is 0
	

lw $ra, 0($sp)
addiu $sp, $sp, 52
jr $ra

#pre: $a0 is ship label
#post: will fill in the location arrays
Random_Set_Location:
addiu $sp, $sp, -52
sw $ra, 0($sp)
sw $a0, 4($sp)	#save regs

lw $a0, 4($sp)		#load ship label
jal Access_Array_Data
sw $v0, 8($sp)		#save x array
sw $v1, 12($sp)		#save y array
j Random_No_Redo_Initially	#initally do not ask for replacement

Random_Redo_Placement:
#invalid coordinate, repeat

Random_No_Redo_Initially:
jal Randomize
rem $v0, $v0, 9		#modulus for number coordinate
addi $v0, $v0, 1	#offset randomize modulus
sw $v0, 16($sp)
jal Randomize
rem $v0, $v0, 11	#modulus for letter coordinate
addi $v0, $v0, 1	#offset randomize modulus
sw $v0, 20($sp)		#save upper left coordinate


lw $a0, 4($sp)		#load ship label
jal Access_Max_Hits	#max hits is in $v0
sw $v0, 24($sp)		#save max hits

jal Randomize
rem $v0, $v0, 2		#50 50 chance of right or down

lw $s3, 8($sp)		#load x array
lw $s4, 12($sp)		#load y array
lw $s5, 24($sp)		#load max hits
beqz $v0, RAN_ORIENT_R		#right
#else the answer is down, so do that here
RAN_ORIENT_D:
	lw $s0, 20($sp)	#this is the x coordinate. This will not change here
	lw $s1, 16($sp)	#this is the y coordinate. This will increment up by 1
	sw $s0, 0($s3)	#save the x coordinate to iterator position in x array
	sw $s1, 0($s4)	#save the y coordinate to iterator position in y array
	
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)	#save s regs
	sw $s3, 40($sp)
	sw $s4, 44($sp)
	sw $s5, 48($sp)
	#SHIP COLLISION CHECK
	lw $a0, 20($sp)		#letter is first
	lw $a1, 16($sp)		#number is second param
	lw $a2, 4($sp)		#load option for skipping a ship
	jal User_What_Is_Here	#if it is 0 then it is a good placement
	bnez $v0, Random_Redo_Placement	#if it is not 0, then redo the placement
	
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)	#load s regs
	lw $s3, 40($sp)
	lw $s4, 44($sp)
	lw $s5, 48($sp)
	
	addi $s1, $s1, 1	#increment y coordinate by 1
	beq $s1, 10, Random_Redo_Placement	#ship is out of bounds
	sw $s1, 16($sp)		#update y coordinate
	addi $s3, $s3, 4	#increment x array
	addi $s4, $s4, 4	#increment y array
	subi $s5, $s5, 1	#decrement max hit counter by 1
	bnez $s5, RAN_ORIENT_D	#if counter is not 0, loop

j RAN_SET_SKIP_OVER
RAN_ORIENT_R:	#orient right
	lw $s0, 20($sp)	#this is the x coordinate. This will increment up by 1
	lw $s1, 16($sp)	#this is the y coordinate. This will not change here
	sw $s0, 0($s3)	#save the x coordinate to iterator position in x array
	sw $s1, 0($s4)	#save the y coordinate to iterator position in y array
	
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)	#save s regs
	sw $s3, 40($sp)
	sw $s4, 44($sp)
	sw $s5, 48($sp)
	
	#SHIP COLLISION CHECK
	lw $a0, 20($sp)		#letter is first
	lw $a1, 16($sp)		#number is second param
	lw $a2, 4($sp)		#load option for skipping a ship
	jal User_What_Is_Here	#if it is 0 then it is a good placement
	bnez $v0, Random_Redo_Placement	#if it is not 0, then redo the placement
	
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)	#load s regs
	lw $s3, 40($sp)
	lw $s4, 44($sp)
	lw $s5, 48($sp)
	
	addi $s0, $s0, 1	#increment x coordinate by 1
	beq $s0, 12, Random_Redo_Placement	#ship is out of bounds
	sw $s0, 20($sp)		#update x coordinate
	addi $s3, $s3, 4	#increment x array
	addi $s4, $s4, 4	#increment y array
	subi $s5, $s5, 1	#decrement max hit counter by 1
	bnez $s5, RAN_ORIENT_R	#if counter is not 0, loop
RAN_SET_SKIP_OVER:
#at this point, the 2D location array should be full of locations for one ship, that make sense for the game battleship
#now set values in the location map
lw $s0, 24($sp)	#load max hits
lw $s1, 8($sp)	#load x array
lw $s2, 12($sp)	#load y array
Random_loop_through_arrays:
	lw $a0, 0($s1)	#load first x value
	lw $a1, 0($s2)	#load first y value
	li $a2, 1	#1 to write there is a boat
	la $a3, LOCRow1	#load user location map
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)	#save s regs
	
	jal Write_2D_Array	#write to 2D array
	
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)	#load s regs
	
	addi $s1, $s1, 4
	addi $s2, $s2, 4	#increment arrays by one word
	
	subi $s0, $s0, 1	#decrement max hits counter by 1
	bnez $s0, Random_loop_through_arrays	#exit loop when counter is 0
	

lw $ra, 0($sp)
addiu $sp, $sp, 52
jr $ra

#pre: $a0 is ship label
#post: will fill in the location arrays
AI_Set_Location:
addiu $sp, $sp, -52
sw $ra, 0($sp)
sw $a0, 4($sp)	#save regs

lw $a0, 4($sp)		#load ship label
jal Access_Array_Data
sw $v0, 8($sp)		#save x array
sw $v1, 12($sp)		#save y array
j AI_No_Redo_Initially	#initally do not ask for replacement

AI_Redo_Placement:
#invalid coordinate, repeat

AI_No_Redo_Initially:
jal Randomize
rem $v0, $v0, 9		#modulus for number coordinate
addi $v0, $v0, 1	#offset randomize modulus
sw $v0, 16($sp)
jal Randomize
rem $v0, $v0, 11	#modulus for letter coordinate
addi $v0, $v0, 1	#offset randomize modulus
sw $v0, 20($sp)		#save upper left coordinate


lw $a0, 4($sp)		#load ship label
jal Access_Max_Hits	#max hits is in $v0
sw $v0, 24($sp)		#save max hits

jal Randomize
rem $v0, $v0, 2		#50 50 chance of right or down

lw $s3, 8($sp)		#load x array
lw $s4, 12($sp)		#load y array
lw $s5, 24($sp)		#load max hits
beqz $v0, AI_ORIENT_R		#right
#else the answer is down, so do that here
AI_ORIENT_D:
	lw $s0, 20($sp)	#this is the x coordinate. This will not change here
	lw $s1, 16($sp)	#this is the y coordinate. This will increment up by 1
	sw $s0, 0($s3)	#save the x coordinate to iterator position in x array
	sw $s1, 0($s4)	#save the y coordinate to iterator position in y array
	
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)	#save s regs
	sw $s3, 40($sp)
	sw $s4, 44($sp)
	sw $s5, 48($sp)
	#SHIP COLLISION CHECK
	lw $a0, 20($sp)		#letter is first
	lw $a1, 16($sp)		#number is second param
	lw $a2, 4($sp)		#load option for skipping a ship
	jal AI_What_Is_Here	#if it is 0 then it is a good placement
	bnez $v0, AI_Redo_Placement	#if it is not 0, then redo the placement
	
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)	#load s regs
	lw $s3, 40($sp)
	lw $s4, 44($sp)
	lw $s5, 48($sp)
	
	addi $s1, $s1, 1	#increment y coordinate by 1
	beq $s1, 10, AI_Redo_Placement	#ship is out of bounds
	sw $s1, 16($sp)		#update y coordinate
	addi $s3, $s3, 4	#increment x array
	addi $s4, $s4, 4	#increment y array
	subi $s5, $s5, 1	#decrement max hit counter by 1
	bnez $s5, AI_ORIENT_D	#if counter is not 0, loop

j AI_SET_SKIP_OVER
AI_ORIENT_R:	#orient right
	lw $s0, 20($sp)	#this is the x coordinate. This will increment up by 1
	lw $s1, 16($sp)	#this is the y coordinate. This will not change here
	sw $s0, 0($s3)	#save the x coordinate to iterator position in x array
	sw $s1, 0($s4)	#save the y coordinate to iterator position in y array
	
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)	#save s regs
	sw $s3, 40($sp)
	sw $s4, 44($sp)
	sw $s5, 48($sp)
	
	#SHIP COLLISION CHECK
	lw $a0, 20($sp)		#letter is first
	lw $a1, 16($sp)		#number is second param
	lw $a2, 4($sp)		#load option for skipping a ship
	jal AI_What_Is_Here	#if it is 0 then it is a good placement
	bnez $v0, AI_Redo_Placement	#if it is not 0, then redo the placement
	
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)	#load s regs
	lw $s3, 40($sp)
	lw $s4, 44($sp)
	lw $s5, 48($sp)
	
	addi $s0, $s0, 1	#increment x coordinate by 1
	beq $s0, 12, AI_Redo_Placement	#ship is out of bounds
	sw $s0, 20($sp)		#update x coordinate
	addi $s3, $s3, 4	#increment x array
	addi $s4, $s4, 4	#increment y array
	subi $s5, $s5, 1	#decrement max hit counter by 1
	bnez $s5, AI_ORIENT_R	#if counter is not 0, loop
AI_SET_SKIP_OVER:
#at this point, the 2D location array should be full of locations for one ship, that make sense for the game battleship
#now set values in the location map
lw $s0, 24($sp)	#load max hits
lw $s1, 8($sp)	#load x array
lw $s2, 12($sp)	#load y array
AI_loop_through_arrays:
	lw $a0, 0($s1)	#load first x value
	lw $a1, 0($s2)	#load first y value
	li $a2, 1	#1 to write there is a boat
	la $a3, AILOCRow1	#load user location map
	sw $s0, 28($sp)
	sw $s1, 32($sp)
	sw $s2, 36($sp)	#save s regs
	
	jal Write_2D_Array	#write to 2D array
	
	lw $s0, 28($sp)
	lw $s1, 32($sp)
	lw $s2, 36($sp)	#load s regs
	
	addi $s1, $s1, 4
	addi $s2, $s2, 4	#increment arrays by one word
	
	subi $s0, $s0, 1	#decrement max hits counter by 1
	bnez $s0, AI_loop_through_arrays	#exit loop when counter is 0
	

lw $ra, 0($sp)
addiu $sp, $sp, 52
jr $ra


#Pre:Nothing
#Post: $v0 2 if AI won, 1 if User won, 0 if no one has won
Win_Condition:
addiu $sp, $sp, -4
sw $ra, 0($sp)

jal User_How_Many_Left
beqz $v0, WIN_AI	#user has lost

jal AI_How_Many_Left
beqz $v0, WIN_USER	#AI has lost

#no one has won yet  
li $v0, 0		#0 shows no winner
j NO_WIN

WIN_AI:
	li $v0, 2	#indicates AI won
	j NO_WIN
	
WIN_USER:
	li $v0, 1	#indicates User won
	j NO_WIN

NO_WIN:


lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#AI OR USER
#pre: $a0 is ship label
#post: 1 if ship is alive, 0 if ship is dead
Is_Ship_Alive:
addiu $sp, $sp, -8
sw $ra, 0($sp)
sw $a0, 4($sp)	#save regs

jal Access_Max_Hits 
move $t0, $v0	#move max hits to temporary

jal Access_Hits
beqz $v0, Ship_Is_Dead
#Ship is alive if here

li $v0, 1	#ship is alive
lw $ra, 0($sp)
addi $sp, $sp, 8
jr $ra

Ship_Is_Dead:	#ship is dead

lw $ra, 0($sp)
addiu $sp, $sp, 8
jr $ra

#pre: $a0 is ship label
#post FOR SALVO prints text and shoots if the ship is alive
User_Shoot_If_Alive:
addiu $sp, $sp, -8
sw $ra, 0($sp)
sw $a0, 4($sp)

jal Is_Ship_Alive
beqz $v0, Salvo_Skip

lw $a0, 4($sp)
jal Access_Name
move $a0, $v0	#moves name to here
jal Print_String	#prints carrier
lw $a0, 4($sp)
jal User_Shoot_Once

Salvo_Skip:#ship is dead

lw $ra, 0($sp)
addiu $sp, $sp, 8
jr $ra

#pre: $a0 is number (letter), $a1 is number
#post: add hit or miss to hitmap, adjust ship's hit marker
User_Shoot:
addiu $sp, $sp, -16
sw $ra, 0($sp)

sw $a0, 4($sp)
sw $a1, 8($sp)
la $a2, AILOCRow1		#load AI location map
jal Access_2D_Array
beqz $v0, Miss
#If it is not a miss, then it is a hit
lw $a0, 4($sp)
lw $a1, 8($sp)
move $a2, $v0	#hit data
la $a3, AIRow1
jal Write_2D_Array	#add hit to hit map at coordinate

lw $a0, 4($sp)
lw $a1, 8($sp)	#load coordinate
jal AI_What_Is_Here
#V0 has ship label
sw $v0, 12($sp)
move $a0, $v0	#move label to first parameter
jal Access_Hits
#v0 is hits left
subi $v0, $v0, 1	#subtract by 1
lw $a0, 12($sp)		#load ship label
move $a1, $v0		#move hits to parameter
jal Write_Hits		#will set the hits to previous - 1

lw $ra, 0($sp)
addiu $sp, $sp, 16
jr $ra

Miss:
lw $a0, 4($sp)
lw $a1, 8($sp)
la $a3, AIRow1	#hit data
li $a2, 2	#miss
jal Write_2D_Array	#add miss to hit map

lw $ra, 0($sp)
addiu $sp, $sp, 16
jr $ra

#pre: $a0 is number (letter), $a1 is number
#post: nothing
AI_Shoot:
addiu $sp, $sp, -16
sw $ra, 0($sp)

sw $a0, 4($sp)
sw $a1, 8($sp)
la $a2, LOCRow1		#load AI location map
jal Access_2D_Array
beqz $v0, Miss_AI
#If it is not a miss, then it is a hit
lw $a0, 4($sp)
lw $a1, 8($sp)
move $a2, $v0	#hit data
la $a3, Row1
jal Write_2D_Array	#add hit to hit map at coordinate

lw $a0, 4($sp)
lw $a1, 8($sp)	#hit coordinates
li $a2, 0	#no option
jal User_What_Is_Here	#get the user ship
sw $v0, 12($sp)
move $a0, $v0	#move label to first parameter
jal Access_Hits
####!!!!!Something is going wrong here where V0 is 0 and being passed as the label. Maybe the program is thinking it is a hit
#but it is not, or an incorrectly assumed condition
#v0 is hits left
subi $v0, $v0, 1	#subtract by 1
lw $a0, 12($sp)		#load ship label
move $a1, $v0		#move hits to parameter
jal Write_Hits		#will set the hits to previous - 1

lw $ra, 0($sp)
addiu $sp, $sp, 16
jr $ra

Miss_AI:
lw $a0, 4($sp)
lw $a1, 8($sp)
la $a3, Row1	#hit data
li $a2, 2	#miss
jal Write_2D_Array	#add miss to hit map

lw $ra, 0($sp)
addiu $sp, $sp, 16
jr $ra


#pre: $a0 is number (letter), $a1 is number
#post: 1 is true (good shot), 0 is false (shot has already been taken)
User_Has_Good_Shot:
addiu $sp, $sp, -12
sw $ra, 0($sp)

sw $a0, 4($sp)
sw $a1, 8($sp)		#save regs
la $a2, AIRow1		#checking the hitmap first
jal Access_2D_Array
beqz $v0, No_Hit_Taken	#if this true, that means that spot has not been hit yet

li $v0, 0		#this is already taken
lw $ra, 0($sp)
addiu $sp, $sp, 12
jr $ra			#send back a value of this shot has been taken already, try again

No_Hit_Taken:
li $v0, 1		#no shots have been taken here, this is a good shot
lw $ra, 0($sp)
addiu $sp, $sp, 12
jr $ra

#pre: $a0 is number 1-11(letter), $a1 is number
#post: 1 is true (good shot), 0 is false (shot has already been taken)
AI_Has_Good_Shot:
addiu $sp, $sp, -12
sw $ra, 0($sp)

sw $a0, 4($sp)
sw $a1, 8($sp)		#save regs
la $a2, Row1		#checking the hitmap first
jal Access_2D_Array
beqz $v0, No_Hit_Taken_AI	#if this true, that means that spot has not been hit yet

li $v0, 0		#this is already taken
lw $ra, 0($sp)
addiu $sp, $sp, 12
jr $ra			#send back a value of this shot has been taken already, try again

No_Hit_Taken_AI:
li $v0, 1		#no shots have been taken here, this is a good shot
lw $ra, 0($sp)
addiu $sp, $sp, 12
jr $ra

#pre: nothing
#post: Top of the hierarchy - will subtract one from hits if its a hit,
#discern if it's a hit. Ask for a proper coordinate. The do all see all function for one user shot
User_Shoot_Once:
addiu $sp, $sp, -12
sw $ra, 0($sp)

la $a0, Prompt_Shot	#load shot prompt
li $v0, 4
syscall			#print string
j Get_A_Good_Shot

Redo_Shot:

la $a0, Prompt_Shot_Repeat
li $v0, 4
syscall			#invalid coordinate, repeat

Get_A_Good_Shot:
	jal Get_Double_Convert
	move $a0, $v1		#move letter to a0 reg
	move $a1, $v0		#move number to a1 reg
	sw $a0, 4($sp)
	sw $a1, 8($sp)		#save regs
	jal User_Has_Good_Shot
	beqz $v0, Redo_Shot	#shot has already been taken
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)		#load coordinates
	jal User_Shoot		#shoots location, will change appropriate maps

lw $ra, 0($sp)
addiu $sp, $sp, 12
jr $ra

#pre: nothing
#post: Top of the hierarchy - will subtract one from hits if its a hit,
#discern if it's a hit. Ask for a proper coordinate. The do all see all function for one user shot
AI_Shoot_Once:
addiu $sp, $sp, -24
sw $ra, 0($sp)

#if the AI_Last shot is a hit, then find a shot close to it
la $t0, AI_Last_Hit
lw $t1, 0($t0)	#x coord
lw $t2, 4($t0)	#y coord
sw $t1, 12($sp)
sw $t2, 16($sp)	#save last hit data
bgtz $t1, AI_Get_A_Good_Shot_HL	#if it's true then there is a last hit
j AI_Get_A_Good_Shot

AI_Redo_Shot:


AI_Get_A_Good_Shot:
	jal Randomize
	rem $v0, $v0, 11
	addi $v0, $v0,1	#offset modulus
	sw $v0, 4($sp)	#letter saved
	jal Randomize
	rem $v0, $v0, 9
	addi $v0, $v0, 1 #offset modulus
	sw $v0, 8($sp)	#number saved
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)	#load AI shot
	jal AI_Has_Good_Shot
	beqz $v0, AI_Redo_Shot	#shot has already been taken
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)		#load coordinates
	jal AI_Shoot		#shoots location, will change appropriate maps
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)	#load coordinates
	la $a2, Row1	#load hit map
	jal Access_2D_Array
	bne $v0, 1, AI_No_Ship
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	la $t0, AI_Last_Hit
	sw $a0, 0($t0)	#update x of last hit
	sw $a1, 4($t0)	#update y of last hit
	
	AI_No_Ship:
	j end_of_AI_shoot
	
AI_Redo_Shot_HL:
	jal Is_AI_Trapped
	beqz $v0, AI_Get_A_Good_Shot_HL	#if it is not trapped,then continue
	#trapped
	jal Win_Condition
	#game is over
	beqz $v0, CONT_FIRE
	lw $ra, 0($sp)
	addiu $sp, $sp, 24
	jr $ra
	CONT_FIRE:	#game is not over
	la $t0, AI_Last_Hit
	li $t1, -1	#null number
	sw $t1, 0($t0)
	sw $t1, 4($t0)	#nullify last hit
	j  AI_Redo_Shot

AI_Get_A_Good_Shot_HL:
	jal Randomize
	rem $v0, $v0, 3
	subi $v0, $v0,1	#offset modulus
	sw $v0, 4($sp)	#letter offset saved
	jal Randomize
	rem $v0, $v0, 3
	subi $v0, $v0, 1 #offset modulus
	sw $v0, 8($sp)	#number offset saved
	
	lw $t0, 4($sp)	#letter
	lw $t1, 8($sp)	#number
	
	lw $t0, 12($sp)	#last hit x
	lw $t1, 4($sp)	#offset of x
	add $t0, $t0, $t1	#last x + offset
	sw $t0, 4($sp)	#store new x value
	
	lw $t0, 16($sp)	#last hit y
	lw $t1, 8($sp)	#offset y
	add $t0, $t0, $t1	#last y + offset
	sw $t0, 8($sp)	#store new y value
	
	lw $t0, 4($sp)	#letter w/ offset
	lw $t1, 8($sp)	#number w/ offset
	bgt $t0, 11, AI_Get_A_Good_Shot_HL
	bgt $t1, 9, AI_Get_A_Good_Shot_HL
	blt $t0, 1, AI_Get_A_Good_Shot_HL
	blt $t1, 1, AI_Get_A_Good_Shot_HL	#check the range of the offset coordinates
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)	#load AI shot
	jal AI_Has_Good_Shot
	beqz $v0, AI_Redo_Shot_HL	#shot has already been taken
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)		#load coordinates
	jal AI_Shoot		#shoots location, will change appropriate maps
	
	#if the ship is dead, then reset AI_last hit variable
	lw $a0, 12($sp)
	lw $a1, 16($sp)	#load last hit coordinates
	li $a2, 0	#no option
	jal User_What_Is_Here
	sw $v0, 20($sp)	#store ship label
	
	lw $a0, 20($sp)	#load ship label
	jal Access_Hits
	beqz $v0, reset_last_hit
	#this means the ship is not dead
	#find if it was a hit
	lw $a0, 4($sp)
	lw $a1, 8($sp)	#load current coordinates
	la $a2, Row1	#load hit map
	jal Access_2D_Array
	beq $v0, 2, end_of_AI_shoot	#if it is a miss (2), then stop the shooting process
	#else, update last hit

	#if it is another hit, and ship is not dead, update variable
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	la $t0, AI_Last_Hit
	sw $a0, 0($t0)
	sw $a1, 4($t0)	#save x and y coord to last shot
	
	j end_of_AI_shoot
	#else reset variable
	reset_last_hit:
	li $t0, -1	#load null number
	la $t1, AI_Last_Hit
	sw $t0, 0($t1)
	sw $t0, 4($t1)	#nullify last hit
	
	end_of_AI_shoot:
lw $ra, 0($sp)
addiu $sp, $sp, 24
jr $ra

#pre: nothing
#post: $v0 1 if AI last hit is encircled, 0 if it is not
Is_AI_Trapped:
addiu $sp, $sp, -16
sw $ra, 0($sp)

la $s0, AI_Last_Hit	#load last hit
#start at top left, increment every spot till it is at bottom right
lw $t0, 0($s0)
lw $t1, 4($sp)	#load the two parts of last hit
beq $t0, -1, error_last_hit
beq $t1, -1, error_last_hit
j no_error_last_hit
error_last_hit: #will only be checked if the AI is on the edge of the map
	sw $0, AI_Last_Hit_Try_Counter	#reset try counter
	li $v0, 1
	lw $ra, 0($sp)
	addiu $sp, $sp, 16
	jr $ra
	
no_error_last_hit:
li $s1, -1	#x offset
li $s2, -2	#y offset
TRAP_Y:
addi $s2, $s2, 1	#increment y offset
li $s1, -1	#reset x offset
	TRAP_X:
	lw $t0, 0($s0)	#x coord of last hit
	add $a0, $t0, $s1	#x coord + x offset
	lw $t0, 4($s0)	#y coord of last hit
	add $a1, $t0, $s2	#y coord + y offset
	
	#load, if it is taken, continue. if not, if it is empty, exit with 0
	la $a2, Row1	#load hit map
	
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)		#save regs
	
	jal Access_2D_Array	#gets 2 for miss, 1 for hit, 0 for nothing
	beqz $v0, TRAP_EXIT	#AI is not trapped, there is an option
	
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)		#load regs
	
	addi $s1, $s1, 1	#increment x
	blt $s1, 2, TRAP_X	# loop for 3 iterations
addi $s2, $s2, 1	#increment y offset
blt $s2, 2, TRAP_Y	#loop for 3 iterations

	
#if there are no spots, exit function with 1
li $v0, 1	#trapped
sw $0, AI_Last_Hit_Try_Counter	#reset try counter
j DONT_ADD_TRY_COUNTER

TRAP_EXIT:	#v0 (if it is not trapped) will be 0 from 2D Array, so do not change
lw $t0, AI_Last_Hit_Try_Counter
addi $t0, $t0, 1
sw $t0, AI_Last_Hit_Try_Counter	#adds one to number of trys taken
bgt $t0, 1000, TOO_MANY_TRYS
j DONT_ADD_TRY_COUNTER
TOO_MANY_TRYS:
	li $v0, 1	#last hit will reset

DONT_ADD_TRY_COUNTER:

lw $ra, 0($sp)
addiu $sp, $sp, 16
jr $ra

#pre: nothing
#post: $v0 is number, $v1 is letter converted
Get_Double_Convert:
	addiu $sp, $sp, -12
	sw $ra, 0($sp)
	
	j first_no_redo	#jumps past this repeat condition, initially
	Redo_Shot_internal:

	la $a0, Prompt_Shot_Repeat
	li $v0, 4
	syscall			#invalid coordinate, repeat

	first_no_redo:
	
	li $v0, 12
	syscall		#get a character
	sw $v0, 4($sp)
	
	li $v0, 12
	syscall		#get a number
	
	blt $v0, 49, Redo_Shot_internal		#less than 1
	bgt $v0, 57, Redo_Shot_internal		#greater than 9
	subi $v0, $v0, 48	#convert to number
	
	lw $v1, 4($sp)
	blt $v1, 65, Redo_Shot_internal		#less than Capital A
	bgt $v1, 107, Redo_Shot_internal	#greater than lowercase a
	ble $v1, 75, Upper_Case_internal		#found the value, it is upper case
	ble $v1, 107, Lower_Case_internal	#found the value, it is lower case
	j Redo_Shot_internal		#it is in between
	
	Upper_Case_internal:
	subi $v1, $v1, 64	#1-11 now
	j UP_SKIP
	
	Lower_Case_internal:
	subi $v1, $v1, 96	#1-11 now
	
	UP_SKIP:
	
	sw $v0, 4($sp)	#save first coord
	sw $v1, 8($sp)	#save second coord
	la $a0, next_line	#next line
	jal Print_String
	lw $v0, 4($sp)	#load
	lw $v1, 8($sp)
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 12
	jr $ra
	
#pre: nothing
#post: returns in $v0 how many ships left
User_How_Many_Left:
addiu $sp, $sp, -24
sw $ra, 0($sp)

la $a0, Carrier_Data
jal Access_Hits
sw $v0, 4($sp)	#store for later

la $a0, BattleShip_Data
jal Access_Hits
sw $v0, 8($sp)

la $a0, Submarine_Data
jal Access_Hits
sw $v0, 12($sp)

la $a0, Cruiser_Data
jal Access_Hits
sw $v0, 16($sp)

la $a0, Destroyer_Data
jal Access_Hits
sw $v0, 20($sp)

move $t0, $sp	#counter/copy of stack
addi $t0, $t0, 4	#starting at second position
li $t3, 0	#counter
li $t1,	0	#sum
sort_0:
	lw $t2, 0($t0)
	bnez $t2, no_add
	#there is a zero
	addi $t1, $t1, 1	#add 1 to sum of dead ships
	no_add:
	addi $t0, $t0, 4	#increment stack
	addi $t3, $t3, 1	#increment counter
	bne $t3, 5, sort_0	#increment for 5

sub $v0, $t3, $t1	#total - dead ships to V0
lw $ra, 0($sp)
addiu $sp, $sp, 24
jr $ra

#pre: nothing
#post: returns in $v0 how many ships left
AI_How_Many_Left:
addiu $sp, $sp, -24
sw $ra, 0($sp)

la $a0, AI_Carrier_Data
jal Access_Hits
sw $v0, 4($sp)	#store for later

la $a0, AI_BattleShip_Data
jal Access_Hits
sw $v0, 8($sp)

la $a0, AI_Submarine_Data
jal Access_Hits
sw $v0, 12($sp)

la $a0, AI_Cruiser_Data
jal Access_Hits
sw $v0, 16($sp)

la $a0, AI_Destroyer_Data
jal Access_Hits
sw $v0, 20($sp)

move $t0, $sp	#counter/copy of stack
addi $t0, $t0, 4	#starting at second position
li $t3, 0	#counter
li $t1,	0	#sum
AI_sort_0:
	lw $t2, 0($t0)
	bnez $t2, AI_no_add
	#there is a zero
	addi $t1, $t1, 1	#add 1 to sum of dead ships
	AI_no_add:
	addi $t0, $t0, 4	#increment stack
	addi $t3, $t3, 1	#increment counter
	bne $t3, 5, AI_sort_0	#increment for 5

sub $v0, $t3, $t1	#total - dead ships to V0
lw $ra, 0($sp)
addiu $sp, $sp, 24
jr $ra

#pre: $a0 is number (letter 1-11) coord, $a1 is number coord 1-9, $a2 is value to write, $a3 is map to write to (row 1 address)
#post: nothing
Write_2D_Array:
addiu $sp, $sp, -4
sw $ra, 0($sp)

#coordinate address = [(xcoord - 1 )* 4] + base [(ycoord - 1) * lengthrow * 4]
subi $a0, $a0, 1	#xcoord - 1
sll $a0, $a0, 2		#convert x coord into word
subi $a1, $a1, 1	#convert to format used here
mul $a1, $a1, 11	#multiply by 11
sll $a1, $a1, 2		#multiply by 4

add $a0, $a1, $a0	#add x coord and y coord
add $a3, $a3, $a0	#base + coords

sw $a2, 0($a3)

lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#pre: $a0 is number (letter 1-11) coord, $a1 is number coord 1-9, $a2 is map (row 1 address)
#post: returns value of coordinate in $v0
Access_2D_Array:
addiu $sp, $sp, -4
sw $ra, 0($sp)

#coordinate address = [(xcoord - 1 )* 4] + base [(ycoord - 1) * lengthrow * 4]
subi $a0, $a0, 1	#xcoord - 1
sll $a0, $a0, 2		#convert x coord into word
subi $a1, $a1, 1	#convert to format used here
mul $a1, $a1, 11	#multiply by 11
sll $a1, $a1, 2		#multiply by 4

add $a0, $a1, $a0	#add coordinates
add $a2, $a0, $a2	#add coordinate to base address
##MAY OR MAY NOT WORK

lw $v0, 0($a2)		#load value of coordinate to $v0

lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#pre: $a0 is letter coord, $a1 is number coord, $a2 is option to opt out of seeing a certain ship (0 is not using option, else going to use)
#post: returns label for data of what is there in $v0
User_What_Is_Here:
addiu $sp, $sp, -16
sw $ra, 0($sp)

sw $a0, 4($sp)
sw $a1, 8($sp)		#save regs
sw $a2, 12($sp)
move $a3, $a2		#move option to a3

la $a2, Carrier_Data	#load carrier
beq $a2, $a3, skip_carrier	#if this ship is the one selected in the option, then skip
jal Is_This_The_Ship
bne $v0, 0, Found_TheShip

lw $a0, 4($sp)
lw $a1, 8($sp)		#load regs
lw $a3, 12($sp)

skip_carrier:
la $a2, BattleShip_Data	#load carrier
beq $a2, $a3, skip_battleship
jal Is_This_The_Ship
bne $v0, 0, Found_TheShip

lw $a0, 4($sp)
lw $a1, 8($sp)		#save regs
lw $a3, 12($sp)

skip_battleship:
la $a2, Cruiser_Data	#load carrier
beq $a2, $a3, skip_cruiser
jal Is_This_The_Ship
bne $v0, 0, Found_TheShip

lw $a0, 4($sp)
lw $a1, 8($sp)		#save regs
lw $a3, 12($sp)

skip_cruiser:
la $a2, Submarine_Data	#load carrier
beq $a2, $a3, skip_submarine
jal Is_This_The_Ship
bne $v0, 0, Found_TheShip

lw $a0, 4($sp)
lw $a1, 8($sp)		#save regs
lw $a3, 12($sp)

skip_submarine:
la $a2, Destroyer_Data	#load carrier
beq $a2, $a3, Found_TheShip
jal Is_This_The_Ship
#v0 has ship label

Found_TheShip:
lw $ra, 0($sp)
addiu $sp, $sp, 16
jr $ra

#pre: $a0 is letter coord, $a1 is number coord, $a2 is option for ship to skip (label) for no option set to 0
#post: returns label for data of what is there in $v0
AI_What_Is_Here:
addiu $sp, $sp, -16
sw $ra, 0($sp)

sw $a0, 4($sp)
sw $a1, 8($sp)		#save regs
sw $a2, 12($sp)
move $a3, $a2		#move option to a3

la $a2, AI_Carrier_Data	#load carrier
beq $a2, $a3, skip_AI_carrier	#if this ship is the one selected in the option, then skip
jal Is_This_The_Ship
bne $v0, 0, Found_The_Ship

lw $a0, 4($sp)
lw $a1, 8($sp)		#load regs
lw $a3, 12($sp)

skip_AI_carrier:
la $a2, AI_BattleShip_Data	#load carrier
beq $a2, $a3, skip_AI_battleship
jal Is_This_The_Ship
bne $v0, 0, Found_The_Ship

lw $a0, 4($sp)
lw $a1, 8($sp)		#save regs
lw $a3, 12($sp)

skip_AI_battleship:
la $a2, AI_Cruiser_Data	#load carrier
beq $a2, $a3, skip_AI_cruiser
jal Is_This_The_Ship
bne $v0, 0, Found_The_Ship

lw $a0, 4($sp)
lw $a1, 8($sp)		#save regs
lw $a3, 12($sp)

skip_AI_cruiser:
la $a2, AI_Submarine_Data	#load carrier
beq $a2, $a3, skip_AI_submarine
jal Is_This_The_Ship
bne $v0, 0, Found_The_Ship

lw $a0, 4($sp)
lw $a1, 8($sp)		#save regs
lw $a3, 12($sp)

skip_AI_submarine:
la $a2, AI_Destroyer_Data	#load carrier
beq $a2, $a3, Found_The_Ship
jal Is_This_The_Ship
#v0 has ship label


Found_The_Ship:
lw $ra, 0($sp)
addiu $sp, $sp, 16
jr $ra

##MAY NOT BE RIGHT
#pre: $a0 is letter coord, $a1 is number, $a2 is ship label
#post: v0 is 0 if nothing, ship label if the ship is there
Is_This_The_Ship:
addiu $sp, $sp, -24
sw $ra, 0($sp)

sw $a0, 4($sp)
sw $a1, 8($sp)
sw $a2, 12($sp)
move $a0, $a2	#move ship label to $a0
jal Access_Array_Data
#v0 should have first array, v1 will have second array
move $s0, $v0
move $s1, $v1
sw $s0, 16($sp)
sw $s1, 20($sp)	#save regs

lw $a0, 12($sp)
jal Access_Max_Hits
li $t0, 0	#counter
lw $a0, 4($sp)
lw $a1, 8($sp)		#load regs
check_through_ships:
	lw $t1, 0($s0)
	lw $t2, 0($s1)	#load arrays
	beq $a0, $t1, check_letter
	j incorrect
	check_letter:
	beq $a1, $t2, correct	#both address are correct
	
	incorrect:
	addi $t0, $t0, 1
	addi $s0, $s0, 4		#increment first array
	addi $s1, $s1, 4		#increment second array
	bne $t0, $v0, check_through_ships	#if location in array is not equal to max size of ship
	
	li $v0, 0	#false for no ship
	lw $ra, 0($sp)
	addiu $sp, $sp, 24
	jr $ra
	
correct:
	lw $v0, 12($sp)	#load label
	lw $ra, 0($sp)
	addiu $sp, $sp, 24
	jr $ra

#pre: $a0 is ship label
#post: returns address to string in $v0
Access_Name:
addiu $sp, $sp, -4
sw $ra, 0($sp)

li $a1, 2	#2 is for the string
jal Access_Ship_Data	#string address is in $v0

lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#pre: $a0 is ship label
#post: returns int number of total hits in $v0
Access_Max_Hits:
addiu $sp, $sp, -4
sw $ra, 0($sp)

li $a1, 0	#0 is for the max hits
jal Access_Ship_Data	#int is in $v0

lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#pre: $a0 is ship label
#post: returns int number of hits left in $v0
Access_Hits:
addiu $sp, $sp, -4
sw $ra, 0($sp)

li $a1, 1	#1 is for hits left
jal Access_Ship_Data	#int is in $v0

lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#pre: $a0 is ship label
#post: returns address for ship printing data in $v1
Access_Print_Data:
addiu $sp, $sp, -4
sw $ra, 0($sp)

li $a1, 3	#3 is for the address of print data
jal Access_Ship_Data	#print address is in $v0
move $v1, $v0

lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#pre: ship label in $a0
#post: $v0 is x location array, $v1 is y location array
Access_Array_Data:
addiu $sp, $sp, -12
sw $ra, 0($sp)
sw $a0, 4($sp)	#save regs

li $a1, 4	#x location array select
jal Access_Ship_Data
sw $v0, 8($sp)

lw $a0, 4($sp)	#load ship label
li $a1, 5	#y array select
jal Access_Ship_Data
move $v1, $v0
lw $v0, 8($sp)

lw $ra, 0($sp)
addiu $sp, $sp, 12
jr $ra

#pre: $a0 is address of ship label to data, $a1 is which data to grab (0 is number of hits, 1 is hits left, 2 is string for ship, 2 address of bit table...)
#post: $v0 is the direct value in the data
Access_Ship_Data:
sll $a1, $a1, 2		#multiply by four to adjust for data word
add $a0, $a0, $a1	#add adjustment to ship label
lw $v0, 0($a0)		#access that data value
jr $ra

#pre: $a0 is ship label, $a1 is what to write
#post: nothing
Write_Name:
addiu $sp, $sp, -4
sw $ra, 0($sp)

move $a2, $a1	#move to third parameter
li $a1, 2	#string select
jal Write_Ship_Data

lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#pre: $a0 is ship label, $a1 is what to write
#post: nothing
Write_Hits:
addiu $sp, $sp, -4
sw $ra, 0($sp)

move $a2, $a1	#move to third parameter
li $a1, 1	#string select
jal Write_Ship_Data

lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#pre: $a0 is ship label, $a1 is what to write
#post: nothing
Write_Print_Data:
addiu $sp, $sp, -4
sw $ra, 0($sp)

move $a2, $a1	#move to third parameter
li $a1, 3	#string select
jal Write_Ship_Data

lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra

#pre: $a0 is ship label, $a1 is x location array, $a2 is y location array
#post: nothing
Write_Array_Data:
addiu $sp, $sp, -16
sw $ra, 0($sp)
sw $a0, 4($sp)	#save regs
sw $a1, 8($sp)
sw $a2, 12($sp)

li $a1, 4	#location x select
lw $a2, 8($sp)	#location x array
jal Write_Ship_Data

lw $a0, 4($sp)	#ship label
li $a1, 5	#location y select
lw $a2, 12($sp)	#location y array
jal Write_Ship_Data

lw $ra, 0($sp)
addiu $sp, $sp, 16
jr $ra

#pre: $a0 is address of ship label to data, $a1 is which data to select, $a2 is what to write (0 is number of hits, 1 is hits left, 2 is string for ship, 2 address of bit table...)
#post: nothing
Write_Ship_Data:
sll $a1, $a1, 2		#multiply by four to adjust for data word
add $a0, $a0, $a1	#add adjustment to ship label
sw $a2, 0($a0)		#access that data value
jr $ra

#pre: $a0 is ship label
#post: draw user ship on user side
Draw_User_Ship:
#ships are a grey block 45 x 45 for one section
addiu $sp, $sp, -44
sw $ra, 0($sp)
sw $a0, 4($sp)

jal Access_Max_Hits	#get max hits for counter
sw $v0, 8($sp)

lw $a0, 4($sp)		#load label
jal Access_Array_Data
sw $v0, 12($sp)		#x location array
sw $v1, 16($sp)		#y location array

lw $s0, 8($sp)		#load counter
lw $s1, 12($sp)		#x array
lw $s2, 16($sp)		#y array
DUS_LOOP:
	lw $s3, 0($s1)	#x array value here
	lw $s4, 0($s2)	#y array value here 
	#subtract 1 from each, multiply by 45 and that is the starting location for the box will go 45 across, 45 down
	#for a user ship only, add 512 to offset to right side of screen
	subi $s3, $s3, 1	#subtract 1 from both coordinates
	subi $s4, $s4, 1
	mul $s3, $s3, 45
	mul $s4, $s4, 45	#multiply by 45
	addi $s3, $s3, 522	#offset x coordinate
	addi $s4, $s4, 28	#offset y coordinate
	
	sw $s0, 20($sp)
	sw $s1, 24($sp)
	sw $s2, 28($sp)
	sw $s3, 32($sp)
	sw $s4, 36($sp)
	
	li $s0, 0	#box counter
	sw $s0, 40($sp)
	Box_Loop:
		lw $a0, 32($sp)	#x coord
		lw $a1, 36($sp)	#y coord
		li $a2, 2	#grey
		li $a3, 45	#height of box
		
		jal DrawVertLine
		
		lw $a0, 32($sp)
		addi $a0, $a0, 1
		sw $a0, 32($sp)	#increment x by 1 and update memory
		lw $s0, 40($sp)
		addi $s0, $s0, 1	#increment counter by 1
		sw $s0, 40($sp)
		blt $s0, 45, Box_Loop
		
		#MAY HAVE ERRORS
		
		
	
	lw $s0, 20($sp)
	lw $s1, 24($sp)
	lw $s2, 28($sp)
	lw $s3, 32($sp)
	lw $s4, 36($sp)
	
	subi $s0, $s0, 1	#decrement counter
	addi $s1, $s1, 4	#increment array
	addi $s2, $s2, 4	#increment array
	bnez $s0,DUS_LOOP	#loop if it is not equal to 0
	

lw $ra, 0($sp)
addiu $sp, $sp, 44
jr $ra

#pre: $a0 is ship label
#post: draw user ship on user side
Draw_AI_Ship:
#ships are a grey block 45 x 45 for one section
addiu $sp, $sp, -44
sw $ra, 0($sp)
sw $a0, 4($sp)

jal Access_Max_Hits	#get max hits for counter
sw $v0, 8($sp)

lw $a0, 4($sp)		#load label
jal Access_Array_Data
sw $v0, 12($sp)		#x location array
sw $v1, 16($sp)		#y location array

lw $s0, 8($sp)		#load counter
lw $s1, 12($sp)		#x array
lw $s2, 16($sp)		#y array
DAS_LOOP:
	lw $s3, 0($s1)	#x array value here
	lw $s4, 0($s2)	#y array value here 
	#subtract 1 from each, multiply by 45 and that is the starting location for the box will go 45 across, 45 down
	#for a user ship only, add 512 to offset to right side of screen
	subi $s3, $s3, 1	#subtract 1 from both coordinates
	subi $s4, $s4, 1
	mul $s3, $s3, 45
	mul $s4, $s4, 45	#multiply by 45
	addi $s3, $s3, 11	#offset x coordinate
	addi $s4, $s4, 28	#offset y coordinate
	
	sw $s0, 20($sp)
	sw $s1, 24($sp)
	sw $s2, 28($sp)
	sw $s3, 32($sp)
	sw $s4, 36($sp)
	
	li $s0, 0	#box counter
	sw $s0, 40($sp)
	AI_Box_Loop:
		lw $a0, 32($sp)	#x coord
		lw $a1, 36($sp)	#y coord
		li $a2, 2	#grey
		li $a3, 45	#height of box
		
		jal DrawVertLine
		
		lw $a0, 32($sp)
		addi $a0, $a0, 1
		sw $a0, 32($sp)	#increment x by 1 and update memory
		lw $s0, 40($sp)
		addi $s0, $s0, 1	#increment counter by 1
		sw $s0, 40($sp)
		blt $s0, 45, AI_Box_Loop
		
		#MAY HAVE ERRORS
		
		
	
	lw $s0, 20($sp)
	lw $s1, 24($sp)
	lw $s2, 28($sp)
	lw $s3, 32($sp)
	lw $s4, 36($sp)
	
	subi $s0, $s0, 1	#decrement counter
	addi $s1, $s1, 4	#increment array
	addi $s2, $s2, 4	#increment array
	bnez $s0,DAS_LOOP	#loop if it is not equal to 0
	

lw $ra, 0($sp)
addiu $sp, $sp, 44
jr $ra

#pre: $a0 is ship label
#post: draws dead AI ships
Draw_Dead_Ship:
addiu $sp, $sp, -8
sw $ra,  0($sp)
sw $a0, 4($sp)

jal Is_Ship_Alive
beq $v0, 1, not_dead

lw $a0, 4($sp)	#ship is dead, draw it
jal Draw_AI_Ship

not_dead:

lw $ra, 0($sp)
addiu $sp, $sp, 8
jr $ra

#Pre:Nothing
#Post: Draw all hit markers
Draw_Hit_Markers:
addiu $sp, $sp, -36
sw $ra, 0($sp)

#go through AI Hit list first
#1-11 by 1-9
li $a0, 1	#x coord
li $a1, 1	#y coord
la $a2, AIRow1	#hit map
AI_HIT_LOOP_Y:
	li $a0, 1	#x coord at 1
	AI_HIT_LOOP_X:
		sw $a0, 4($sp)
		sw $a1, 8($sp)	#save regs
		sw $a2, 12($sp)
		jal Access_2D_Array
		lw $a0, 4($sp)
		lw $a1, 8($sp)	#save regs
		lw $a2, 12($sp)
		
		li $s0, 0	#counter
		mul $a0, $a0, 45
		mul $a1, $a1, 45	#multiply to get pixel coordinates
		beq $v0, 1, HIT	#if it is a 1 it is a hit
		beq $v0, 2, MISS
		j HIT_NONE
		
		HIT:	#draws a hit at that coordinate in the middle of the box
			li $a2, 3		#red
			li $a3, 5		#5 length
			sw $a0, 16($sp)
			sw $a1, 20($sp)
			sw $a2, 24($sp)
			sw $a3, 28($sp)
			sw $s0, 32($sp)
			
			jal DrawVertLine
			lw $a0, 16($sp)
			lw $a1, 20($sp)
			lw $a2, 24($sp)
			lw $a3, 28($sp)
			lw $s0, 32($sp)
			
			addi $a0, $a0, 1	#increment x coordinate
			addi $s0, $s0, 1	#increment counter
			
			bne $s0, 5, HIT		#loop if less than five
			
			
		j HIT_NONE
		MISS:	#draws a hit at that coordinate in the middle of the box
			li $a2, 4		#white
			li $a3, 5		#5 length
			sw $a0, 16($sp)
			sw $a1, 20($sp)
			sw $a2, 24($sp)
			sw $a3, 28($sp)
			sw $s0, 32($sp)
			
			jal DrawVertLine
			lw $a0, 16($sp)
			lw $a1, 20($sp)
			lw $a2, 24($sp)
			lw $a3, 28($sp)
			lw $s0, 32($sp)
			
			addi $a0, $a0, 1	#increment x coordinate
			addi $s0, $s0, 1	#increment counter
			
			bne $s0, 5, MISS	#loop if less than five
		
		j HIT_NONE
		HIT_NONE:
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)	#load regs
		lw $a2, 12($sp)
		
		addi $a0, $a0, 1	#increment x coord of Hit map
		
		blt $a0, 12, AI_HIT_LOOP_X	#loop for x row of hit map
	addi $a1, $a1, 1	#increment y coord of hit map
	
	blt $a1, 10 AI_HIT_LOOP_Y	#loop for y columns of hit map
		
li $a0, 1	#x coord
li $a1, 1	#y coord
la $a2, Row1	#hit map
HIT_LOOP_Y:
	li $a0, 1	#x coord at 1
	HIT_LOOP_X:
		sw $a0, 4($sp)
		sw $a1, 8($sp)	#save regs
		sw $a2, 12($sp)
		jal Access_2D_Array
		lw $a0, 4($sp)
		lw $a1, 8($sp)	#save regs
		lw $a2, 12($sp)
		
		li $s0, 0	#counter
		mul $a0, $a0, 45
		add $a0, $a0, 512	#offset for AI
		mul $a1, $a1, 45	#multiply to get pixel coordinates
		beq $v0, 1, HIT_	#if it is a 1 it is a hit
		beq $v0, 2, MISS_
		j HIT_NONE_
		
		HIT_:	#draws a hit at that coordinate in the middle of the box
			
			li $a2, 3		#red
			li $a3, 5		#5 length
			sw $a0, 16($sp)
			sw $a1, 20($sp)
			sw $a2, 24($sp)
			sw $a3, 28($sp)
			sw $s0, 32($sp)
			
			jal DrawVertLine
			lw $a0, 16($sp)
			lw $a1, 20($sp)
			lw $a2, 24($sp)
			lw $a3, 28($sp)
			lw $s0, 32($sp)
			
			addi $a0, $a0, 1	#increment x coordinate
			addi $s0, $s0, 1	#increment counter
			
			bne $s0, 5, HIT_		#loop if less than five
			
			
		j HIT_NONE_
		MISS_:	#draws a hit at that coordinate in the middle of the box
			li $a2, 4		#white
			li $a3, 5		#5 length
			sw $a0, 16($sp)
			sw $a1, 20($sp)
			sw $a2, 24($sp)
			sw $a3, 28($sp)
			sw $s0, 32($sp)
			
			jal DrawVertLine
			lw $a0, 16($sp)
			lw $a1, 20($sp)
			lw $a2, 24($sp)
			lw $a3, 28($sp)
			lw $s0, 32($sp)
			
			addi $a0, $a0, 1	#increment x coordinate
			addi $s0, $s0, 1	#increment counter
			
			bne $s0, 5, MISS_	#loop if less than five
		
		j HIT_NONE_
		HIT_NONE_:
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)	#load regs
		lw $a2, 12($sp)
		
		addi $a0, $a0, 1	#increment x coord of Hit map
		
		blt $a0, 12, HIT_LOOP_X	#loop for x row of hit map
	addi $a1, $a1, 1	#increment y coord of hit map
	
	blt $a1, 10, HIT_LOOP_Y	#loop for y columns of hit map
	

lw $ra, 0($sp)
addiu $sp, $sp, 36
jr $ra


#pre: 1024x512 board bitmap, 1x1 accuracy
#post: draws board without ships, but with the coordinates and sides
DrawBoard:
addiu $sp, $sp, -20
sw $ra, 0($sp)

#each block for a ship will be 45 pixels wide by 45 pixels tall

#ocean color is 1
li $a0, 10	#start of x coord
li $a1, 28	#start of y coord
li $a2, 1	#color is blue
li $a3, 480	#length is 511
draw_ocean:
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	sw $a2, 12($sp)	#save regs
	sw $a3, 16($sp)
	
	jal DrawVertLine
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	lw $a2, 12($sp)	#save regs
	lw $a3, 16($sp)
	
	addi $a0, $a0, 1	#increment x coord
	
	blt $a0, 1016, draw_ocean

li $a0, 512	#start of x coord
li $a1, 10	#start of y coord
li $a2, 0	#color is black
li $a3, 500	#length is 511
draw_divider:
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	sw $a2, 12($sp)
	sw $a3, 16($sp)
	
	jal DrawVertLine
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	lw $a2, 12($sp)	#save regs
	lw $a3, 16($sp)
	
	addi $a0, $a0, 1	#increment x
	
	blt $a0, 522, draw_divider
	


li $a0, 11	#x
li $a1, 16	#y 
la $a2, X_One	#1 in ascii
la $s0, X_Last	#last address
X_AXIS:
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	sw $a2, 12($sp)
	sw $s0, 16($sp)
	
	jal OutText
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	lw $a2, 12($sp)	#save regs
	lw $s0, 16($sp)
	
	addi $a2, $a2, 2	#increment ascii address by 2 for an increment of one address
	addi $a0, $a0, 11	#increment to next box
	ble $a2, $s0, X_AXIS
	
li $a0, 907	#x
li $a1, 14	#y 
la $a2, X_One	#1 in ascii
la $s0, X_Last	#last address
X_AXIS_U:
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	sw $a2, 12($sp)
	sw $s0, 16($sp)
	
	jal OutText
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	lw $a2, 12($sp)	#save regs
	lw $s0, 16($sp)
	
	addi $a2, $a2, 2	#increment ascii address by 2 for an increment of one address
	addi $a0, $a0, 11	#increment to next box
	ble $a2, $s0, X_AXIS_U

li $a0, 0	#x
li $a1, 38	#y
la $a2, Y_one	#1 in ascii
la $s0, Y_nine	#last address
Y_AXIS:
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	sw $a2, 12($sp)
	sw $s0, 16($sp)
	
	jal OutText
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	lw $a2, 12($sp)	#save regs
	lw $s0, 16($sp)
	
	addi $a2, $a2, 2	#increment ascii address by 2 for an increment of one address
	addi $a1, $a1, 45	#increment to next box
	ble $a2, $s0, Y_AXIS
	
li $a0, 895	#x
li $a1, 38	#y
la $a2, Y_one	#1 in ascii
la $s0, Y_nine	#last address
Y_AXIS_U:
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	sw $a2, 12($sp)
	sw $s0, 16($sp)
	
	jal OutText
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	lw $a2, 12($sp)	#save regs
	lw $s0, 16($sp)
	
	addi $a2, $a2, 2	#increment ascii address by 2 for an increment of one address
	addi $a1, $a1, 45	#increment to next box
	ble $a2, $s0, Y_AXIS_U

la $a2, Game_Name
li $a0, 885
li $a1, 0
jal OutText

la $a2, User_name
li $a0, 955
li $a1, 450
jal OutText	#print out user name in user side at the bottom

la $a2, AI_name
li $a0, 55
li $a1, 450
jal OutText	#print out AI name in AI side

lw $ra, 0($sp)
addiu $sp, $sp, 20
jr $ra


#pre: $a0 is x coord (0-1023), $a1 is y coord (0-511), $a2 is color number (0-#)
#post: draws dot 
DrawDot:
	addiu $sp, $sp, -8	#adjust the stack pointer for two words
	sw $ra, 4($sp)		#Store $ra
	sw $a2, 0($sp)		#store $a2
	
	jal CalcAddr		#$v0 will have address for pixel
	lw $a2, 0($sp)		#restore $a2
	sw $v0, 0($sp)		#store $v0 in same spot as $a2 was
	
	jal GetColor		#$v1 will have color for number
	lw $v0, 0($sp)		#restore address of of dot to $v0
	sw $v1, ($v0)		#stores hex color to the dot address. Makes dot
	
	lw $ra, 4($sp)		#load orignial $ra
	addiu $sp, $sp, 8	#restore $sp
	
	jr $ra
	
#pre: $a2 is color number (0-#)
#post: returns $v1 as actual hex number to display
GetColor:
	la $t0, Color_Table	#load base
	sll $a2, $a2, 2		#index a2 * 4 is offset. This will be the index through the colortable memory
	
	add $a2, $t0, $a2	#address is base + offset
	lw $v1, 0($a2)		#this is the actual color
	
	jr $ra
	
#pre: $a0 is x coordinate (0-31), $a1 is y coordinate (0-31)
#post: $v0 is converted coordinate returned to address
CalcAddr:
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	#address = (x coord * 4) + base + (y coord * 32 * 4)
	
	li $s0, 268697600	#loads base
	sll $a0, $a0, 2	# x coord * 4
	sll $a1, $a1, 12	# y coord * 256 * 4
	
	add $v0, $a0, $a1	#address = x coord * 4 + y coord * 32 * 4
	add $v0, $v0, $s0	#adress = Above + base
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra

#pre: $a0 is x coord (0-1023), $a1 is y coord (0-511), $a2 is color (0-7), $a3 is length
#post: Draws a line Vertically Top - Down
DrawVertLine:
	#(0,0) is top left
	#(31,0) is top right
	#(0,31) is bottom left
	addiu $sp, $sp, -24
	sw $ra, 0($sp)
	li $s0, 0	#counter
	loopthrough_:
		sw $a0, 4($sp)
		sw $a1, 8($sp)	#saves parameters
		sw $a2, 12($sp)
		sw $a3, 16($sp)
		sw $s0, 20($sp)
		
		jal DrawDot	#draws dot
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)	#loads parameters
		lw $a2, 12($sp)
		lw $a3, 16($sp)
		lw $s0, 20($sp)
		
		addi $a1, $a1, 1	#add 1 to coord
		addi $s0, $s0, 1	#add 1 to counter
		
		ble $s0, $a3, loopthrough_ #if x coord is less than or equal to width
	
	
	lw $ra, 0($sp)	#load return
	addiu $sp, $sp, 24
	
	jr $ra
	
# OutText: display ascii characters on the bit mapped display
# $a0 = horizontal pixel co-ordinate (0-255)
# $a1 = vertical pixel co-ordinate (0-255)
# $a2 = pointer to asciiz text (to be displayed)

OutText:
        addiu   $sp, $sp, -24
        sw      $ra, 20($sp)

        li      $t8, 1          # line number in the digit array (1-12)

_text1:

        la      $t9, 0x10040000 # get the memory start address

        sll     $t0, $a0, 4     # assumes mars was configured as 1024 x 256
        #CHANGE TO 1024x512

        addu    $t9, $t9, $t0   # and 1 pixel width, 1 pixel height

        sll     $t0, $a1, 12    # (a0 * 4) + (a1 * 4 * 1024)

        addu    $t9, $t9, $t0   # t9 = memory address for this pixel



        move    $t2, $a2        # t2 = pointer to the text string

_text2:

        lb      $t0, 0($t2)     # character to be displayed

        addiu   $t2, $t2, 1     # last character is a null

        beq     $t0, $zero, _text9



        la      $t3, DigitTable # find the character in the table

_text3:

        lb      $t4, 0($t3)     # get an entry from the table

        beq     $t4, $t0, _text4

        beq     $t4, $zero, _text4

        addiu   $t3, $t3, 13    # go to the next entry in the table

        j       _text3

_text4:

        addu    $t3, $t3, $t8   # t8 is the line number

        lb      $t4, 0($t3)     # bit map to be displayed



        sw      $zero, 0($t9)   # first pixel is black

        addiu   $t9, $t9, 4



        li      $t5, 8          # 8 bits to go out

_text5:

        la      $t7, Colors

        lw      $t7, 0($t7)     # assume black

        andi    $t6, $t4, 0x80  # mask out the bit (0=black, 1=white)

        beq     $t6, $zero, _text6

        la      $t7, Colors     # else it is white

        lw      $t7, 4($t7)

_text6:

        sw      $t7, 0($t9)     # write the pixel color

        addiu   $t9, $t9, 4     # go to the next memory position

        sll     $t4, $t4, 1     # and line number

        addiu   $t5, $t5, -1    # and decrement down (8,7,...0)

        bne     $t5, $zero, _text5



        sw      $zero, 0($t9)   # last pixel is black

        addiu   $t9, $t9, 4

        j       _text2          # go get another character



_text9:

        addiu   $a1, $a1, 1     # advance to the next line

        addiu   $t8, $t8, 1     # increment the digit array offset (1-12)

        bne     $t8, 13, _text1



        lw      $ra, 20($sp)

        addiu   $sp, $sp, 24

        jr      $ra


exit:
