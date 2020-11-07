execute store result score #success effectstack run data modify storage effectstack:main temp[0].id set from storage effectstack:main effect.id
execute if score #success effectstack matches 0 store result score #success effectstack run data modify storage effectstack:main temp[0].sid set from storage effectstack:main effect.sid
execute if score #success effectstack matches 0 run data modify storage effectstack:main temp2 append from storage effectstack:main effect
execute if score #success effectstack matches 0 run data remove storage effectstack:main effect
execute if score #success effectstack matches 1 run data modify storage effectstack:main temp2 append from storage effectstack:main player[0]
data remove storage effectstack:main temp[0]
data remove storage effectstack:main player[0]
execute if data storage effectstack:main temp[0] run function effectstack:apply/sid_check