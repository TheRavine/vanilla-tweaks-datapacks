# Controls everything to do with pillager tools

schedule function pillager_tools:tick 1t

scoreboard players enable @a pt_status
execute as @a[scores={pt_status=1..}] at @s run function pillager_tools:status
scoreboard players set @a pt_status 0

execute if score #pt_toggleBadOmen pt_toggleBadOmen matches -1 run effect clear @a minecraft:bad_omen
