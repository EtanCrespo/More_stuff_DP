kill @s[type=!player]
setblock ~ ~ ~ white_bed[facing=south,part=foot] destroy
setblock ~ ~ ~1 white_bed[facing=south,part=head] destroy
summon minecraft:item_display ~ ~49 ~ {item:{tag:{CustomModelData:1819},id:"minecraft:armor_stand",Count:1b},Rotation:[-180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],translation:[0f,-48.5f,-1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f]}}