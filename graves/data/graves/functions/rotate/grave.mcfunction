data modify storage graves:storage players[0].graves append from storage graves:storage players[0].graves[0]
data remove storage graves:storage players[0].graves[0]
scoreboard players add #rotated graves.dummy 1
scoreboard players remove #remaining graves.dummy 1
execute store result score #id graves.dummy run data get storage graves:storage players[0].graves[0].id
execute unless score #remaining graves.dummy matches 0 unless score #id graves.dummy = #activated graves.dummy run function graves:rotate/grave
