summon minecraft:firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:creeper_head",Count:1b,tag:{Fireworks:{Explosions:[{Flicker:0b,Trail:0b,Type:4b,Colors:[I;11743532,15435844,14602026,4312372,6719955,8073150,14188952]}]}}}}
data remove entity @s effects[{id:"minecraft:luck",amplifier:10b,show_particles:0b}]
execute unless data entity @s effects[0] run kill @s