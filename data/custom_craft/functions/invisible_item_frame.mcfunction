#pour clear le résultat
execute as @e[type=item_display,scores={craftID=91422}] at @s if block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run function custom_crafting_table:reduce_input

#pour détecter les items en entrée et mettre le bon score
execute as @e[type=item_display,nbt={item:{id:"minecraft:crafting_table",tag:{CustomModelData:32119}}}] at @s if block ~ ~-49 ~ barrel{Items:[{id:"minecraft:potion"},{id:"minecraft:painting"}]} run scoreboard players set @s craftID 91422

#on place le bon item en sortie
execute at @e[type=item_display,nbt={item:{id:"minecraft:crafting_table",tag:{CustomModelData:32119}}},scores={craftID=91422}] run item replace block ~ ~-49 ~ container.14 with minecraft:paper{CustomModelData:1615,display:{Name:'{"translate":"ms.item:potions_recipes","italic":false}'}}

#on vérifie la zone d'input pour remettre le score à 0
execute as @e[type=item_display,nbt={item:{id:"minecraft:crafting_table",tag:{CustomModelData:32119}}},scores={craftID=91422}] at @s unless block ~ ~-49 ~ barrel{Items:[{tag:{Potion:"minecraft:invisibility"}}]} run scoreboard players set @s craftID 0