# Shows the work station of this villager

effect give @s minecraft:glowing 10 1 true
summon minecraft:shulker ~ ~ ~ {Invulnerable:1b,Glowing:1b,PortalCooldown:200,Silent:1b,Tags:["vwh_shulker"],NoAI:1b}
effect give @e[tag=vwh_shulker] minecraft:invisibility 1000000 99 true

execute store result entity @e[type=shulker,tag=vwh_shulker,sort=nearest,limit=1] Pos[0] double 1.0 run data get entity @s Brain.memories."minecraft:job_site".pos[0]
execute store result entity @e[type=shulker,tag=vwh_shulker,sort=nearest,limit=1] Pos[1] double 1.0 run data get entity @s Brain.memories."minecraft:job_site".pos[1]
execute store result entity @e[type=shulker,tag=vwh_shulker,sort=nearest,limit=1] Pos[2] double 1.0 run data get entity @s Brain.memories."minecraft:job_site".pos[2]

execute store result score @s vwh_stationX run data get entity @s Brain.memories."minecraft:job_site".pos[0]
execute store result score @s vwh_stationY run data get entity @s Brain.memories."minecraft:job_site".pos[1]
execute store result score @s vwh_stationZ run data get entity @s Brain.memories."minecraft:job_site".pos[2]

execute unless score @s vwh_stationY matches 0 run tellraw @p ["",{"text":"The workstation is located at [XYZ]: ","color":"yellow"},{"score":{"name":"@s","objective":"vwh_stationX"}},{"text":" "},{"score":{"name":"@s","objective":"vwh_stationY"}},{"text":" "},{"score":{"name":"@s","objective":"vwh_stationZ"}}]
execute if score @s vwh_stationY matches 0 run tellraw @p ["",{"text":"This villager does not have a workstation!","color":"yellow"}]

scoreboard players set @a vwh_findStation 0