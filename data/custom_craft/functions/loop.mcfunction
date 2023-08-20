#commande pour nettoyer l'espace des résultats
execute as @e[type=item_display,nbt={item:{id:"minecraft:crafting_table",tag:{CustomModelData:32119}}},scores={craftID=0}] at @s run function custom_crafting_table:clear_result

#remplace en permanence les slots tels qu'ils sont censés être
execute at @e[type=item_display,nbt={item:{tag:{CustomModelData:32119},id:"minecraft:crafting_table",Count:1b}}] run function custom_crafting_table:slots

execute as @e[type=item_display,nbt={item:{id:"minecraft:crafting_table",tag:{CustomModelData:32119}}}] run function custom_craft:recipes