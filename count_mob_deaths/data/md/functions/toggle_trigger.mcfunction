# Toggles the trigger on and off

scoreboard players operation #md_toggle md_showToggle *= #md_showToggle md_showToggle
execute if score #md_toggle md_showToggle matches 1 run tellraw @s ["",{"text":"scoreboard has been toggled on","color":"yellow"}]
execute if score #md_toggle md_showToggle matches 1 run scoreboard objectives setdisplay sidebar md_mobDeaths
execute if score #md_toggle md_showToggle matches -1 run tellraw @s ["",{"text":"scoreboard has been toggled off","color":"yellow"}]
execute if score #md_toggle md_showToggle matches -1 run scoreboard objectives setdisplay sidebar

scoreboard players set @a md_showToggle 0
scoreboard players enable @s md_showToggle
