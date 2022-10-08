tp @s ^ ^ ^2.0 ~ ~0.18

execute unless score @s cg.bul_is_disabled matches 1 run function cg:items/stw03/main
execute positioned ^ ^ ^-0.9 unless score @s cg.bul_is_disabled matches 1 run function cg:items/stw03/main
execute positioned ^ ^ ^-1.7 unless score @s cg.bul_is_disabled matches 1 run function cg:items/stw03/main
execute positioned ^ ^ ^-2.0 unless score @s cg.bul_is_disabled matches 1 unless score @s cg.bul_timer matches ..2 run function cg:items/stw03/main