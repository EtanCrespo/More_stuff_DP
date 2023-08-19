function custom_crafting_table:custom_crafting_table


#pour détecter en parmanence les quantités dans les slot d'entrées
execute as @e[type=minecraft:item_display,nbt={item:{id:"minecraft:crafting_table",tag:{CustomModelData:32119}}}] at @s run function custom_crafting_table:detect_input_quantity

#commandes a exécuter en cas de destruction du baril
execute as @e[type=item_display,nbt={item:{tag:{CustomModelData:32119},id:"minecraft:crafting_table",Count:1b}}] at @s run execute if block ~ ~-49 ~ air run function custom_crafting_table:destroy

#sert pour la fonction reduce slot pour décrémenter le score de stockage de 1
scoreboard players set @e[type=item_display,nbt={item:{id:"minecraft:crafting_table",tag:{CustomModelData:32119}}}] one 1