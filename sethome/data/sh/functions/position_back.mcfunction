execute store result entity @s Pos[0] double 1 run scoreboard players get @p sh_deathX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p sh_deathY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p sh_deathZ

execute at @s run tp @s ~0.5 ~ ~0.5
execute at @s run tp @a[tag=sh_tpBack] @s

tag @a remove sh_tpBack

kill @s