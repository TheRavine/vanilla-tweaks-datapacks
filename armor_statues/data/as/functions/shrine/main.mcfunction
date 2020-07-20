#
# Description:	Display shrine particles and give book
# Called by:	as:tick
# Entity @s:	Shrine marker area effect cloud
#
# Particle at shrine position
#
particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0.25 5
#
# Give book to nearby players if they do not have it already
#
execute as @a[distance=..1.5,nbt=!{Inventory:[{id:"minecraft:written_book",tag:{datapack:"ArmourStatuesV2"}}]}] at @s run function as:give
