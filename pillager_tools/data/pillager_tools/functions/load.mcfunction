# Creates all scores required by the datapack

scoreboard objectives add pt_toggleBadOmen dummy "toggle bad omen"
scoreboard objectives add pt_toggleLeaders dummy "toggle patrol leaders"
scoreboard objectives add pt_togglePatrols dummy "toggle all patrols"
scoreboard objectives add pt_constant dummy

scoreboard objectives add pt_status trigger "get status"

scoreboard players set #-1 pt_constant -1

scoreboard players add #pt_toggleBadOmen pt_toggleBadOmen 0
scoreboard players add #pt_toggleLeaders pt_toggleLeaders 0
scoreboard players add #pt_togglePatrols pt_togglePatrols 0

execute if score #pt_toggleBadOmen pt_toggleBadOmen matches 0 run scoreboard players set #pt_toggleBadOmen pt_toggleBadOmen 1
execute if score #pt_toggleLeaders pt_toggleLeaders matches 0 run scoreboard players set #pt_toggleLeaders pt_toggleLeaders 1
execute if score #pt_togglePatrols pt_togglePatrols matches 0 run scoreboard players set #pt_togglePatrols pt_togglePatrols 1