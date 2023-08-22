
#grappling_gun
give @s[gamemode=creative] minecraft:fishing_rod{CustomModelData:718116,display:{Name:'{"translate":"ms.item:grappling_gun","italic":false}'},Unbreakable:1b}

#levitation_stick
give @s[gamemode=creative] minecraft:stick{CustomModelData:1,display:{Name:'{"text":"levitation-stick","italic":false}'}}

#potions_recipes
give @s[gamemode=creative] minecraft:paper{CustomModelData:1615,display:{Name:'{"translate":"ms.item:potions_recipes","italic":false}'}}

#slow_falling_feather
give @s[gamemode=creative] minecraft:enchanted_book{CustomModelData:191215,display:{Name:'{"translate":"item.minecraft.feather","italic": false,"extra":[{"text": " (","italic": false},{"translate":"effect.minecraft.slow_falling","italic":false,"color":"blue"},{"text": ")","italic": false}]}'}}

#custom_crafting_table
function custom_crafting_table:give

#flying_stick
give @s[gamemode=creative] minecraft:stick{CustomModelData:2,display:{Name:'{"text":"flying-stick","italic":false}'}}

#wrench
give @s[gamemode=creative] minecraft:stick{CustomModelData:23185,display:{Name:'{"translate":"ms.item:wrench","italic":false}'}}

#invisible_item_frame
give @s[gamemode=creative] minecraft:item_frame{display:{Name:'{"translate":"item.minecraft.item_frame","italic": false,"extra":[{"text": " (","italic": false},{"translate":"effect.minecraft.invisibility","italic":false,"color":"blue"},{"text": ")","italic": false}]}'},EntityTag:{Invisible:1b,Tags:[invisible.frame]}}

#invisible_glow_item_frame
give @s[gamemode=creative] minecraft:glow_item_frame{display:{Name:'{"translate":"item.minecraft.glow_item_frame","italic": false,"extra":[{"text": " (","italic": false},{"translate":"effect.minecraft.invisibility","italic":false,"color":"blue"},{"text": ")","italic": false}]}'},EntityTag:{Invisible:1b,Tags:[invisible.frame]}}