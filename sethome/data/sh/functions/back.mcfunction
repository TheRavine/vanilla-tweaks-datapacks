# Teleports the player to their set home

execute if score @s sh_deathDim matches -1 in minecraft:the_nether run tp @s ~ ~ ~
execute if score @s sh_deathDim matches 0 in minecraft:overworld run tp @s ~ ~ ~
execute if score @s sh_deathDim matches 1 in minecraft:the_end run tp @s ~ ~ ~

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["sh_back"],NoGravity:1b,Invisible:1b,Marker:1b}
tag @s add sh_tpBack

execute as @e[tag=sh_back,sort=nearest,limit=1] at @s run function sh:position_back

scoreboard players add @s sh_lastUsed 1