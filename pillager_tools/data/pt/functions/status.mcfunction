# Returns the status of what's been toggled to everyone

tellraw @s {"text":"Pillager Tools Status:","color":"yellow","bold":true}

execute if score #pt_togglePatrols pt_togglePatrols matches 1 run tellraw @s ["",{"text":"Patrols: ","color":"yellow"},{"text":"Enabled","color":"green"}]
execute if score #pt_toggleBadOmen pt_toggleBadOmen matches 1 run tellraw @s ["",{"text":"Bad Omen: ","color":"yellow"},{"text":"Enabled","color":"green"}]
execute if score #pt_toggleLeaders pt_toggleLeaders matches 1 run tellraw @s ["",{"text":"Patrol Leaders: ","color":"yellow"},{"text":"Enabled","color":"green"}]

execute if score #pt_togglePatrols pt_togglePatrols matches -1 run tellraw @s ["",{"text":"Patrols: ","color":"yellow"},{"text":"Disabled","color":"red"}]
execute if score #pt_toggleBadOmen pt_toggleBadOmen matches -1 run tellraw @s ["",{"text":"Bad Omen: ","color":"yellow"},{"text":"Disabled","color":"red"}]
execute if score #pt_toggleLeaders pt_toggleLeaders matches -1 run tellraw @s ["",{"text":"Patrol Leaders: ","color":"yellow"},{"text":"Disabled","color":"red"}]
