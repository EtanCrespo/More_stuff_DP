#pour clear le résultat/ to clear the result if there's nothing
execute at @s[scores={craftID=49195}] if block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:14b,id:"minecraft:light_gray_stained_glass_pane"}]} run function custom_crafting_table:reduce_input

#pour détecter les items en entrée et mettre le bon score/ detect the correct ingredients to assign the correct score
execute at @s if block ~ ~-49 ~ barrel{Items:[{id:"minecraft:experience_bottle"},{id:"minecraft:book"},{id:"minecraft:grindstone"}]} run scoreboard players set @s craftID 49195

#on place le bon item en sortie/ correct output item
execute at @s[scores={craftID=49195}] run item replace block ~ ~-49 ~ container.14 with minecraft:enchanted_book{display:{Name:'{"translate":"ms.item:disenchantment_book","italic":false}'}}

#on tue l'item si l'établi est détruit/we kill the item if we destroy the crafting table
execute at @s[scores={craftID=49195}] positioned ~ ~-49 ~ run kill @e[type=item,distance=..1,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"translate":"ms.item:disenchantment_book","italic":false}'}}}}]

#on vérifie la zone d'input pour remettre le score à 0/ verify the ingredient to reset the score to 0
execute at @s[scores={craftID=49195}] unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:experience_bottle"},{id:"minecraft:book"},{id:"minecraft:grindstone"}]} run scoreboard players set @s craftID 0

#on place la bonne recette dans l'emplacement
execute if entity @s[scores={recipe.show_hide=1,recipe.number=1}] at @s run data modify block ~ ~-49 ~ Items append value {tag:{CustomModelData:49195,display:{Name:'{"translate":"ms.item:disenchantment_book","color":"white","italic":false,"extra":[{"text":" ("},{"translate":"cct.recipe:shapeless"},{"text":")"}]}',Lore:['[{"text":"1x ","color":"white","italic":false,"extra":[{"translate":"block.minecraft.grindstone"}]}]','[{"text":"1x ","color":"white","italic":false,"extra":[{"translate":"item.minecraft.book"}]}]','[{"text":"1x ","color":"white","italic":false,"extra":[{"translate":"item.minecraft.experience_bottle"}]}]']}},Slot:9b,id:"minecraft:knowledge_book",Count:1b}