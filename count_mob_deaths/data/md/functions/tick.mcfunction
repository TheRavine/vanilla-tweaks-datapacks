# Controls everything to do with datapack_name

scoreboard players enable @a md_help
execute as @a[scores={md_help=1..}] at @s run function md:help

scoreboard players enable @a md_showToggle
execute as @a[scores={md_showToggle=1..}] at @s run function md:toggle_trigger

scoreboard players enable @a md_start
execute as @a[scores={md_start=1..}] at @s run scoreboard players set #md_countMobs md_state 1
execute as @a[scores={md_start=1..}] at @s run scoreboard players set @s md_start 0

scoreboard players enable @a md_stop
execute as @a[scores={md_stop=1..}] at @s run function md:stop

scoreboard players enable @a md_reset
execute as @a[scores={md_reset=1..}] at @s run function md:reset

execute if score #md_countMobs md_state matches 1 run function md:count_mobs