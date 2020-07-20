# Controls everything to do with pillager tools

scoreboard players enable @a pt_status
execute as @a[scores={pt_status=1..}] at @s run function pt:status
scoreboard players set @a pt_status 0

execute if score #pt_toggleBadOmen pt_toggleBadOmen matches -1 run effect clear @a minecraft:bad_omen
