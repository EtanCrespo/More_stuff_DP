#pour clear le résultat
execute at @s[scores={craftID=191215}] if block ~ ~-49 ~ barrel{Items:[{tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run function custom_crafting_table:reduce_input

#pour détecter les items en entrée et mettre le bon score
execute at @s if block ~ ~-49 ~ barrel{Items:[{tag:{Potion:"minecraft:slow_falling"}},{id:"minecraft:feather"}]} run scoreboard players set @s craftID 191215
execute at @s if block ~ ~-49 ~ barrel{Items:[{tag:{Potion:"minecraft:long_slow_falling"}},{id:"minecraft:feather"}]} run scoreboard players set @s craftID 191215

#on place le bon item en sortie
execute at @s[scores={craftID=191215}] run item replace block ~ ~-49 ~ container.14 with minecraft:enchanted_book{CustomModelData:191215,display:{Name:'{"translate":"item.minecraft.feather","italic": false,"extra":[{"text": " (","italic": false},{"translate":"effect.minecraft.slow_falling","italic":false,"color":"blue"},{"text": ")","italic": false}]}'}}

#on tue l'item si l'établi est détruit
execute at @s[scores={craftID=191215}] positioned ~ ~-49 ~ run kill @e[type=item,distance=..1,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"translate":"item.minecraft.feather","italic": false,"extra":[{"text": " (","italic": false},{"translate":"effect.minecraft.slow_falling","italic":false,"color":"blue"},{"text": ")","italic": false}]}'}}}}]

#on vérifie la zone d'input pour remettre le score à 0
execute at @s[scores={craftID=191215}] unless block ~ ~-49 ~ barrel{Items:[{tag:{Potion:"minecraft:slow_falling"}},{id:"minecraft:feather"}]} unless block ~ ~-49 ~ barrel{Items:[{tag:{Potion:"minecraft:long_slow_falling"}},{id:"minecraft:feather"}]} run scoreboard players set @s craftID 0