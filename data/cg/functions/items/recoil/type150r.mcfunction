scoreboard players set @s cg.recoil_temp 0
execute if predicate cg:random/0_5 run scoreboard players set @s cg.recoil_temp 1

execute if score @s cg.recoil_temp matches 1 run tp @s ^ ^ ^ ~0.2 ~-1.2
execute if score @s cg.recoil_temp matches 1 if predicate cg:random/0_5 run tp @s ^ ^ ^ ~0.5 ~-1.5

execute if score @s cg.recoil_temp matches 0 run tp @s ^ ^ ^ ~-0.5 ~-1.2
execute if score @s cg.recoil_temp matches 0 if predicate cg:random/0_5 run tp @s ^ ^ ^ ~-0.5 ~-1.5