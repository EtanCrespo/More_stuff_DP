kill @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},limit=16,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_stained_glass_pane",Count:1b}},limit=16,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},limit=1,sort=nearest]
execute unless entity @p[gamemode=creative] run summon minecraft:item ~ ~-49 ~ {Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{EntityTag:{CustomName:'{"text":"custom_craft"}'},display:{Name:'{"translate":"ms.item:custom_crafting_table","italic":false}'},CustomModelData:32119}}}
kill @s[type=!player]