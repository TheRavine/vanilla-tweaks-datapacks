execute store result entity @s Pos[0] double 1 run scoreboard players get @p sh_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @p sh_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @p sh_z

tp @a[tag=sh_tpHome] @s
tag @a remove sh_tpHome

kill @s