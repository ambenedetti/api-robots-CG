# README
<strong>Welcome to Space Robots!</strong> An API created with Ruby On Rails.

You can create new robots, add weapons or armor to them, update their attributes and delete them.

<strong>Instructions:</strong> 
Robot Types must be:
hackerobot 
protectobot 
tacticrobot 
securobot 
attackrobot 
cleanerbot

Weapon Type must be:
laser 
code 
acid 
map 
grenade 
ray

Armor Type must be:
shield 
magentic field
water shield
invisible field
smoke bomb

#View all robots

GET https://api-robots-cg.herokuapp.com/api/v1/robots

#Create new robot

POST https://api-robots-cg.herokuapp.com/api/v1/robots
headers:
Content-Type application/json
body:
{"robot": {
"robot_type": "INSERT_ROBOT_TYPE_FROM_LIST",
"serial_number": "R + (6 digits)",
"name": "INSERT_ROBOT_NAME"
} }

#View Robot with weapons and armor

GET https://api-robots-cg.herokuapp.com/api/v1/robots/{INSERT_ROBOT_ID}

#Delete Robot

DELETE https://api-robots-cg.herokuapp.com/api/v1/robots/{INSERT_ROBOT_ID}

#Update Robot's Weapons

PATCH https://api-robots-cg.herokuapp.com/api/v1/robots/{INSERT_ROBOT_ID}/weapons/{INSERT_WEAPON_ID}
headers:
Content-Type application/json
body:
{"weapon": {
"weapon_type": "INSERT_WEAPON_TYPE_FROM_LIST"
} }

#Update Robot's Armor

PATCH https://api-robots-cg.herokuapp.com/api/v1/robots/{INSERT_ROBOT_ID}/armors/{INSERT_ARMOR_ID}
headers:
Content-Type application/json
body:
{"armor": {
"armor_type": "INSERT_ARMOR_TYPE_FROM_LIST"
} }

#Search for Robot by Weapon

GET https://api-robots-cg.herokuapp.com/api/v1/robots?weapon={INSERT_WEAPON_TYPE}

#Search for Robot by Armor

GET https://api-robots-cg.herokuapp.com/api/v1/robots?weapon={INSERT_ARMOR_TYPE}

#Search for Robot by Name

GET https://api-robots-cg.herokuapp.com/api/v1/robots?weapon={INSERT_NAME}


