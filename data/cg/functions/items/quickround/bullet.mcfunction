tp @s ^ ^ ^2.4 ~ ~0.12

execute unless score @s cg.bul_is_disabled matches 1 run function cg:items/quickround/main
execute positioned ^ ^ ^-0.9 unless score @s cg.bul_is_disabled matches 1 run function cg:items/quickround/main
execute positioned ^ ^ ^-1.7 unless score @s cg.bul_is_disabled matches 1 run function cg:items/quickround/main
execute positioned ^ ^ ^-2.5 unless score @s cg.bul_is_disabled matches 1 unless score @s cg.bul_timer matches ..2 run function cg:items/quickround/main