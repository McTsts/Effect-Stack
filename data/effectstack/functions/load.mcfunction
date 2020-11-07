scoreboard objectives add effectstack dummy
scoreboard objectives add effectstackID dummy
scoreboard objectives add effectstackTimer dummy
scoreboard objectives add Temp dummy
function effectstack:store/clear
scoreboard players reset timestamp effectstack
scoreboard players set #20 effectstack 20