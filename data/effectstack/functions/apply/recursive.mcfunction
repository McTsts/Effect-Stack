# Clear Effect
execute store result score #id effectstack run data get storage effectstack:main temp[0]
scoreboard players set #duration effectstack 0
scoreboard players set #amplifier effectstack 0
function effectstack:apply/clear/tree

# Add Effect
data modify storage effectstack:main player set from storage effectstack:main copy
function effectstack:apply/one
execute if score #duration effectstack matches 1.. run function effectstack:apply/apply

# Next Effect ID
data remove storage effectstack:main temp[0]
execute if data storage effectstack:main temp[0] if score #total effectstack matches 1.. run function effectstack:apply/recursive
