execute unless entity @s[gamemode=spectator] if block ~ ~-1 ~ #minecraft:wool positioned ~ ~-1 ~ align xyz if entity @e[type=minecraft:item_frame,tag=elevs.marker,dx=0,dy=0,dz=0] at @s run function elevators:start_to_offset_up
scoreboard players reset @s elevs.jump