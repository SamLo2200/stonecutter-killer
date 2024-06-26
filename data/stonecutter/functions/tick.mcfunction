# Apply magic damage to a mob
execute store success score bool stonecutter_exe_success as @e[type=!minecraft:villager, type=!minecraft:item, type=!minecraft:experience_orb] at @s if block ~ ~ ~ minecraft:stonecutter run damage @s 20 minecraft:magic by @a[sort=nearest, limit=1]

# Blood particle when hit by a stonecutter
execute as @e[type=!minecraft:villager, type=!minecraft:item, type=!minecraft:experience_orb] at @s if block ~ ~ ~ minecraft:stonecutter at @s if score bool stonecutter_exe_success matches 1 if block ~ ~ ~ minecraft:stonecutter run particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0 0 0 0 10 force

# Reset execution success count
execute if score bool stonecutter_exe_success matches 1 run scoreboard players reset bool stonecutter_exe_success
