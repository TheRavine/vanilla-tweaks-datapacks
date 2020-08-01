tellraw @s [{"text":"Enter","color":"green"},{"text":" or ","color":"gold"},{"text":"click","color":"green"},{"text":" on ","color":"gold"},{"text":"/scoreboard players set #limit homes.config <number>","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #limit homes.config "},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to write ","color":"gold"},{"text":"/scoreboard players set #limit homes.config","color":"yellow"},{"text":".\nEnter the number after clicking.","color":"gold"}]}},{"text":" to set the maximum number of homes allowed per player. The default is ","color":"gold"},{"text":"1","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set #limit homes.config 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to run ","color":"gold"},{"text":"/scoreboard players set #limit homes.config 1","color":"yellow"},{"text":".","color":"gold"}]}},{"text":". The current value is ","color":"gold"},{"score":{"name":"#limit","objective":"homes.config"},"color":"yellow"},{"text":".","color":"gold"}]
tellraw @s [{"text":"Enter","color":"green"},{"text":" or ","color":"gold"},{"text":"click","color":"green"},{"text":" on ","color":"gold"},{"text":"/scoreboard players set #delay homes.config <number>","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #delay homes.config "},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to write ","color":"gold"},{"text":"/scoreboard players set #delay homes.config","color":"yellow"},{"text":".\nEnter the number after clicking.","color":"gold"}]}},{"text":" to set the number of ticks for which the player must stand still before teleporting after running the home command. (1 second = 20 ticks.) The default is ","color":"gold"},{"text":"0","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set #delay homes.config 0"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to run ","color":"gold"},{"text":"/scoreboard players set #delay homes.config 0","color":"yellow"},{"text":".","color":"gold"}]}},{"text":". The current value is ","color":"gold"},{"score":{"name":"#delay","objective":"homes.config"},"color":"yellow"},{"text":".","color":"gold"}]