execute as @e[type=interaction] on attacker if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"int_remover"}'}}}}] as @e[type=minecraft:interaction,limit=1,sort=nearest,nbt={attack:{}}] run scoreboard players set @s kill_int 1
kill @e[scores={kill_int=1}]
execute as @e[type=interaction,scores={kill_int=1}] run scoreboard players reset @s kill_int
execute as @e[type=interaction] run data remove entity @s attack