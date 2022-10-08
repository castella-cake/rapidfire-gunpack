tp @s ^ ^ ^5 ~ ~0.08

execute unless score @s cg.bul_is_disabled matches 1 run function cg:items/primer/main
execute positioned ^ ^ ^-1.0 unless score @s cg.bul_is_disabled matches 1 run function cg:items/primer/main
execute positioned ^ ^ ^-2.0 unless score @s cg.bul_is_disabled matches 1 run function cg:items/primer/main
execute positioned ^ ^ ^-3.0 unless score @s cg.bul_is_disabled matches 1 unless score @s cg.bul_timer matches ..2 run function cg:items/primer/main
execute positioned ^ ^ ^-4.0 unless score @s cg.bul_is_disabled matches 1 unless score @s cg.bul_timer matches ..2 run function cg:items/primer/main
execute positioned ^ ^ ^-5.0 unless score @s cg.bul_is_disabled matches 1 unless score @s cg.bul_timer matches ..2 run function cg:items/primer/main
