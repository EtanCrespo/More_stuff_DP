execute store result score @s Rotation run data get entity @s Rotation[0] 1

execute if entity @s[scores={Rotation=-1..1}] run function more_stuff:rainbow_bed/place_south
execute if entity @s[scores={Rotation=-180..-179}] run function more_stuff:rainbow_bed/place_north
execute if entity @s[scores={Rotation=179..180}] run function more_stuff:rainbow_bed/place_north
execute if entity @s[scores={Rotation=-91..-89}] run function more_stuff:rainbow_bed/place_west
execute if entity @s[scores={Rotation=89..91}] run function more_stuff:rainbow_bed/place_east

execute if entity @s[scores={Rotation=44..46}] run function more_stuff:rainbow_bed/destroy
execute if entity @s[scores={Rotation=134..136}] run function more_stuff:rainbow_bed/destroy
execute if entity @s[scores={Rotation=-136..-134}] run function more_stuff:rainbow_bed/destroy
execute if entity @s[scores={Rotation=-46..-44}] run function more_stuff:rainbow_bed/destroy