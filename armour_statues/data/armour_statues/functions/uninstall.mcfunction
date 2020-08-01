#
# Description:	Remove scoreboards
# Called by:	main:#uninstall
# Entity @s:	None
#
# Remove scoreboards
#
schedule clear armour_statues:tick
schedule clear armour_statues:second

scoreboard objectives remove as_trigger
scoreboard objectives remove as_pose
scoreboard objectives remove as_angle
scoreboard objectives remove as_help
