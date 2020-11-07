# Effect-Stack
 A system that stacks amplifiers of effects, while keeping durations separate.

# Usage
 Basic:
 Run this function as every player on join: /function effectstack:join

 Apply Effect:
 scoreboard players set id effectstack 1
 scoreboard players set duration effectstack 100
 scoreboard players set amplifier effectstack 0
 scoreboard players set sid effectstack 0
 Set "id" to the numeric effect id (supports from speed (1) to hero of the village (32), possible future effects are not supported)
 Set duration to the duration of the effect in ticks (20 = 1s)
 Set amplifier to the amplifier of the effect (starts at 0)
 Set sid to a "source id", effects with matching source id and id as an already applied one are ignored
 
 Clear Effect:
 give an effect with duration 0