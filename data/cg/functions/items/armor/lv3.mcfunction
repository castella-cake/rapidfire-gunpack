effect give @s resistance 1 30 true
effect give @s regeneration 1 0 true
execute if predicate cg:select/diamond_chestplate run scoreboard players set @s cg.armor.max 528
execute if score @s cg.armor.damage_taken matches 1.. run scoreboard players operation @s cg.armor.value = @s cg.armor.damage_taken
execute if score @s cg.armor.damage_taken matches 1.. run function cg:items/armor/add
execute if score @s cg.armor.damage_taken matches 1.. run scoreboard players reset @s cg.armor.damage_taken