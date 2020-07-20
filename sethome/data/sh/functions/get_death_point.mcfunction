# Sets the death point of the player to teleport to

scoreboard players set @s sh_lastUsed 0

# Store location
execute store result score @s sh_deathX run data get entity @s Pos[0]
execute store result score @s sh_deathY run data get entity @s Pos[1]
execute store result score @s sh_deathZ run data get entity @s Pos[2]
execute store result score @s sh_deathDim run data get entity @s Dimension
scoreboard players operation @s sh_deathY += #sh_y sh_y

# Reset scores
scoreboard players set @s sh_death 0