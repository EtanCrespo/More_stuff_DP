kill @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}}},limit=16,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}}},limit=16,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{display:{Name:'{"translate":"cct.gui:custom_crafting_table"}'}}}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book",Count:1b}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{tag:{CustomModelData:16185,display:{Name:'{"translate":"cct.gui:previous_page","italic":false,"fallbakc":"Previous Page"}'}}}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{tag:{CustomModelData:14524,display:{Name:'{"translate":"cct.gui:next_page","italic":false,"fallbakc":"Next Page"}'}}}},limit=1,sort=nearest]
execute unless entity @p[gamemode=creative] run summon minecraft:item ~ ~-49 ~ {Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{EntityTag:{CustomName:'{"text":"custom_craft"}',id:armor_stand,Invisible:1b,Small:1b},display:{Name:'{"translate":"cct.item:custom_crafting_table","italic":false,"fallback":"Custom Crafting Table"}'},CustomModelData:32119}}}
kill @s[type=!player]