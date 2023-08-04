execute at @a[nbt={SelectedItem:{tag:{display:{Name:'{"text":"flying-stick","italic":false}'}}}}] run execute as @p at @s align x align y align z positioned ~0.5 ~ ~0.5 run execute if block ~ ~-1 ~ air run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],CustomName:'{"text":"flying"}',DisabledSlots:4144959}
execute at @a[nbt={SelectedItem:{tag:{display:{Name:'{"text":"flying-stick","italic":false}'}}}}] run execute if block ~ ~-1 ~ air run setblock ~ ~-1 ~ minecraft:glass

execute at @e[name="flying"] if entity @a[distance=3..] run setblock ~ ~-1 ~ air
execute at @e[name="flying"] if entity @a[distance=..1,scores={sneak=1..}] run setblock ~ ~-1 ~ air
execute at @e[name="flying"] run effect give @a[distance=..3] slow_falling 1 0 true
execute at @e[name="flying"] if block ~ ~-1 ~ air run kill @e[name="flying",distance=0]
scoreboard players reset @a sneak