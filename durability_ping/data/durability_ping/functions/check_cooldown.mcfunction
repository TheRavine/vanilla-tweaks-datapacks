# Checks and sets the cooldown of the advancement toast of each tool type per player

execute if entity @s[advancements={durability_ping:diamond_pickaxe=true}] run scoreboard players set @s dp_diamondPick 1
execute if entity @s[advancements={durability_ping:diamond_shovel=true}] run scoreboard players set @s dp_diamondShov 1
execute if entity @s[advancements={durability_ping:diamond_sword=true}] run scoreboard players set @s dp_diamondSword 1
execute if entity @s[advancements={durability_ping:diamond_axe=true}] run scoreboard players set @s dp_diamondAxe 1
execute if entity @s[advancements={durability_ping:diamond_hoe=true}] run scoreboard players set @s dp_diamondHoe 1
execute if entity @s[advancements={durability_ping:golden_pickaxe=true}] run scoreboard players set @s dp_goldenPick 1
execute if entity @s[advancements={durability_ping:golden_shovel=true}] run scoreboard players set @s dp_goldenShov 1
execute if entity @s[advancements={durability_ping:golden_sword=true}] run scoreboard players set @s dp_goldenSword 1
execute if entity @s[advancements={durability_ping:golden_axe=true}] run scoreboard players set @s dp_goldenAxe 1
execute if entity @s[advancements={durability_ping:golden_hoe=true}] run scoreboard players set @s dp_goldenHoe 1
execute if entity @s[advancements={durability_ping:wooden_pickaxe=true}] run scoreboard players set @s dp_woodenPick 1
execute if entity @s[advancements={durability_ping:wooden_shovel=true}] run scoreboard players set @s dp_woodenShov 1
execute if entity @s[advancements={durability_ping:wooden_sword=true}] run scoreboard players set @s dp_woodenSword 1
execute if entity @s[advancements={durability_ping:wooden_axe=true}] run scoreboard players set @s dp_woodenAxe 1
execute if entity @s[advancements={durability_ping:wooden_hoe=true}] run scoreboard players set @s dp_woodenHoe 1
execute if entity @s[advancements={durability_ping:iron_pickaxe=true}] run scoreboard players set @s dp_ironPick 1
execute if entity @s[advancements={durability_ping:iron_shovel=true}] run scoreboard players set @s dp_ironShov 1
execute if entity @s[advancements={durability_ping:iron_sword=true}] run scoreboard players set @s dp_ironSword 1
execute if entity @s[advancements={durability_ping:iron_axe=true}] run scoreboard players set @s dp_ironAxe 1
execute if entity @s[advancements={durability_ping:iron_hoe=true}] run scoreboard players set @s dp_ironHoe 1
execute if entity @s[advancements={durability_ping:stone_pickaxe=true}] run scoreboard players set @s dp_stonePick 1
execute if entity @s[advancements={durability_ping:stone_shovel=true}] run scoreboard players set @s dp_stoneShov 1
execute if entity @s[advancements={durability_ping:stone_sword=true}] run scoreboard players set @s dp_stoneSword 1
execute if entity @s[advancements={durability_ping:stone_axe=true}] run scoreboard players set @s dp_stoneAxe 1
execute if entity @s[advancements={durability_ping:stone_hoe=true}] run scoreboard players set @s dp_stoneHoe 1
execute if entity @s[advancements={durability_ping:fishing_rod=true}] run scoreboard players set @s dp_rod 1
execute if entity @s[advancements={durability_ping:flint_and_steel=true}] run scoreboard players set @s dp_flint 1
execute if entity @s[advancements={durability_ping:carrot_on_a_stick=true}] run scoreboard players set @s dp_carrotOnStick 1
execute if entity @s[advancements={durability_ping:shears=true}] run scoreboard players set @s dp_shears 1
execute if entity @s[advancements={durability_ping:shield=true}] run scoreboard players set @s dp_shield 1
execute if entity @s[advancements={durability_ping:bow=true}] run scoreboard players set @s dp_bow 1
execute if entity @s[advancements={durability_ping:trident=true}] run scoreboard players set @s dp_trident 1
execute if entity @s[advancements={durability_ping:crossbow=true}] run scoreboard players set @s dp_crossbow 1

advancement revoke @s through durability_ping:root