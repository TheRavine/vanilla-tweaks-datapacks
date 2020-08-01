tellraw @a[tag=tpa.target] [{"text":"You have accepted ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":"'s teleport request.","color":"gold"}]
tellraw @s ["",{"selector":"@a[tag=tpa.target]","color":"yellow"},{"text":" has accepted your teleport request.","color":"gold"}]
tp @s @a[tag=tpa.target,limit=1]
scoreboard players reset @s tpa.target
scoreboard players reset @s tpa.timeout
tag @s remove tpa.sender