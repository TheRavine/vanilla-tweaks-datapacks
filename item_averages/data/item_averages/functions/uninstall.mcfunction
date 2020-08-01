# Removes all scores required by the datapack

schedule clear item_averages:tick
schedule clear item_averages:second

scoreboard objectives remove ia_startTracking
scoreboard objectives remove ia_help

scoreboard objectives remove ia_updateTime

scoreboard objectives remove ia_trackTime

scoreboard objectives remove ia_countedItems
scoreboard objectives remove ia_averageItems

scoreboard objectives remove ia_constants

team remove ia_pointDisplay