particle dust 1 0.729 0.231 0.3 ~ ~ ~ 0 0 0 1 1

summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:2,Tags:["cg.ar50.marker"]}

execute positioned ~-0.1 ~ ~-0.1 if entity @e[dx=0.2,dy=0.2,dz=0.2,type=!#cg:ignore] at @e[dx=0.2,dy=0.2,dz=0.2,type=!#cg:ignore,sort=nearest,limit=1] positioned ~-1.25 ~1.75 ~-1.25 unless entity @e[tag=cg.ar50.marker,dx=2.05,dy=1,dz=2.05] run scoreboard players set @s cg.bul_hittype 1
execute positioned ~-0.1 ~ ~-0.1 if entity @e[dx=0.2,dy=0.2,dz=0.2,type=!#cg:ignore] at @e[dx=0.2,dy=0.2,dz=0.2,type=!#cg:ignore,sort=nearest,limit=1] positioned ~-1.25 ~1.75 ~-1.25 if entity @e[tag=cg.ar50.marker,dx=2.05,dy=1,dz=2.05] run scoreboard players set @s cg.bul_hittype 2

execute positioned ~-0.1 ~ ~-0.1 if entity @e[dx=0.2,dy=0.2,dz=0.2,type=!#cg:ignore] at @e[dx=0.2,dy=0.2,dz=0.2,type=!#cg:ignore,sort=nearest,limit=1] positioned ~-1.25 ~1.75 ~-1.25 unless entity @e[tag=cg.ar50.marker,dx=2.05,dy=1,dz=2.05] run data modify storage score_damage: Argument set from storage cg.damage_data ar50.normal
execute positioned ~-0.1 ~ ~-0.1 if entity @e[dx=0.2,dy=0.2,dz=0.2,type=!#cg:ignore] at @e[dx=0.2,dy=0.2,dz=0.2,type=!#cg:ignore,sort=nearest,limit=1] positioned ~-1.25 ~1.75 ~-1.25 if entity @e[tag=cg.ar50.marker,dx=2.05,dy=1,dz=2.05] run data modify storage score_damage: Argument set from storage cg.damage_data ar50.headshot
execute unless score @s cg.bul_timer matches 2.. positioned ~-0.2 ~ ~-0.2 if entity @e[dx=0.6,dy=0.6,dz=0.6,type=!#cg:ignore,type=!player] run function cg:items/bullet/hit
execute if score @s cg.bul_timer matches 2.. positioned ~-0.2 ~ ~-0.2 if entity @e[dx=0.6,dy=0.6,dz=0.6,type=!#cg:ignore] run function cg:items/bullet/hit

kill @e[type=area_effect_cloud,tag=cg.ar50.marker]