tellraw @s [{"text":"Enter","color":"green"},{"text":" or ","color":"gold"},{"text":"click","color":"green"},{"text":" on ","color":"gold"},{"text":"/scoreboard players set #delay spawn.config <number>","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #delay spawn.config "},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to write ","color":"gold"},{"text":"/scoreboard players set #delay spawn.config","color":"yellow"},{"text":".\nEnter the number after clicking.","color":"gold"}]}},{"text":" to set the number of ticks to delay teleportation after running the spawn command. (1 second = 20 ticks.) The default is ","color":"gold"},{"text":"0","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set #delay spawn.config 0"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to run ","color":"gold"},{"text":"/scoreboard players set #delay spawn.config 0","color":"yellow"},{"text":".","color":"gold"}]}},{"text":". The current value is ","color":"gold"},{"score":{"name":"#delay","objective":"spawn.config"},"color":"yellow"},{"text":".","color":"gold"}]