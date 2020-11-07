# increase timestamp
scoreboard players add timestamp effectstack 1

# reapply effect if effect runs out via timer
scoreboard players remove @a[scores={effectstackTimer=0..}] effectstackTimer 1
execute as @a[scores={effectstackTimer=0}] run function effectstack:apply/update