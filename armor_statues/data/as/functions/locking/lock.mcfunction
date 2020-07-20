#
# Description:	Locks armor stand
# Called by:	as:trigger/lock
# Entity @s:	armor stand
#
execute as @p[tag=as_selected,tag=!as_chat] run title @s actionbar {"text":"Armor stand locked","color":"dark_green"}
execute as @p[tag=as_selected,tag=as_chat] run tellraw @s {"text":"<Stick_God> Armor stand locked","color":"dark_green"}
effect give @s minecraft:glowing 1
data merge entity @s {DisabledSlots:4144959}
tag @s add as_locked