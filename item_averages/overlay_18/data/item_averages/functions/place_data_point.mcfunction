# Finds the control area for where items must be detected 1x1 space

# Stop tracking if initiated
execute as @a at @s if score #ia_trackTimeClone ia_trackTime matches 1.. run tellraw @s {"text":"The tracking of items has been stopped","color":"red"}
function item_averages:reset_data_point

# Remove previous data point
function item_averages:remove_data_point

# Create new data point
summon magma_cube ~ ~ ~ {Tags:["ia_pointDisplay"],CustomNameVisible:1b,CustomName:"[\"Status: Not tracking\"]",Team:"ia_pointDisplay",NoAI:1b,Invulnerable:1b,Glowing:1b,Size:1b,active_effects:[{id:"minecraft:invisibility",duration:1000000,amplifier:99,show_particles:0b}]}

# Remove placing entity
kill @e[tag=ia_placeDataPoint]
