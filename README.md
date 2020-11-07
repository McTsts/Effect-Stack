# Effect-Stack
 A system that stacks amplifiers of effects, while keeping durations separate.
 
#### Example:  
 Speed I 60s + Speed II 30s  
 => Speed III 30s, followed by Speed I 30s

# Usage
#### Basic:
Run this function as every player that has just joined the game (every time):  
`function effectstack:join`

#### Apply Effect:
1. Set "id" to the numeric effect id (supports from speed (1) to hero of the village (32), possible future effects are not supported)  
`scoreboard players set id effectstack 1`
2. Set duration to the duration of the effect in ticks (20 = 1s)  
`scoreboard players set duration effectstack 100`
3. Set amplifier to the amplifier of the effect (starts at 0)  
`scoreboard players set amplifier effectstack 0`
4. Set sid to a "source id"
`scoreboard players set sid effectstack 0`
5. Run v as the player(s) you want to give the effect to:  
`function effectstack:effect`

#### Source ID:
If an effect is applied and an effect of the same ID with the same SID already exists, the old effect is overwritten with the new one. If you want to use this system but do not want to use SID, simply add `scoreboard players add sid effectstack 1` at the start of the `effectstack:effect` function and SID will effictively be ignored.

# Notes
This system will mess up effects if you give them via /effect and then give the same effect via this system

Credit is appreciated, but not required.
