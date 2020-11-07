# Reset
scoreboard players reset @s effectstackID
scoreboard players reset #count effectstackID
scoreboard players reset #found effectstackID
scoreboard players set #find effectstackID 1

# Adjust ID
scoreboard players reset #id effectstackID
execute as @a[scores={effectstackID=1..}] run scoreboard players operation #id effectstackID > @s effectstackID

# Cases
execute as @a[scores={effectstackID=1..}] run scoreboard players add #count effectstackID 1
execute if score #count effectstackID = #id effectstackID run scoreboard players operation @s effectstackID = #id effectstackID
execute if score #count effectstackID = #id effectstackID run scoreboard players add @s effectstackID 1
execute unless score #count effectstackID = #id effectstackID run function effectstack:internal/join
execute unless score #count effectstackID = #id effectstackID run scoreboard players operation @s effectstackID = #find effectstackID

# Clear effects
data modify storage effectstack:main player set value []
function effectstack:store/store
effect clear @s