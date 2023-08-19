#pour clear le résultat
execute at @s[scores={craftID=1615}] if block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run function custom_crafting_table:reduce_input

#pour détecter les items en entrée et mettre le bon score
execute at @s if block ~ ~-49 ~ barrel{Items:[{id:"minecraft:potion"},{id:"minecraft:painting"}]} run scoreboard players set @s craftID 1615

#on place le bon item en sortie
execute at @s[scores={craftID=1615}] run item replace block ~ ~-49 ~ container.14 with minecraft:paper{CustomModelData:1615,display:{Name:'{"translate":"ms.item:potions_recipes","italic":false}'}}

#on tue l'item si l'établi est détruit
execute at @s[scores={craftID=1615}] positioned ~ ~-49 ~ run kill @e[type=item,distance=..1,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"translate":"ms.item:potions_recipes","italic":false}'}}}}]

#on vérifie la zone d'input pour remettre le score à 0
execute at @s[scores={craftID=1615}] unless block ~ ~-49 ~ barrel{Items:[{id:"minecraft:painting"},{id:"minecraft:potion"}]} run scoreboard players set @s craftID 0