#
# Description:	Check for players with trigger score set
# Called by:	#minecraft:tick
# Entity @s:	none
#
# Armor stand trigger
#
schedule function armour_statues:second 1s

execute as @a[scores={as_trigger=1..}] at @s run function armour_statues:trigger
#
# Item Frame trigger
#
execute as @a[scores={if_invisible=1..}] at @s run function armour_statues:if_trigger
#
# Makes empty invisible item frames visible
#
execute as @e[type=item_frame,tag=if_invisible,nbt=!{Item:{Count:1b}}] run function armour_statues:item_frames/visible
#
# Check for players at the particle shrine
#
execute as @e[tag=as_shrine] at @s run function armour_statues:shrine/main
#
# resets crafting advancement
#
execute if data storage customizable_armor_stands:settings as_admin{book_craft:"Enabled"} as @a[advancements={armour_statues:crafting=true}] run advancement revoke @s only armour_statues:crafting