# resets scores and other things

scoreboard players set #md_countMobs md_state 0
scoreboard players reset * md_deaths
execute as @e[type=#count_mob_deaths:hostile_mobs,tag=md_tagged] run item replace entity @s armor.head with minecraft:air
execute as @a[scores={md_reset=1..}] at @s run scoreboard players set @s md_reset 0