kill @s[type=!player]
kill @e[type=item,nbt={Item:{id:"minecraft:white_wool",Count:1b}},limit=1,sort=nearest]
execute unless entity @p[gamemode=creative] run summon minecraft:item ~ ~-49 ~ {Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{EntityTag:{NoAI:1b},display:{Name:'{"translate":"ms.item:rainbow_wool","italic":false}'},CustomModelData:1819}}}