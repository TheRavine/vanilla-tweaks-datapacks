# Toggles the trigger on and off

scoreboard players operation #pt_toggleBadOmen pt_toggleBadOmen *= #-1 pt_constant

execute if score #pt_toggleBadOmen pt_toggleBadOmen matches 1.. run tellraw @s ["",{"text":"Bad Omen has been enabled","color":"yellow"}]
execute if score #pt_toggleBadOmen pt_toggleBadOmen matches ..-1 run tellraw @s ["",{"text":"Bad Omen has been disabled","color":"yellow"}]
