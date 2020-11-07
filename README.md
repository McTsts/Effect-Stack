# Effect-Stack
 A system that stacks amplifiers of effects, while keeping durations separate.
 
#### Example:  
 Speed I 60s + Speed II 30s  
 => Speed III 30s, followed by Speed I 30s

# Usage
#### Basic:
Run this function as every player on join:  
`function effectstack:join`

#### Apply Effect:
1. Set "id" to the numeric effect id (supports from speed (1) to hero of the village (32), possible future effects are not supported)  
`scoreboard players set id effectstack 1`
2. Set duration to the duration of the effect in ticks (20 = 1s)  
`scoreboard players set duration effectstack 100`
3. Set amplifier to the amplifier of the effect (starts at 0)  
`scoreboard players set amplifier effectstack 0`
4. Set sid to a "source id", effects with matching source id and id as an already applied one are ignored  
`scoreboard players set sid effectstack 0`
5. Run v as the player(s) you want to give the effect to:  
`function effectstack:effect`

#### Clear Effect:
Give an effect with duration 0

# Notes
This system will mess up effects if you give them via /effect and then give the same effect via this system

Credit is appreciated, but not required.
