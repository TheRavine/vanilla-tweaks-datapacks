#
# Description:	Processing every tick
# Called by:	#main:tick
# Entity @s:	None
#
# Check for players at the particle shrine
#
execute as @e[tag=as_shrine] at @s run function as:shrine/main
#
# If book crafting is enabled, check for players holding a written book titled "Statues"
#
execute if data storage customizable_armor_stands:settings as_admin{book_craft:"Enabled"} as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{title:"Statues"}}}] run function as:replace_book
#
# Display help in chat and enable for all players
#
execute as @a[scores={as_help=1..}] at @s run function as:help
