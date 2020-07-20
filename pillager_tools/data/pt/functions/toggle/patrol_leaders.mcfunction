# Toggles the trigger on and off

scoreboard players operation #pt_toggleLeaders pt_toggleLeaders *= #-1 pt_constant

execute if score #pt_toggleLeaders pt_toggleLeaders matches 1.. run tellraw @s ["",{"text":"Patrol Leaders have been enabled","color":"yellow"}]
execute if score #pt_toggleLeaders pt_toggleLeaders matches ..-1 run tellraw @s ["",{"text":"Patrol Leaders have been disabled","color":"yellow"}]
