function custom_crafting_table:custom_crafting_table
execute as @e[type=minecraft:item_display,nbt={item:{id:"minecraft:crafting_table",tag:{CustomModelData:32119}}}] at @s run function custom_crafting_table:detect_input_quantity
scoreboard players set @e[type=item_display,nbt={item:{id:"minecraft:crafting_table",tag:{CustomModelData:32119}}}] one 1