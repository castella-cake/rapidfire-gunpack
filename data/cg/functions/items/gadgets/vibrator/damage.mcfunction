particle block redstone_block ~ ~ ~ 0 0 0 1 5
function cg:items/gadgets/vibrator/dmgdisplay
execute if entity @s[predicate=cg:select/body_armor_lv1] at @s run function cg:items/armor/gun_damage
execute if entity @s[predicate=cg:select/body_armor_lv2] at @s run function cg:items/armor/gun_damage
execute if entity @s[predicate=cg:select/body_armor_lv3] at @s run function cg:items/armor/gun_damage
execute if entity @s[predicate=cg:select/body_armor_lv4] at @s run function cg:items/armor/gun_damage
execute if entity @s[predicate=cg:select/body_armor_lvex] at @s run function cg:items/armor/gun_damage
execute at @s run particle dust 0 0.835 1 1 ~ ~ ~ 0.5 1.5 0.5 1 50
execute at @s run particle falling_dust sculk ~ ~ ~ 0.5 1.5 0.5 1 50
effect give @s glowing 1 255 true
execute unless score @s cg.player_number = @s cg.bul_pn.temp run function score_damage:api/attack
effect give @s blindness 1 1 true
effect give @s darkness 3 1 true
effect give @s slowness 1 255 true
data remove storage score_damage: Argument