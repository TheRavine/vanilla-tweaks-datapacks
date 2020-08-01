# Controls everything to do with the datapack

# Check when player wants to show help

schedule function durability_ping:tick 1t

scoreboard players enable @a dp_help
execute as @a[scores={dp_help=1..}] at @s run function durability_ping:show_help
scoreboard players set @a dp_help 0