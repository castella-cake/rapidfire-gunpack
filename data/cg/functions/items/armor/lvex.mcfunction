effect give @s resistance 8 255 true
effect give @s regeneration 8 0 true
effect give @s speed 8 0 true
execute if predicate cg:select/golden_chestplate run scoreboard players set @s cg.armor.max 112
execute if score @s cg.armor.damage_taken matches 2.. run scoreboard players operation @s cg.armor.damage_taken /= $static_2x cg.config
execute if score @s cg.armor.damage_taken matches 2.. run scoreboard players operation @s cg.armor.damage_taken /= $static_2x cg.config
execute if score @s cg.armor.damage_taken matches 1.. run scoreboard players operation @s cg.armor.value = @s cg.armor.damage_taken
execute if score @s cg.armor.damage_taken matches 1.. run function cg:items/armor/add
execute if score @s cg.armor.damage_taken matches 1.. run scoreboard players reset @s cg.armor.damage_taken