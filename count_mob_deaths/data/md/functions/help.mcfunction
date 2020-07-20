# Shows help

tellraw @s ["",{"text":"Mob Death Counter help:","color":"yellow","bold":"true"}]
tellraw @s ["",{"text":"1. ","color":"green"},{"text":"Start counting mobs","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger md_start"},"hoverEvent":{"action":"show_text","value":"Click to run command"}}]
tellraw @s ["",{"text":"2. ","color":"green"},{"text":"Stop counting mobs","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger md_stop"},"hoverEvent":{"action":"show_text","value":"Click to run command"}}]
tellraw @s ["",{"text":"3. ","color":"green"},{"text":"Reset mob counter","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger md_reset"},"hoverEvent":{"action":"show_text","value":"Click to run command"}}]
tellraw @s ["",{"text":"4. ","color":"green"},{"text":"Toggle scoreboard","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger md_showToggle"},"hoverEvent":{"action":"show_text","value":"Click to run command"}}]

scoreboard players set @s md_help 0