# Controls everything to do with pillager tools

execute if score #pt_togglePatrols pt_togglePatrols matches -1 run execute as @e[nbt={Patrolling:1b}] at @s if data entity @s PatrolTarget unless data entity @s CustomName run tp @s ~ ~-300 ~
execute if score #pt_toggleLeaders pt_toggleLeaders matches -1 run execute as @e[nbt={PatrolLeader:1b}] at @s if data entity @s PatrolTarget unless data entity @s CustomName run tp @s ~ ~-300 ~