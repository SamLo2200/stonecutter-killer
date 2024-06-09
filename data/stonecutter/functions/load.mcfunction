# Declear scoreboard objectives if not exist
scoreboard objectives add stonecutter_exe_success dummy "stonecutter_exe_success"

# Loaded reponse
tellraw @a {"color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"","color":"yellow"}]},"text":"[Stonecutter Killer] Datapack Loaded"}