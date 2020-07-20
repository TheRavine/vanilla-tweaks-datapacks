# Desc: All commands here run every second
#
# Called by: main:tick

execute as @e[type=minecraft:creeper,tag=!acg_tagged] at @s run data merge entity @s {ExplosionRadius:0}
tag @e[type=minecraft:creeper,tag=!acg_tagged] add acg_tagged