# Controls everything to do with datapack_name

schedule function count_mob_deaths:tick 1t

scoreboard players enable @a md_help
execute as @a[scores={md_help=1..}] at @s run function count_mob_deaths:config

scoreboard players enable @a md_toggle
execute as @a[scores={md_toggle=1..}] at @s run function count_mob_deaths:toggle_trigger

scoreboard players enable @a md_start
execute as @a[scores={md_start=1..}] at @s run scoreboard players set #md_countMobs md_state 1
execute as @a[scores={md_start=1..}] at @s run scoreboard players set @s md_start 0

scoreboard players enable @a md_stop
execute as @a[scores={md_stop=1..}] at @s run function count_mob_deaths:stop

scoreboard players enable @a md_reset
execute as @a[scores={md_reset=1..}] at @s run function count_mob_deaths:reset

execute if score #md_countMobs md_state matches 1 run function count_mob_deaths:count_mobs