tp @s ^ ^ ^3.0 ~ ~
execute unless entity @a[distance=..30] run kill @s

particle vibration 0 0 0 0 ~ ~ ~ 0 0 0 1 1
particle dust 0.059 0.263 0.302 5 ~ ~ ~ 0 0 0 1 1
particle dust 0 0.835 1 1 ~ ~ ~ 0.5 0.5 0.5 1 10

execute if entity @e[distance=..5,type=!#cg:ignore] run scoreboard players set @s cg.bul_hittype 1

execute if entity @e[distance=..5,type=!#cg:ignore,sort=nearest,limit=1] as @e[distance=..5,type=!#cg:ignore,sort=nearest,limit=1] if entity @s[type=warden] run data modify storage score_damage: Argument set from storage cg.damage_data vibrator.warden
execute if entity @e[distance=..5,type=!#cg:ignore,sort=nearest,limit=1] as @e[distance=..5,type=!#cg:ignore,sort=nearest,limit=1] unless entity @s[type=player] unless entity @s[type=warden] run data modify storage score_damage: Argument set from storage cg.damage_data vibrator.entity
execute if entity @e[distance=..5,type=!#cg:ignore,sort=nearest,limit=1] as @e[distance=..5,type=!#cg:ignore,sort=nearest,limit=1] if entity @s[type=player] run data modify storage score_damage: Argument set from storage cg.damage_data vibrator.normal
execute if entity @e[distance=..5,type=!#cg:ignore] run function cg:items/gadgets/vibrator/hit