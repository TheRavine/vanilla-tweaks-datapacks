execute store result score #remaining graves.dummy run data get storage graves:storage players[0].graves
execute store result score #id graves.dummy run data get storage graves:storage players[0].graves[0].id
execute unless score #remaining graves.dummy matches 0 unless score #id graves.dummy = #activated graves.dummy run function graves:rotate/grave
