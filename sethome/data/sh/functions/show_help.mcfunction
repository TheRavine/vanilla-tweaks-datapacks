# Toggles the trigger on and off

tellraw @s ["",{"text":"Sethome help:","color":"yellow","bold":"true"}]
tellraw @s ["",{"text":"1. ","color":"green"},{"text":"Sethome","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger sethome"},"hoverEvent":{"action":"show_text","value":"Click to sethome (/trigger sethome)"}}]
tellraw @s ["",{"text":"2. ","color":"green"},{"text":"Goto Home","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger home"},"hoverEvent":{"action":"show_text","value":"Click to goto home (/trigger home)"}}]
tellraw @s ["",{"text":"3. ","color":"green"},{"text":"Goto last death point","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger back"},"hoverEvent":{"action":"show_text","value":"Click to goto last death point (/trigger back)"}}]
tellraw @s ["",{"text":"4. ","color":"green"},{"text":"Reset sethome limit of a player","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players reset <playerName> sh_limit"},"hoverEvent":{"action":"show_text","value":"Allows an admin to reset a player's sethome limit, allowing them to change location for the set number of times"}}]
tellraw @s ["",{"text":"5. ","color":"green"},{"text":"Set home teleport cooldown","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #sh_cooldown sh_cooldown <ticks>"},"hoverEvent":{"action":"show_text","value":"Allows an admin to set the cooldown in ticks between when players can tp to their home (0 = no cooldown)"}}]
tellraw @s ["",{"text":"6. ","color":"green"},{"text":"Set sethome limit","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #sh_limit sh_limit <limit>"},"hoverEvent":{"action":"show_text","value":"Allows and admin to set the amount of times a player can change the location of their home. (0 = infinite)"}}]
tellraw @s ["",{"text":"7. ","color":"green"},{"text":"Toggle back usage","color":"yellow","clickEvent":{"action":"run_command","value":"/function sh:toggle_back_usage"},"hoverEvent":{"action":"show_text","value":"Toggle the ability for players to teleport to their last death point."}}]

scoreboard players set @s sh_help 0
scoreboard players enable @s sh_help
