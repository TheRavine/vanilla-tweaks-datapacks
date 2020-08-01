#
# Description:	Check for players with trigger score set
# Called by:	#minecraft:tick
# Entity @s:	none
#
schedule function armour_statues:second 1s

execute as @a[scores={as_trigger=1..}] at @s run function armour_statues:trigger
