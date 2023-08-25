execute store result score @s Rotation run data get entity @s Rotation[0] 1

execute if entity @s[scores={Rotation=-1..1}] run function more_stuff:rainbow_bed/place_south
execute if entity @s[scores={Rotation=-181..-179}] run function more_stuff:rainbow_bed/place_north
execute if entity @s[scores={Rotation=-91..-89}] run function more_stuff:rainbow_bed/place_west
execute if entity @s[scores={Rotation=89..91}] run function more_stuff:rainbow_bed/place_east

execute unless entity @s[scores={Rotation=-1..1}] unless entity @s[scores={Rotation=-181..-179}] unless entity @s[scores={Rotation=-91..-89}] unless entity @s[scores={Rotation=89..91}] run function more_stuff:rainbow_bed/destroy