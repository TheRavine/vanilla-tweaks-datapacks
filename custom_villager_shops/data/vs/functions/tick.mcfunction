# Controls everything to do with vs

execute as @a[gamemode=creative,scores={vs_sneak=1..}] at @s run function vs:get_coords
execute as @a[gamemode=creative,scores={vs_sneak=1..}] at @s run execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:none"}},distance=..3,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chest run function vs:create_shop
execute as @a[gamemode=creative,scores={vs_sneak=1..}] at @s run execute as @e[type=villager,tag=vs_villager,distance=..3,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chest run function vs:create_shop
scoreboard players set @a[scores={vs_sneak=1..}] vs_sneak 0