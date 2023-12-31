#pour clear le résultat
execute at @s[scores={craftID=718}] if block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run function custom_crafting_table:reduce_input

#pour détecter les items en entrée et mettre le bon score
execute at @s if block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:1b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:2b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{Slot:3b,id:"minecraft:arrow"},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:10b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{Slot:11b,id:"minecraft:string"},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:12b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{Slot:19b,id:"minecraft:fishing_rod"},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:20b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:21b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run scoreboard players set @s craftID 718

#on place le bon item en sortie
execute at @s[scores={craftID=718}] run item replace block ~ ~-49 ~ container.14 with minecraft:fishing_rod{CustomModelData:718116,display:{Name:'{"translate":"ms.item:grappling_gun","italic":false}'},Unbreakable:1b}

#on tue l'item si l'établi est détruit
execute at @s[scores={craftID=718}] positioned ~ ~-49 ~ run kill @e[type=item,distance=..1,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"translate":"ms.item:grappling_gun","italic":false}'}}}}]

#on vérifie la zone d'input pour remettre le score à 0
execute at @s[scores={craftID=718}] unless block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:1b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:2b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{Slot:3b,id:"minecraft:arrow"},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:10b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{Slot:11b,id:"minecraft:string"},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:12b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{Slot:19b,id:"minecraft:fishing_rod"},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:20b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:21b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run scoreboard players set @s craftID 0

#on place la bonne recette dans l'emplacement
execute if entity @s[scores={recipe.show_hide=1,recipe.number=2}] at @s run data modify block ~ ~-49 ~ Items append value {tag:{CustomModelData:718,display:{Name:'{"text":"test"}'}},Slot:9b,id:"minecraft:knowledge_book",Count:1b}