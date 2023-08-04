#ici la détection de l'éventuel enlèvement d'un item
execute at @e[name="craft"] run execute if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:potion",Count:1b},{id:"minecraft:feather",Count:1b},{id:"minecraft:enchanted_book",Count:1b}]} run execute unless block ~ ~-1 ~ barrel{Items:[{Slot:14b,id:"minecraft:enchanted_book",Count:1b}]} run execute unless block ~ ~-1 ~ barrel{Items:[{Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run function more_stuff:clear_craft

#ici on a la détection de la bonne quantitée en entrée et le placement du résultat
execute at @e[name="craft"] if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:potion",Count:1b},{id:"minecraft:feather",Count:1b},{id:"minecraft:enchanted_book",Count:1b}]} run scoreboard players set @e[name="craft",limit=1,sort=nearest] craftID 1912
execute at @e[name="craft",scores={craftID=1912}] run execute if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:potion",Count:1b},{id:"minecraft:feather",Count:1b},{id:"minecraft:enchanted_book",Count:1b}]} run data modify block ~ ~-1 ~ Items append value {Slot:14b,id:"minecraft:enchanted_book",Count:1b,tag:{CustomModelData:2,display:{Name:'{"text":"slow-falling feather","italic":false}'}}}
scoreboard players set @e[name="craft",scores={craftID=1912}] craftID 0

#offhand/activated
effect give @e[nbt={Inventory:[{Slot:-106b,id:"minecraft:enchanted_book",tag:{display:{Name:'{"text":"slow-falling feather","italic":false}'}}}]}] minecraft:slow_falling 1 0 true