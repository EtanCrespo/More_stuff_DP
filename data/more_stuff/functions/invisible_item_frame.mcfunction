execute as @e[type=item_frame,nbt={Invisible:1b,Item:{tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}}] at @s run function more_stuff:kill_invisible_item_frame
execute as @e[type=glow_item_frame,nbt={Invisible:1b,Item:{tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}}] at @s run function more_stuff:kill_glow_invisible_item_frame

#dès que la clé est en main on fait briller les items frames à distance
execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}}] at @s as @e[nbt={Tags:[invisible.frame]},distance=..7,sort=nearest] run data modify entity @s Invisible set value 0b
execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}}] at @s as @e[nbt={Tags:[invisible.frame]},distance=..7,sort=nearest] run data modify entity @s Glowing set value 1b
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}]}] at @s as @e[nbt={Tags:[invisible.frame]},distance=..7,sort=nearest] run data modify entity @s Invisible set value 0b
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}]}] at @s as @e[nbt={Tags:[invisible.frame]},distance=..7,sort=nearest] run data modify entity @s Glowing set value 1b


#ici dès qu'on à pas la clé de sélectionnées
execute as @a unless entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}]}] at @s as @e[nbt={Tags:[invisible.frame],Invisible:0b},distance=..9,sort=furthest] run data modify entity @s Invisible set value 1b
execute as @a unless entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}]}] at @s as @e[nbt={Tags:[invisible.frame],Glowing:1b},distance=..9,sort=furthest] run data modify entity @s Glowing set value 0b

#là si on a la clé mais qu'on est trop loin
execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}}] at @s as @e[nbt={Tags:[invisible.frame]},distance=7..9,sort=nearest] run data modify entity @s Invisible set value 1b
execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}}] at @s as @e[nbt={Tags:[invisible.frame]},distance=7..9,sort=nearest] run data modify entity @s Glowing set value 0b
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}]}] at @s as @e[nbt={Tags:[invisible.frame]},distance=7..9,sort=nearest] run data modify entity @s Invisible set value 1b
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}}]}] at @s as @e[nbt={Tags:[invisible.frame]},distance=7..9,sort=nearest] run data modify entity @s Glowing set value 0b