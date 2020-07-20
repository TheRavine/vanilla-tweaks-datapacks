# Toggles the trigger on and off

scoreboard players operation #sh_toggleBack sh_toggleBack *= #sh_toggleBack-1 sh_toggleBack

execute if score #sh_toggleBack sh_toggleBack matches 1 run tellraw @s ["",{"text":"Back has been toggled on","color":"yellow"}]
execute if score #sh_toggleBack sh_toggleBack matches -1 run tellraw @s ["",{"text":"Back has been toggled off","color":"yellow"}]
