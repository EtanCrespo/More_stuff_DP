#ici la détection de l'éventuel enlèvement d'un item
execute at @e[name="craft"] run execute if block ~ ~-1 ~ barrel{Items:[{Slot:3b,id:"minecraft:arrow",Count:1b},{Slot:11b,id:"minecraft:string",Count:1b},{Slot:19b,id:"minecraft:fishing_rod",Count:1b}]} run execute unless block ~ ~-1 ~ barrel{Items:[{Slot:14b,id:"minecraft:fishing_rod",Count:1b}]} run execute unless block ~ ~-1 ~ barrel{Items:[{Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b}]} run function more_stuff:clear_craft

#ici on a la détection de la bonne quantitée en entrée et le placement du résultat
execute at @e[name="craft"] if block ~ ~-1 ~ barrel{Items:[{Slot:3b,id:"minecraft:arrow",Count:1b},{Slot:11b,id:"minecraft:string",Count:1b},{Slot:19b,id:"minecraft:fishing_rod",Count:1b}]} run scoreboard players set @e[name="craft",limit=1,sort=nearest] craftID 718
execute at @e[name="craft"] unless entity @s[scores={craftID=718}] run function more_stuff:clear_result
execute at @e[name="craft",scores={craftID=718}] run execute if block ~ ~-1 ~ barrel{Items:[{Slot:3b,id:"minecraft:arrow",Count:1b},{Slot:11b,id:"minecraft:string",Count:1b},{Slot:19b,id:"minecraft:fishing_rod",Count:1b}]} run data modify block ~ ~-1 ~ Items append value {Slot:14b,id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,CustomModelData:2,Damage:0,display:{Name:'{"text":"grapin","italic":false}'}}}
scoreboard players set @e[name="craft",scores={craftID=718}] craftID 0

#mainhand
execute if entity @a[limit=1,nbt={SelectedItem:{tag:{display:{Name:'{"text":"grapin","italic":false}'}}}}] run execute at @e[sort=nearest,limit=1,type=minecraft:fishing_bobber] run tp @p[limit=1,nbt={SelectedItem:{tag:{display:{Name:'{"text":"grapin","italic":false}'}}}}] ^ ^ ^
#offhand
execute if entity @a[limit=1,nbt={Inventory:[{Slot:-106b,id:"minecraft:fishing_rod",tag:{display:{Name:'{"text":"grapin","italic":false}'}}}]}] unless entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] run execute at @e[sort=nearest,limit=1,type=minecraft:fishing_bobber] run tp @p[limit=1,nbt={Inventory:[{Slot:-106b,id:"minecraft:fishing_rod",tag:{display:{Name:'{"text":"grapin","italic":false}'}}}]}] ^ ^ ^