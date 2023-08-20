#pour tous les jeouerus avec la boussole dans la main principale
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}}] store result score @s X run data get entity @s Pos[0] 1
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}}] store result score @s Y run data get entity @s Pos[1] 1
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}}] store result score @s Z run data get entity @s Pos[2] 1

title @a[nbt={SelectedItem:{id:"minecraft:compass"}}] actionbar {"text": "","extra": [{"text":"x: "},{"score":{"name":"*","objective":"X"}},{"text": "  y: "},{"score":{"name":"*","objective":"Y"}},{"text": "  z: "},{"score":{"name":"*","objective":"Z"}}]}

#ici pour ceux qui'lont dans la main secondaire
execute as @a[nbt={Inventory:[{id:"minecraft:compass",Slot:-106b}]}] store result score @s X run data get entity @s Pos[0] 1
execute as @a[nbt={Inventory:[{id:"minecraft:compass",Slot:-106b}]}] store result score @s Y run data get entity @s Pos[1] 1
execute as @a[nbt={Inventory:[{id:"minecraft:compass",Slot:-106b}]}] store result score @s Z run data get entity @s Pos[2] 1

title @a[nbt={Inventory:[{id:"minecraft:compass",Slot:-106b}]}] actionbar {"text": "","extra": [{"text":"x: "},{"score":{"name":"*","objective":"X"}},{"text": "  y: "},{"score":{"name":"*","objective":"Y"}},{"text": "  z: "},{"score":{"name":"*","objective":"Z"}}]}