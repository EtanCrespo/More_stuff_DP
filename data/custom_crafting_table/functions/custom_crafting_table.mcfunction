#commandes pour placer la table de craft custom
execute as @e[name="custom_craft",type=bat] at @s run function custom_crafting_table:place_crafting_table

#commande pour obtenir la table de craft custom
execute as @a[nbt={Inventory:[{id:"minecraft:crafting_table",tag:{display:{Name:'{"text":"custom"}'}}}]}] run function custom_crafting_table:custom_crafting_table_get

#remplace en permanence les slots tels qu'ils sont censés être
execute at @e[type=item_display,nbt={item:{tag:{CustomModelData:32119},id:"minecraft:crafting_table",Count:1b}}] run function custom_crafting_table:slots

#commandes a exécuter en cas de destruction du baril
execute as @e[type=item_display,nbt={item:{tag:{CustomModelData:32119},id:"minecraft:crafting_table",Count:1b}}] at @s run execute if block ~ ~-383 ~ air run function custom_crafting_table:destroy

#on évite qu'un joueur ait les glass pane et la table
clear @a minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'}}
clear @a minecraft:light_gray_stained_glass_pane{display:{Name:'{"text":""}'}}
clear @a minecraft:barrel{display:{Name:'{"translate":"ms.gui:custom_crafting_table","italic":false}'}}