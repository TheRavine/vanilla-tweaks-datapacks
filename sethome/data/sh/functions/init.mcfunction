# Creates all scores required by the datapack

scoreboard objectives add sh_x dummy "X"
scoreboard objectives add sh_y dummy "Y"
scoreboard objectives add sh_z dummy "Z"
scoreboard objectives add sh_dim dummy "Dimension"

scoreboard objectives add sh_help trigger "show sethome help"
scoreboard objectives add sethome trigger "sethome"
scoreboard objectives add home trigger "go to home"

scoreboard objectives add sh_limitShow dummy "Sethome Limit Show"
scoreboard objectives add sh_limit dummy "Sethome Limit"
scoreboard players add #sh_limit sh_limit 0
scoreboard objectives add sh_cooldown dummy "Sethome Cooldown"
scoreboard players add #sh_cooldown sh_cooldown 0

