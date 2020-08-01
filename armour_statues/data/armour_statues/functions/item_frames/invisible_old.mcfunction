#
# Description:	turns item frame invisible
# Called by:	armour_statues:if_trigger
# Entity @s:	item frame
#
#
# If no potion in hand, display failure message
#
execute if entity @p[tag=as_selected,predicate=!armour_statues:mainhand_potion,predicate=!armour_statues:offhand_potion] run title @a[tag=as_selected,tag=!as_chat] actionbar [{"text":"Requires invisibility potion in Mainhand or Offhand","color":"dark_red"}]
execute if entity @p[tag=as_selected,predicate=!armour_statues:mainhand_potion,predicate=!armour_statues:offhand_potion] run tellraw @a[tag=as_selected,tag=as_chat] [{"text":"<Stick_God> ","color":"dark_green"},{"text":"Requires invisibility potion in Mainhand or Offhand","color":"dark_red"}]
#
# If player has a potion in hand, successfully trigger
#
execute unless entity @p[tag=as_selected,predicate=!armour_statues:mainhand_potion,predicate=!armour_statues:offhand_potion] run function armour_statues:item_frames/invisible_success
