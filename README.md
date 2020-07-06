# README
<strong>Welcome to Space Robots!</strong> An API created with Ruby On Rails.</br>

You can create new robots, add weapons or armor to them, update their attributes and delete them.</br>

<strong>Instructions:</strong> </br>
Robot Types must be:</br>
hackerobot </br>
protectobot </br>
tacticrobot </br>
securobot </br>
attackrobot </br>
cleanerbot

Weapon Type must be:</br>
laser </br>
code </br>
acid </br>
map </br>
grenade </br>
ray

Armor Type must be:</br>
shield </br>
magentic field</br>
water shield</br>
invisible field</br>
smoke bomb</br>

#View all robots</br>

GET https://api-robots-cg.herokuapp.com/api/v1/robots</br>

#Create new robot</br>

POST https://api-robots-cg.herokuapp.com/api/v1/robots</br>
headers:</br>
Content-Type application/json</br>
body:</br>
{"robot": {</br>
"robot_type": "INSERT_ROBOT_TYPE_FROM_LIST",</br>
"serial_number": "R + (6 digits)",</br>
"name": "INSERT_ROBOT_NAME"</br>
} }

#View Robot with weapons and armor</br>

GET https://api-robots-cg.herokuapp.com/api/v1/robots/{INSERT_ROBOT_ID}

#Delete Robot

DELETE https://api-robots-cg.herokuapp.com/api/v1/robots/{INSERT_ROBOT_ID}

#Update Robot's Weapons

PATCH https://api-robots-cg.herokuapp.com/api/v1/robots/{INSERT_ROBOT_ID}/weapons/{INSERT_WEAPON_ID}</br>
headers:</br>
Content-Type application/json</br>
body:</br>
{"weapon": {</br>
"weapon_type": "INSERT_WEAPON_TYPE_FROM_LIST"</br>
} }

#Update Robot's Armor

PATCH https://api-robots-cg.herokuapp.com/api/v1/robots/{INSERT_ROBOT_ID}/armors/{INSERT_ARMOR_ID}</br>
headers:</br>
Content-Type application/json</br>
body:</br>
{"armor": {</br>
"armor_type": "INSERT_ARMOR_TYPE_FROM_LIST"</br>
} }

#Search for Robot by Weapon

GET https://api-robots-cg.herokuapp.com/api/v1/robots?weapon={INSERT_WEAPON_TYPE}

#Search for Robot by Armor

GET https://api-robots-cg.herokuapp.com/api/v1/robots?weapon={INSERT_ARMOR_TYPE}

#Search for Robot by Name

GET https://api-robots-cg.herokuapp.com/api/v1/robots?weapon={INSERT_NAME}


