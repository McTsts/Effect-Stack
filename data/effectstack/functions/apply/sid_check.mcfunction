execute store result score $success effectstack run data modify storage effectstack:main temp[0].id set from storage effectstack:main effect.id
execute if score $success effectstack matches 0 store result score $success effectstack run data modify storage effectstack:main temp[0].sid set from storage effectstack:main effect.sid
execute if score $success effectstack matches 1 run data remove storage effectstack:main temp[0]
execute if score $success effectstack matches 1 if data storage effectstack:main temp[0] run function effectstack:apply/sid_check