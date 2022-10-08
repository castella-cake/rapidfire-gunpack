tp @s ^ ^ ^3.2 ~ ~0.17

execute unless score @s cg.bul_is_disabled matches 1 run function cg:items/ar50/main
execute positioned ^ ^ ^-0.9 unless score @s cg.bul_is_disabled matches 1 run function cg:items/ar50/main
execute positioned ^ ^ ^-1.7 unless score @s cg.bul_is_disabled matches 1 run function cg:items/ar50/main
execute positioned ^ ^ ^-2.5 unless score @s cg.bul_is_disabled matches 1 unless score @s cg.bul_timer matches ..2 run function cg:items/ar50/main
execute positioned ^ ^ ^-3.3 unless score @s cg.bul_is_disabled matches 1 unless score @s cg.bul_timer matches ..2 run function cg:items/ar50/main