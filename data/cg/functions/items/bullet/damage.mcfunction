#tellraw @a "a"
execute as @s[type=end_crystal] at @s run summon fireball ~ ~1 ~ {Fire:1,ExplosionPower:1b,power:[0.0,-1.0,0.0],Item:{id:"minecraft:air",Count:1b}}
particle block redstone_block ~ ~ ~ 0 0 0 1 5
execute if score @s cg.bul_hittype.temp matches 2 run particle block redstone_block ~ ~ ~ 0 0 0 1 30
function cg:items/dmgdisplay
execute as @s if predicate cg:select/body_armor_lv1 at @s run function cg:items/armor/gun_damage
execute as @s if predicate cg:select/body_armor_lv2 at @s run function cg:items/armor/gun_damage
execute as @s if predicate cg:select/body_armor_lv3 at @s run function cg:items/armor/gun_damage
execute as @s if predicate cg:select/body_armor_lv4 at @s run function cg:items/armor/gun_damage
execute as @s if predicate cg:select/body_armor_lvex at @s run function cg:items/armor/gun_damage
execute as @s run function score_damage:api/attack
tag @s remove cg.hit
#tellraw @a "hit"