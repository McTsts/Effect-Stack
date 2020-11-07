# check if timestamp hasnt run out
execute store result score #temp effectstack run data get storage effectstack:main player[0].timestamp
execute if score #temp effectstack > timestamp effectstack run data modify storage effectstack:main copy append from storage effectstack:main player[0]

# Continue Recursion
data remove storage effectstack:main player[0]
execute if data storage effectstack:main player[0] run function effectstack:apply/remove