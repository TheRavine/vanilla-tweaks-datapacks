#
# Description:	Create scoreboards
# Called by:	#main:init
# Entity @s:	None
#
# Create scoreboards
#
scoreboard objectives add as_trigger trigger
scoreboard objectives add as_pose dummy
scoreboard objectives add as_angle dummy
scoreboard objectives add as_help trigger
#
# Resets triggers on reload
#
scoreboard players enable * as_trigger
scoreboard players enable * as_help
#
# Variables
#
scoreboard players set #var15000 as_angle 15000
scoreboard players set #var45000 as_angle 45000
scoreboard players set #var30000 as_angle 30000
scoreboard players set #var60000 as_angle 60000
scoreboard players set #var90000 as_angle 90000
scoreboard players set #var180000 as_angle 180000
scoreboard players set #var360000 as_angle 360000
scoreboard players set #var-1 as_angle -1
#
# Sets storage settings
#
execute unless data storage customizable_armor_stands:settings as_admin.book_craft run data modify storage customizable_armor_stands:settings as_admin.book_craft set value "Disabled"
execute unless data storage customizable_armor_stands:settings as_admin.book_help run data modify storage customizable_armor_stands:settings as_admin.book_help set value "Disabled"
