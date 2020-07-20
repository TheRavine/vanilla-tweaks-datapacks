#
# Description:	Apply changes to nearest armour stand according to the player's as_trigger score
# Called by:	as_statue:tick
# Entity @s:	player
#
# Tag the player and the nearest armour stand within three blocks
#
tag @s add as_selected
tag @e[type=armor_stand,distance=..3,tag=!as_locked,nbt=!{Marker:1b},sort=nearest,limit=1] add as_selected
#
# Copy the trigger score to the selected armour stand
#
scoreboard players operation @e[type=armor_stand,tag=as_selected] as_trigger = @s as_trigger
#
# Give glowing effect for three seconds if checking target
#
execute if entity @s[scores={as_trigger=999}] as @e[type=armor_stand,tag=as_selected] run effect give @s minecraft:glowing 3
#
# Armour stand settings
#
execute if entity @s[scores={as_trigger=1..12}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/settings
#
# Nudge position
#
execute if entity @s[scores={as_trigger=40..51}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/position
execute if entity @s[scores={as_trigger=101..112}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/position
#
# Adjust rotation
#
execute if entity @s[scores={as_trigger=52..57}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/rotation
execute if entity @s[scores={as_trigger=124..125}] as @e[type=armor_stand,tag=as_selected] at @s run function as_statue:trigger/facing
#
# Change angle step size
#
execute if entity @s[scores={as_trigger=120}] run scoreboard players set @s as_angle 45
execute if entity @s[scores={as_trigger=121}] run scoreboard players set @s as_angle 15
execute if entity @s[scores={as_trigger=122}] run scoreboard players set @s as_angle 5
execute if entity @s[scores={as_trigger=123}] run scoreboard players set @s as_angle 1
execute if entity @s[scores={as_trigger=120..123}] run title @s actionbar [{"text":"Angle step set to ","color":"aqua"},{"score":{"name":"@s","objective":"as_angle"},"color":"aqua"},{"text":"\u00b0","color":"aqua"}]
#
# Pose presets
#
execute if entity @s[scores={as_trigger=20..39}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/presets
execute if entity @s[scores={as_trigger=141..142}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/presets
#
# Adjust pose
#
execute if entity @s[scores={as_trigger=60..95}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/adjust
#
# Mirror and flip
#
execute if entity @s[scores={as_trigger=131..134}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/mirror
execute if entity @s[scores={as_trigger=135}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/flip
#
# Copy and paste
#
execute if entity @s[scores={as_trigger=1004}] unless entity @s[nbt=!{SelectedItem:{id:"minecraft:written_book",tag:{datapack:"ArmourStatuesV2"}}}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/copy
execute if entity @s[scores={as_trigger=1005}] unless entity @s[nbt=!{SelectedItem:{id:"minecraft:written_book",tag:{datapack:"ArmourStatuesV2",SavedPose:{PoseSaved:1b}}}}] as @e[type=armor_stand,tag=as_selected] run function as_statue:trigger/paste
#
# Lock and seal
#
execute if entity @s[scores={as_trigger=1000..1003}] run function as_statue:trigger/lock
#
# Reset armour stand's trigger score and remove selected tag from player and armour stand
#
scoreboard players reset @e[type=armor_stand,tag=as_selected] as_trigger
tag @s remove as_selected
tag @e[type=armor_stand,tag=as_selected] remove as_selected
#
# Reset player's trigger score and re-enable
#
scoreboard players set @s as_trigger 0
scoreboard players enable @s as_trigger

