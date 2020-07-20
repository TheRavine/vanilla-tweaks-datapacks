data modify storage graves:storage players[0].graves append from storage graves:storage players[0].graves[0]
data remove storage graves:storage players[0].graves[0]
scoreboard players remove #remaining graves.dummy 1
execute unless score #remaining graves.dummy matches 0 run function graves:rotate/back_grave
