#input 1
scoreboard players operation @s Items.1.Count -= @s one
execute store result block ~ ~-383 ~ Items[1].Count int 1 run scoreboard players get @s Items.1.Count
execute store result score @s Slot.Items run data get block ~ ~-383 ~ Items[1].Slot 1
execute unless entity @s[scores={Slot.Items=1}] run data modify block ~ ~-383 ~ Items prepend value {Slot:1b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.2.Count -= @s one
execute store result block ~ ~-383 ~ Items[2].Count int 1 run scoreboard players get @s Items.2.Count
execute store result score @s Slot.Items run data get block ~ ~-383 ~ Items[2].Slot 1
execute unless entity @s[scores={Slot.Items=2}] run data modify block ~ ~-383 ~ Items prepend value {Slot:2b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.3.Count -= @s one
execute store result block ~ ~-383 ~ Items[3].Count int 1 run scoreboard players get @s Items.3.Count
execute store result score @s Slot.Items run data get block ~ ~-383 ~ Items[3].Slot 1
execute unless entity @s[scores={Slot.Items=3}] run data modify block ~ ~-383 ~ Items prepend value {Slot:3b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}


scoreboard players operation @s Items.10.Count -= @s one
execute store result block ~ ~-383 ~ Items[10].Count int 1 run scoreboard players get @s Items.10.Count
execute store result score @s Slot.Items run data get block ~ ~-383 ~ Items[10].Slot 1
execute unless entity @s[scores={Slot.Items=10}] run data modify block ~ ~-383 ~ Items prepend value {Slot:10b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.11.Count -= @s one
execute store result block ~ ~-383 ~ Items[11].Count int 1 run scoreboard players get @s Items.11.Count
execute store result score @s Slot.Items run data get block ~ ~-383 ~ Items[11].Slot 1
execute unless entity @s[scores={Slot.Items=11}] run data modify block ~ ~-383 ~ Items prepend value {Slot:11b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.12.Count -= @s one
execute store result block ~ ~-383 ~ Items[12].Count int 1 run scoreboard players get @s Items.12.Count
execute store result score @s Slot.Items run data get block ~ ~-383 ~ Items[12].Slot 1
execute unless entity @s[scores={Slot.Items=12}] run data modify block ~ ~-383 ~ Items prepend value {Slot:12b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.19.Count -= @s one
execute store result block ~ ~-383 ~ Items[19].Count int 1 run scoreboard players get @s Items.19.Count
execute store result score @s Slot.Items run data get block ~ ~-383 ~ Items[19].Slot 1
execute unless entity @s[scores={Slot.Items=19}] run data modify block ~ ~-383 ~ Items prepend value {Slot:19b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.20.Count -= @s one
execute store result block ~ ~-383 ~ Items[20].Count int 1 run scoreboard players get @s Items.20.Count
execute store result score @s Slot.Items run data get block ~ ~-383 ~ Items[20].Slot 1
execute unless entity @s[scores={Slot.Items=20}] run data modify block ~ ~-383 ~ Items prepend value {Slot:20b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.21.Count -= @s one
execute store result block ~ ~-383 ~ Items[21].Count int 1 run scoreboard players get @s Items.21.Count
execute store result score @s Slot.Items run data get block ~ ~-383 ~ Items[21].Slot 1
execute unless entity @s[scores={Slot.Items=21}] run data modify block ~ ~-383 ~ Items prepend value {Slot:21b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}