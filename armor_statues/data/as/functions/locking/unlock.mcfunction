#
# Description:	Unocks locked armor stand
# Called by:	as:trigger/lock
# Entity @s:	nearest locked armor stand
#
execute as @p[tag=as_selected,tag=!as_chat] run title @s actionbar {"text":"Armor stand unlocked","color":"dark_green"}
execute as @p[tag=as_selected,tag=as_chat] run tellraw @s {"text":"<Stick_God> Armor stand unlocked","color":"dark_green"}
effect give @s minecraft:glowing 1
data merge entity @s {DisabledSlots:0}
tag @s remove as_locked