execute store result score #keepInventory graves.dummy run gamerule keepInventory
execute if score #keepInventory graves.dummy matches 0 if score #prevKeepInventory graves.dummy matches 1 run tellraw @a {"text":"The Graves data pack cannot read player inventories correctly unless gamerule keepInventory is true.","color":"red"}
scoreboard players operation #prevKeepInventory graves.dummy = #keepInventory graves.dummy
execute store result score #doImmediateRespawn graves.dummy run gamerule doImmediateRespawn
execute if score #doImmediateRespawn graves.dummy matches 1 if score #prevDoImmediateRespawn graves.dummy matches 0 run tellraw @a {"text":"The Graves data pack cannot position graves correctly unless gamerule doImmediateRespawn is false.","color":"red"}
scoreboard players operation #prevDoImmediateRespawn graves.dummy = #doImmediateRespawn graves.dummy
schedule function graves:check_game_rules 1s
