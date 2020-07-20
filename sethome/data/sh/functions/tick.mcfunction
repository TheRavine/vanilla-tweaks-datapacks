# Controls everything to do with sethome

scoreboard players add @a sh_cooldown 0
scoreboard players add @a sh_limit 0

# Set the initial scores to 0
scoreboard players add @a sh_x 0
scoreboard players add @a sh_y 0
scoreboard players add @a sh_z 0

# Check when player wants to show help
scoreboard players enable @a sh_help
execute as @a[scores={sh_help=1..}] at @s run function sh:show_help

# Check when player wants to sethome
scoreboard players enable @a sethome
execute if score #sh_limit sh_limit matches 1.. as @a[scores={sethome=1..}] at @s if score @s sh_limit <= #sh_limit sh_limit run function sh:sethome
execute if score #sh_limit sh_limit matches ..0 as @a[scores={sethome=1..}] at @s run function sh:sethome

# If player has higher limit than set limit
execute if score #sh_limit sh_limit matches 1.. as @a[scores={sethome=1..}] at @s if score @s sh_limit > #sh_limit sh_limit run tellraw @s {"text":"You have run out of sethomes!","color":"red"}

scoreboard players set @a sethome 0

# Check when player wants to go home
scoreboard players enable @a home
execute as @a[scores={home=1..,sh_cooldown=..0}] at @s run function sh:check_home

# If player is still on cooldown
execute as @a[scores={home=1..,sh_cooldown=1..}] at @s run tellraw @s ["",{"text":"Your home is still on cooldown!","color":"red"},{"text":" Ticks remaining: ","color":"yellow"},{"score":{"name":"@s","objective":"sh_cooldown"},"color":"yellow"}]

scoreboard players set @a home 0

scoreboard players remove @a[scores={sh_cooldown=1..}] sh_cooldown 1