execute as @e[type=item_frame,nbt={Invisible:1b,Item:{tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}}] at @s run function more_stuff:kill_invisible_item_frame
execute as @a at @s as @e[type=item_frame,nbt={Tags:[invisible.frame]},distance=..7,sort=nearest] run data modify entity @s Invisible set value 0b
execute as @a at @s as @e[type=item_frame,nbt={Tags:[invisible.frame]},distance=..7,sort=nearest] run data modify entity @s Glowing set value 1b


execute as @a at @s as @e[type=item_frame,nbt={Tags:[invisible.frame]},distance=7..,sort=furthest] run data modify entity @s Invisible set value 1b
execute as @a at @s as @e[type=item_frame,nbt={Tags:[invisible.frame]},distance=7..,sort=furthest] run data modify entity @s Glowing set value 0b