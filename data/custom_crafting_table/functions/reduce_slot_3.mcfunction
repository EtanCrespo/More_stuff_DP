scoreboard players operation @s Items.3.Count -= @s one
execute store result block ~ ~-383 ~ Items[3].Count int 1 run scoreboard players get @s Items.3.Count
execute store result score @s Slot.Items run data get block ~ ~-383 ~ Items[3].Slot 1
execute unless entity @s[scores={Slot.Items=3}] run data modify block ~ ~-383 ~ Items prepend value {Slot:3b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}