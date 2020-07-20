# resets scores and other things

scoreboard players set #md_countMobs md_state 0
scoreboard players reset * md_mobDeaths
execute as @e[type=#md:hostile_mobs,tag=md_tagged] run replaceitem entity @s armor.head minecraft:air
execute as @a[scores={md_reset=1..}] at @s run scoreboard players set @s md_reset 0