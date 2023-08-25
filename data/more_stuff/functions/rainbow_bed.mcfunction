execute as @e[type=armor_stand,name="rainbow_bed"] at @s run function more_stuff:rainbow_bed/place

execute as @e[type=item_display,nbt={item:{tag:{CustomModelData:1819},id:"minecraft:armor_stand",Count:1b}}] at @s unless block ~ ~-49 ~ white_bed run function more_stuff:rainbow_bed/destroy