#ici la détection de l'éventuel enlèvement d'un item
execute at @e[name="craft"] run execute if block ~ ~-1 ~ barrel{Items:[{Slot:10b,id:"minecraft:crafting_table",Count:1b},{Slot:11b,id:"minecraft:crafting_table",Count:1b}]} run execute unless block ~ ~-1 ~ barrel{Items:[{Slot:14b,id:"minecraft:diamond",Count:1b}]} run execute unless block ~ ~-1 ~ barrel{Items:[{Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run function more_stuff:clear_craft

#ici on a la détection de la bonne quantitée en entrée et le placement du résultat
execute at @e[name="craft"] if block ~ ~-1 ~ barrel{Items:[{Slot:10b,id:"minecraft:crafting_table",Count:1b},{Slot:11b,id:"minecraft:crafting_table",Count:1b}]} run scoreboard players set @e[name="craft",limit=1,sort=nearest] craftID 69420
execute at @e[name="craft",scores={craftID=69420}] run execute if block ~ ~-1 ~ barrel{Items:[{Slot:10b,id:"minecraft:crafting_table",Count:1b},{Slot:11b,id:"minecraft:crafting_table",Count:1b}]} run data modify block ~ ~-1 ~ Items append value {Slot:14b,id:"minecraft:diamond",Count:1b}
scoreboard players set @e[name="craft",scores={craftID=69420}] craftID 0