#pour clear le résultat
execute at @s[scores={craftID=91422}] if block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run function custom_crafting_table:reduce_input

#pour détecter les items en entrée et mettre le bon score
execute at @s if block ~ ~-49 ~ barrel{Items:[{tag:{Potion:"minecraft:invisibility"}},{id:"minecraft:item_frame"}]} run scoreboard players set @s craftID 91422
execute at @s if block ~ ~-49 ~ barrel{Items:[{tag:{Potion:"minecraft:long_invisibility"}},{id:"minecraft:item_frame"}]} run scoreboard players set @s craftID 91422

#on place le bon item en sortie
execute at @s[scores={craftID=91422}] run item replace block ~ ~-49 ~ container.14 with minecraft:item_frame{display:{Lore:['{"translate":"effect.minecraft.invisibility","italic":false,"color":"blue"}']},EntityTag:{Invisible:1b,Tags:[invisible.frame]}}

#on tue l'item si l'établi est détruit
execute at @s[scores={craftID=91422}] positioned ~ ~-49 ~ run kill @e[type=item,distance=..1,limit=1,sort=nearest,nbt={Item:{tag:{display:{Lore:['{"translate":"effect.minecraft.invisibility","italic":false,"color":"blue"}']}}}}]

#on vérifie la zone d'input pour remettre le score à 0
execute at @s[scores={craftID=91422}] unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:1b},{tag:{Potion:"minecraft:invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:2b},{tag:{Potion:"minecraft:invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:3b},{tag:{Potion:"minecraft:invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:10b},{tag:{Potion:"minecraft:invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:11b},{tag:{Potion:"minecraft:invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:12b},{tag:{Potion:"minecraft:invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:19b},{tag:{Potion:"minecraft:invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:20b},{tag:{Potion:"minecraft:invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:21b},{tag:{Potion:"minecraft:invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:1b},{tag:{Potion:"minecraft:long_invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:2b},{tag:{Potion:"minecraft:long_invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:3b},{tag:{Potion:"minecraft:long_invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:10b},{tag:{Potion:"minecraft:long_invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:11b},{tag:{Potion:"minecraft:long_invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:12b},{tag:{Potion:"minecraft:long_invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:19b},{tag:{Potion:"minecraft:long_invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:20b},{tag:{Potion:"minecraft:long_invisibility"}}]} unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:item_frame",Slot:21b},{tag:{Potion:"minecraft:long_invisibility"}}]} run scoreboard players set @s craftID 0