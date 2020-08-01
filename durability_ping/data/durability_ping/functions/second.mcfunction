# Controls all to do with the datapack

schedule function durability_ping:second 1s

execute as @a[scores={dp_cooldown=1}] at @s run function durability_ping:check_durability
execute as @a[scores={dp_cooldown=2}] at @s run function durability_ping:check_cooldown
execute as @a at @s run function durability_ping:apply_cooldown

scoreboard players add @a dp_cooldown 1
scoreboard players set @a[scores={dp_cooldown=3}] dp_cooldown 1