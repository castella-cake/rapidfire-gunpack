execute if entity @s[tag=cg.vibrator.shot_sub] if score @s cg.vibrator.ammo matches 50.. run summon armor_stand ^ ^ ^1 {Tags:["cg.bul.vibrator_sub","cg.bul"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:3}}]}
execute if entity @s[tag=cg.vibrator.shot_sub] if score @s cg.vibrator.ammo matches 50.. run function cg:shot_am
execute if entity @s[tag=cg.vibrator.shot_sub] if score @s cg.vibrator.ammo matches 50.. run function cg:items/gadgets/vibrator/se_shot_sub
execute if entity @s[tag=cg.vibrator.shot_sub] if score @s cg.vibrator.ammo matches 50.. run scoreboard players remove @s cg.vibrator.ammo 50
execute if entity @s[tag=cg.vibrator.shot_sub] run tag @s remove cg.vibrator.shot_sub