#input 1
scoreboard players operation @s Items.1.Count -= @s one
execute store result block ~ ~-49 ~ Items[1].Count int 1 run scoreboard players get @s Items.1.Count
data modify block ~ ~-49 ~ Items prepend value {Slot:1b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

#input 2...
scoreboard players operation @s Items.2.Count -= @s one
execute store result block ~ ~-49 ~ Items[2].Count int 1 run scoreboard players get @s Items.2.Count
data modify block ~ ~-49 ~ Items prepend value {Slot:2b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.3.Count -= @s one
execute store result block ~ ~-49 ~ Items[3].Count int 1 run scoreboard players get @s Items.3.Count
data modify block ~ ~-49 ~ Items prepend value {Slot:3b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}


scoreboard players operation @s Items.10.Count -= @s one
execute store result block ~ ~-49 ~ Items[10].Count int 1 run scoreboard players get @s Items.10.Count
data modify block ~ ~-49 ~ Items prepend value {Slot:10b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.11.Count -= @s one
execute store result block ~ ~-49 ~ Items[11].Count int 1 run scoreboard players get @s Items.11.Count
data modify block ~ ~-49 ~ Items prepend value {Slot:11b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.12.Count -= @s one
execute store result block ~ ~-49 ~ Items[12].Count int 1 run scoreboard players get @s Items.12.Count
data modify block ~ ~-49 ~ Items prepend value {Slot:12b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.19.Count -= @s one
execute store result block ~ ~-49 ~ Items[19].Count int 1 run scoreboard players get @s Items.19.Count
data modify block ~ ~-49 ~ Items prepend value {Slot:19b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.20.Count -= @s one
execute store result block ~ ~-49 ~ Items[20].Count int 1 run scoreboard players get @s Items.20.Count
data modify block ~ ~-49 ~ Items prepend value {Slot:20b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}

scoreboard players operation @s Items.21.Count -= @s one
execute store result block ~ ~-49 ~ Items[21].Count int 1 run scoreboard players get @s Items.21.Count
data modify block ~ ~-49 ~ Items prepend value {Slot:21b,tag:{CustomModelData:2,display:{Name:'{"text":""}'}},id:"minecraft:light_gray_stained_glass_pane",Count:1b}