execute as @e[type=minecraft:armor_stand,tag=graves.model] run data modify entity @s Fire set value 32767s
schedule function graves:set_fire 20s
