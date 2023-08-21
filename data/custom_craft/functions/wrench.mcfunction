#pour clear le résultat
execute at @s[scores={craftID=23185}] if block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run function custom_crafting_table:reduce_input

#pour détecter les items en entrée et mettre le bon score
execute at @s if block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:1b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{Slot:2b,id:"minecraft:iron_ingot"},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:3b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:10b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:iron_ingot"},{Slot:19b,id:"minecraft:iron_ingot"},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:20b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:21b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run scoreboard players set @s craftID 23185

#on place le bon item en sortie
execute at @s[scores={craftID=23185}] run item replace block ~ ~-49 ~ container.14 with minecraft:stick{CustomModelData:23185,display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}

#on tue l'item si l'établi est détruit
execute at @s[scores={craftID=23185}] positioned ~ ~-49 ~ run kill @e[type=item,distance=..1,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}}]

#on vérifie la zone d'input pour remettre le score à 0
execute at @s[scores={craftID=23185}] unless block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:1b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{Slot:2b,id:"minecraft:iron_ingot"},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:3b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:10b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:iron_ingot"},{Slot:19b,id:"minecraft:iron_ingot"},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:20b,id:"minecraft:light_gray_stained_glass_pane",Count:1b},{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:21b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run scoreboard players set @s craftID 0