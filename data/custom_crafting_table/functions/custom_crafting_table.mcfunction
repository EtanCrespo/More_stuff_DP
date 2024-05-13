#commandes pour placer la table de craft custom
#execute as @e[name="custom_craft",type=armor_stand,nbt={Small:1b,Invisible:1b}] at @s run function custom_crafting_table:place_crafting_table

#commande pour obtenir la table de craft custom
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:crafting_table",components:{"minecraft:custome_name":'{"text":"custom"}'}}]}] run function custom_crafting_table:custom_crafting_table_get

#on évite qu'un joueur ait les glass pane et la table
#clear @a minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'}}
#clear @a minecraft:light_gray_stained_glass_pane{display:{Name:'{"text":""}'}}
#clear @a minecraft:barrel{display:{Name:'{"translate":"cct.gui:custom_crafting_table","italic":false,"fallback":"Custom Crafting Table"}'}}
#clear @a minecraft:knowledge_book{display:{Name:'{"translate":"cct.gui:hide_recipe","italic":false,"color": "white","fallback": "Hide Recipes"}'}}
#clear @a minecraft:knowledge_book{display:{Name:'{"translate":"cct.gui:show_recipe","italic":false,"color": "white","fallback": "Show Recipes"}'}}
#clear @a minecraft:arrow{display:{Name:'{"translate":"cct.gui:next_page","italic":false,"fallbakc":"Next Page"}'}}
#clear @a minecraft:arrow{display:{Name:'{"translate":"cct.gui:previous_page","italic":false,"fallbakc":"Previous Page"}'}}