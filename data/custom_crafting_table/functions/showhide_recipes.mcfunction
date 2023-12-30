#on initialise le score recipe.number à 0 et on empêche le débordement de valeur
execute unless entity @s[scores={recipe.number=1..9}] run scoreboard players set @s recipe.number 1

#changement du score recipe.number au clic des flèches
execute if entity @s[scores={recipe.show_hide=1}] unless block ~ ~-49 ~ minecraft:barrel{Items:[{tag:{CustomModelData:16185,display:{Name:'{"translate":"cct.gui:previous_page","italic":false,"fallbakc":"Previous Page"}'}},Slot:23b,id:"minecraft:arrow",Count:1b}]} run scoreboard players operation @s recipe.number -= @s one
execute if entity @s[scores={recipe.show_hide=1}] unless block ~ ~-49 ~ minecraft:barrel{Items:[{tag:{CustomModelData:14524,display:{Name:'{"translate":"cct.gui:next_page","italic":false,"fallbakc":"Next Page"}'}},Slot:25b,id:"minecraft:arrow",Count:1b}]} run scoreboard players operation @s recipe.number += @s one

#on mets le score à 1 pour afficher la recette
execute if block ~ ~-49 ~ barrel{Items:[{Slot:24b,id:"minecraft:knowledge_book",tag:{display:{Name:'{"translate":"cct.gui:hide_recipe","italic":false,"color": "white","fallback": "Hide Recipes"}'}}}]} run scoreboard players set @s recipe.show_hide 1
execute if entity @s[scores={recipe.show_hide=1}] run data modify block ~ ~-49 ~ Items prepend value {Slot:24b,id:"minecraft:knowledge_book",tag:{display:{Name:'{"translate":"cct.gui:show_recipe","italic":false,"color": "white","fallback": "Show Recipes"}'}},Count:1b}

#idem mais à 0 pour la cacher cette fois
execute if block ~ ~-49 ~ barrel{Items:[{Slot:24b,id:"minecraft:knowledge_book",tag:{display:{Name:'{"translate":"cct.gui:show_recipe","italic":false,"color": "white","fallback": "Show Recipes"}'}}}]} run scoreboard players set @s recipe.show_hide 0
execute if entity @s[scores={recipe.show_hide=0}] run data modify block ~ ~-49 ~ Items prepend value {Slot:24b,id:"minecraft:knowledge_book",tag:{display:{Name:'{"translate":"cct.gui:hide_recipe","italic":false,"color": "white","fallback": "Hide Recipes"}'}},Count:1b}

#dans le cas avec les recettes cachées
execute if entity @s[scores={recipe.show_hide=0}] run data modify block ~ ~-49 ~ Items append value {tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:23b,id:"minecraft:black_stained_glass_pane",Count:1b}
execute if entity @s[scores={recipe.show_hide=0}] run data modify block ~ ~-49 ~ Items append value {tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:25b,id:"minecraft:black_stained_glass_pane",Count:1b}
execute if entity @s[scores={recipe.show_hide=0}] run data modify block ~ ~-49 ~ Items append value {tag:{CustomModelData:2,display:{Name:'{"text":""}'}},Slot:9b,id:"minecraft:black_stained_glass_pane",Count:1b}

#dans le cas des recettes montrées
execute if entity @s[scores={recipe.show_hide=1}] run data modify block ~ ~-49 ~ Items append value {tag:{CustomModelData:16185,display:{Name:'{"translate":"cct.gui:previous_page","italic":false,"fallbakc":"Previous Page"}'}},Slot:23b,id:"minecraft:arrow",Count:1b}
execute if entity @s[scores={recipe.show_hide=1}] run data modify block ~ ~-49 ~ Items append value {tag:{CustomModelData:14524,display:{Name:'{"translate":"cct.gui:next_page","italic":false,"fallbakc":"Next Page"}'}},Slot:25b,id:"minecraft:arrow",Count:1b}