scoreboard players set #found effectstackID 1
execute as @a[scores={effectstackID=1..}] if score @s effectstackID = #find effectstackID run scoreboard players set #found effectstackID 0
execute as @a[scores={effectstackID=1..}] if score @s effectstackID = #find effectstackID run scoreboard players add #find effectstackID 1
execute if score #found effectstackID matches 0 run function effectstack:internal/join