#
# Description:	Check shrine each tick
# Called by:	#main:tick
# Entity @s:	None
#
execute as @e[tag=as_shrine] at @s run function as_statue:shrine/main
