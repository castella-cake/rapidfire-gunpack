particle dust 1 0.749 0.286 1 ~ ~ ~ 0 0 0 1 1

summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:2,Tags:["cg.primer.marker"]}

execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=1,dz=1,type=!#cg:ignore] at @e[dx=1,dy=1,dz=1,type=!#cg:ignore,sort=nearest,limit=1] positioned ~-1.25 ~1.75 ~-1.25 unless entity @e[tag=cg.primer.marker,dx=2.05,dy=1,dz=2.05] run scoreboard players set @s cg.bul_hittype 1
execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=1,dz=1,type=!#cg:ignore] at @e[dx=1,dy=1,dz=1,type=!#cg:ignore,sort=nearest,limit=1] positioned ~-1.25 ~1.75 ~-1.25 if entity @e[tag=cg.primer.marker,dx=2.05,dy=1,dz=2.05] run scoreboard players set @s cg.bul_hittype 2

execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=1,dz=1,type=!#cg:ignore] at @e[dx=1,dy=1,dz=1,type=!#cg:ignore,sort=nearest,limit=1] positioned ~-1.25 ~1.75 ~-1.25 unless entity @e[tag=cg.primer.marker,dx=2.05,dy=1,dz=2.05] run data modify storage score_damage: Argument set from storage cg.damage_data primer.normal
execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=1,dz=1,type=!#cg:ignore] at @e[dx=1,dy=1,dz=1,type=!#cg:ignore,sort=nearest,limit=1] positioned ~-1.25 ~1.75 ~-1.25 if entity @e[tag=cg.primer.marker,dx=2.05,dy=1,dz=2.05] run data modify storage score_damage: Argument set from storage cg.damage_data primer.headshot
execute as @s[scores={cg.bul_timer=..2}] positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=1,dz=1,type=!#cg:ignore,type=!player] run function cg:items/primer/hit
execute as @s[scores={cg.bul_timer=3..}] positioned ~-0.5 ~ ~-0.5 if entity @e[dx=1,dy=1,dz=1,type=!#cg:ignore] run function cg:items/primer/hit

kill @e[type=area_effect_cloud,tag=cg.primer.marker]