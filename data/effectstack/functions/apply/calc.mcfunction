# Combine amplifiers
execute store result score #temp effectstack run data get storage effectstack:main player[0].amplifier
scoreboard players operation #amplifier effectstack += #temp effectstack
scoreboard players add #amplifier effectstack 1

# Find smallest duration
execute store result score #temp effectstack run data get storage effectstack:main player[0].timestamp
scoreboard players operation #temp effectstack -= timestamp effectstack
execute unless score #duration effectstack matches 0 run scoreboard players operation #duration effectstack < #temp effectstack
execute if score #duration effectstack matches 0 run scoreboard players operation #duration effectstack = #temp effectstack

# Remove one from effect total (optimization)
scoreboard players remove #total effectstack 1

# set player timer 
execute unless score @s effectstackTimer matches ..0 run scoreboard players operation @s effectstackTimer < #temp effectstack
execute if score @s effectstackTimer matches ..0 run scoreboard players operation @s effectstackTimer = #temp effectstack