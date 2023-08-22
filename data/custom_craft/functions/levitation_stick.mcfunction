#pour clear le résultat/ to clear the result if there's nothing
execute at @s[scores={craftID=12522}] if block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:14b,id:"minecraft:light_gray_stained_glass_pane"}]} run function custom_crafting_table:reduce_input

#pour détecter les items en entrée et mettre le bon score/ detect the correct ingredients to assign th correct score
execute at @s if block ~ ~-49 ~ barrel{Items:[{Slot:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:2b,id:"minecraft:shulker_shell",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:3b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:10b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:11b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:12b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:19b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:20b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:21b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}}]} run scoreboard players set @s craftID 12522

#on place le bon item en sortie/ correct output item
execute at @s[scores={craftID=12522}] run item replace block ~ ~-49 ~ container.14 with minecraft:crafting_table{CustomModelData:12522,display:{Name:'{"translate":"ms.item:custom_crafting_table","italic":false}'}}

#on tue l'item si l'établi est détruit/we kill the item if we destroy the crafting table
execute at @s[scores={craftID=12522}] positioned ~ ~-49 ~ run kill @e[type=item,distance=..1,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"translate":"ms.item:custom_crafting_table","italic":false}'}}}}]

#on vérifie la zone d'input pour remettre le score à 0/ verify the ingredient to reset the score to 0
execute at @s[scores={craftID=12522}] unless block ~ ~-49 ~ barrel{Items:[{Slot:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:2b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:3b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:10b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:11b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:12b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:19b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:20b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}},{Slot:21b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:2,display:{Name:'{"text":""}'}}}]} run scoreboard players set @s craftID 0