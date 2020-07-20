# Teleports the player to their set home

execute if score @s sh_dim matches -1 in minecraft:the_nether run tp @s ~ ~ ~
execute if score @s sh_dim matches 0 in minecraft:overworld run tp @s ~ ~ ~
execute if score @s sh_dim matches 1 in minecraft:the_end run tp @s ~ ~ ~

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["sh_home"],NoGravity:1b,Invisible:1b,Marker:1b}
tag @s add sh_tpHome

execute as @e[tag=sh_home,sort=nearest,limit=1] at @s run function sh:position_home

scoreboard players set @s home 0

scoreboard players operation @s sh_cooldown = #sh_cooldown sh_cooldown