data modify storage graves:storage players append from storage graves:storage players[0]
data remove storage graves:storage players[0]
scoreboard players remove #remaining graves.dummy 1
data modify storage graves:storage temp set from entity @s HandItems[1].tag.gravesData.uuid
execute store success score #success graves.dummy run data modify storage graves:storage temp set from storage graves:storage players[0].uuid
execute unless score #remaining graves.dummy matches 0 if score #success graves.dummy matches 1 run function graves:rotate/player_as_grave
