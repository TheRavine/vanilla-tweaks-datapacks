tellraw @a[tag=tpa.target] [{"text":"You have denied ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":"'s teleport request.","color":"gold"}]
tellraw @s ["",{"selector":"@a[tag=tpa.target]","color":"red"},{"text":" has denied your teleport request.","color":"red"}]
scoreboard players reset @s tpa.target
scoreboard players reset @s tpa.timeout
tag @s remove tpa.sender