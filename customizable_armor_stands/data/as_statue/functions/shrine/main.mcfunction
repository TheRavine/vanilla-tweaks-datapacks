# Controls all shrine functions

# Particle at shrine position
particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0.25 5

# Give book to player if they do not have it already
execute as @a[distance=..1.5,nbt=!{Inventory:[{id:"minecraft:written_book",tag:{author:"Stick God"}}]}] at @s run function as_statue:enable
