# Sets the home of the player to teleport to

execute store result score @s sh_x run data get entity @s Pos[0]
execute store result score @s sh_y run data get entity @s Pos[1]
execute store result score @s sh_z run data get entity @s Pos[2]
execute store result score @s sh_dim run data get entity @s Dimension

execute if score @s sh_x matches 0 if score @s sh_y matches 0 if score @s sh_z matches 0 run tellraw @s {"text":"You may not set your home at 0 0 0, it has been moved to 0 0 1","color":"yellow"}
execute if score @s sh_x matches 0 if score @s sh_y matches 0 if score @s sh_z matches 0 run scoreboard players set @s sh_z 1

scoreboard players operation @s sh_limitShow = #sh_limit sh_limit
scoreboard players operation @s sh_limitShow -= @s sh_limit

execute if score #sh_limit sh_limit matches 1.. run tellraw @a ["",{"text":"Home set! Sethomes remaining: ","color":"yellow"},{"score":{"name":"@s","objective":"sh_limitShow"},"color":"red"}]
execute if score #sh_limit sh_limit matches ..0 run tellraw @a ["",{"text":"Home set! Sethomes remaining: ","color":"yellow"},{"text":"∞","color":"red"}]

execute if score #sh_limit sh_limit matches 1.. run scoreboard players add @s sh_limit 1
scoreboard players set @s sethome 0