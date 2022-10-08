particle block redstone_block ~ ~ ~ 0 0 0 1 5
execute if score @s cg.bul_hittype matches 2 run particle block redstone_block ~ ~ ~ 0 0 0 1 30
function cg:items/dmgdisplay
execute as @e[dx=0.8,dy=0.8,dz=0.8,type=!#cg:ignore,sort=nearest,limit=1] if predicate cg:select/body_armor_lv1 at @s run function cg:items/armor/gun_damage
execute as @e[dx=0.8,dy=0.8,dz=0.8,type=!#cg:ignore,sort=nearest,limit=1] if predicate cg:select/body_armor_lv2 at @s run function cg:items/armor/gun_damage
execute as @e[dx=0.8,dy=0.8,dz=0.8,type=!#cg:ignore,sort=nearest,limit=1] if predicate cg:select/body_armor_lv3 at @s run function cg:items/armor/gun_damage
execute as @e[dx=0.8,dy=0.8,dz=0.8,type=!#cg:ignore,sort=nearest,limit=1] if predicate cg:select/body_armor_lv4 at @s run function cg:items/armor/gun_damage
execute as @e[dx=0.8,dy=0.8,dz=0.8,type=!#cg:ignore,sort=nearest,limit=1] run function score_damage:api/attack
kill @s
#tellraw @a "hit"
scoreboard players set @s cg.bul_is_disabled 1