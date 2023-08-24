execute as @e[type=bat,nbt={CustomName: '{"italic":false,"translate":"ms.item:rainbow_wool"}'}] at @s run function more_stuff:rainbow_wool/place

execute as @e[type=item_display,nbt={item:{tag:{CustomModelData:1819},id:"minecraft:bat_spawn_egg",Count:1b}}] at @s run function more_stuff:rainbow_wool/check_movement

execute as @e[type=item_display,nbt={item:{tag:{CustomModelData:1819},id:"minecraft:bat_spawn_egg",Count:1b}}] at @s if block ~ ~-49 ~ minecraft:air run function more_stuff:rainbow_wool/destroy