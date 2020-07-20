# Creates all scores required by the datapack

scoreboard objectives add sh_x dummy "X"
scoreboard objectives add sh_y dummy "Y"
scoreboard objectives add sh_z dummy "Z"
scoreboard objectives add sh_dim dummy "Dimension"
scoreboard players set #sh_y sh_y 1

scoreboard objectives add sh_deathX dummy "Death X"
scoreboard objectives add sh_deathY dummy "Death Y"
scoreboard objectives add sh_deathZ dummy "Death Z"
scoreboard objectives add sh_deathDim dummy "Death Dimension"

scoreboard objectives add sh_help trigger "show sethome help"
scoreboard objectives add sethome trigger "sethome"
scoreboard objectives add home trigger "go to home"
scoreboard objectives add back trigger "go last death point"

scoreboard objectives add sh_toggleBack dummy "Toggle back"
scoreboard players set #sh_toggleBack-1 sh_toggleBack -1

scoreboard players add #sh_toggleBack sh_toggleBack 0
execute if score #sh_toggleBack sh_toggleBack matches 0 run scoreboard players set #sh_toggleBack sh_toggleBack 1

scoreboard objectives add sh_death deathCount "Death"
scoreboard objectives add sh_lastUsed dummy "Last used"
scoreboard objectives add sh_limitShow dummy "Sethome Limit Show"
scoreboard objectives add sh_limit dummy "Sethome Limit"
scoreboard players add #sh_limit sh_limit 0
scoreboard objectives add sh_cooldown dummy "Sethome Cooldown"
scoreboard players add #sh_cooldown sh_cooldown 0

