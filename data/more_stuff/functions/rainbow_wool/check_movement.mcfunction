execute if entity @e[type=item_display,nbt={item:{tag:{CustomModelData:1819},id:"minecraft:bat_spawn_egg",Count:1b}},distance=0.1..1] unless block ~ ~-49 ~ minecraft:white_wool run function more_stuff:rainbow_wool/destroy

execute unless entity @e[type=item_display,nbt={item:{tag:{CustomModelData:1819},id:"minecraft:bat_spawn_egg",Count:1b}},distance=0.1..1] unless block ~ ~-49 ~ minecraft:white_wool if block ~ ~-49 ~1 minecraft:white_wool run tp ~ ~ ~1
execute unless entity @e[type=item_display,nbt={item:{tag:{CustomModelData:1819},id:"minecraft:bat_spawn_egg",Count:1b}},distance=0.1..1] unless block ~ ~-49 ~ minecraft:white_wool if block ~1 ~-49 ~ minecraft:white_wool run tp ~1 ~ ~
execute unless entity @e[type=item_display,nbt={item:{tag:{CustomModelData:1819},id:"minecraft:bat_spawn_egg",Count:1b}},distance=0.1..1] unless block ~ ~-49 ~ minecraft:white_wool if block ~ ~-48 ~ minecraft:white_wool run tp ~ ~1 ~
execute unless entity @e[type=item_display,nbt={item:{tag:{CustomModelData:1819},id:"minecraft:bat_spawn_egg",Count:1b}},distance=0.1..1] unless block ~ ~-49 ~ minecraft:white_wool if block ~-1 ~-49 ~ minecraft:white_wool run tp ~-1 ~ ~
execute unless entity @e[type=item_display,nbt={item:{tag:{CustomModelData:1819},id:"minecraft:bat_spawn_egg",Count:1b}},distance=0.1..1] unless block ~ ~-49 ~ minecraft:white_wool if block ~ ~-50 ~ minecraft:white_wool run tp ~ ~-1 ~
execute unless entity @e[type=item_display,nbt={item:{tag:{CustomModelData:1819},id:"minecraft:bat_spawn_egg",Count:1b}},distance=0.1..1] unless block ~ ~-49 ~ minecraft:white_wool if block ~ ~-49 ~-1 minecraft:white_wool run tp ~ ~ ~-1