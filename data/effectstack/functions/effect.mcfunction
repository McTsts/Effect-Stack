# Load Player
function effectstack:store/load

# Create Effect
scoreboard players operation duration Temp = duration effectstack
execute store result storage effectstack:main effect.id int 1 run scoreboard players get id effectstack
execute store result storage effectstack:main effect.sid int 1 run scoreboard players get sid effectstack
execute store result storage effectstack:main effect.amplifier int 1 run scoreboard players get amplifier effectstack
execute store result storage effectstack:main effect.timestamp int 1 run scoreboard players operation duration Temp += timestamp effectstack

# SID Check -> Add Effect
data modify storage effectstack:main temp set from storage effectstack:main player 
execute if data storage effectstack:main temp[0] run function effectstack:apply/sid_check
execute unless data storage effectstack:main temp[0] run data modify storage effectstack:main player append from storage effectstack:main effect

# Store
function effectstack:store/store

# Apply all effects
function effectstack:apply/all
