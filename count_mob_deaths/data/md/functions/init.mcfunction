# Creates all scores required by the datapack

# Main scores
scoreboard objectives add md_mobDeaths dummy ["§r§6No. Mob Deaths§r"]

# Triggers
scoreboard objectives add md_help trigger ["count mob deaths help"]
scoreboard objectives add md_reset trigger ["reset scores of all mobs"]
scoreboard objectives add md_start trigger ["start counting mob deaths"]
scoreboard objectives add md_stop trigger ["stop counting mob deaths"]

# State that pack is in
scoreboard objectives add md_state trigger

# Scoreboard toggle
scoreboard objectives add md_showToggle trigger ["toggle scoreboard"]
scoreboard players set #md_showToggle md_showToggle -1
scoreboard players add #md_toggle md_showToggle 0
execute if score #md_toggle md_showToggle matches 0 run scoreboard players set #md_toggle md_showToggle 1
