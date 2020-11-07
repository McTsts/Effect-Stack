# Check old effects 
data modify storage effectstack:main copy set value []
execute if data storage effectstack:main player[0] run function effectstack:apply/remove

# Store Player 
data modify storage effectstack:main player set from storage effectstack:main copy
function effectstack:store/store

# total counts effects and stops checking things once all effects are accounted for
execute store result score #total effectstack run data get storage effectstack:main player

# Apply stacked effects
function effectstack:apply/get_ids
execute if data storage effectstack:main player[0] if data storage effectstack:main temp[0] run function effectstack:apply/recursive