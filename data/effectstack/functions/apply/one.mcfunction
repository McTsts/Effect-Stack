# Check if ID matches & handle
execute store result score #success effectstack run data modify storage effectstack:main player[0].id set from storage effectstack:main temp[0]
execute if score #success effectstack matches 0 run function effectstack:apply/calc

# Next Effect 
data remove storage effectstack:main player[0]
execute if data storage effectstack:main player[0] if score #total effectstack matches 1.. run function effectstack:apply/one
