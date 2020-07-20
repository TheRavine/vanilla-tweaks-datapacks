# Toggles the trigger on and off

scoreboard players operation #pt_togglePatrols pt_togglePatrols *= #-1 pt_constant

execute if score #pt_togglePatrols pt_togglePatrols matches 1.. run tellraw @s ["",{"text":"Patrols have been enabled","color":"yellow"}]
execute if score #pt_togglePatrols pt_togglePatrols matches ..-1 run tellraw @s ["",{"text":"Patrols have disabled","color":"yellow"}]
