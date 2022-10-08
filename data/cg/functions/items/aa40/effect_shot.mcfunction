execute anchored eyes run particle block gold_block ^-0.2 ^ ^1 0 0 0 1 1
execute if entity @s[tag=!cg.aa40.ads] anchored eyes run particle smoke ^-0.15 ^ ^0.8 0 0 0 0 1
execute if entity @s[tag=!cg.aa40.ads] anchored eyes run particle dust 0.98 0.376 0.192 0.3 ^-0.15 ^-0.1 ^0.8 0.03 0.1 0.03 0 1
execute if entity @s[tag=!cg.aa40.ads] anchored eyes run particle dust 0.98 0.796 0.192 0.15 ^-0.15 ^-0.1 ^0.8 0.07 0.1 0.07 0 1
execute if entity @s[tag=cg.aa40.ads] anchored eyes run particle dust 0.294 0.294 0.294 0.5 ^ ^ ^1 0 0.1 0 0 1
execute if entity @s[tag=cg.aa40.ads] anchored eyes run particle dust 0.98 0.376 0.192 0.3 ^ ^ ^1 0.03 0.1 0.03 0 1
execute if entity @s[tag=cg.aa40.ads] anchored eyes run particle dust 0.98 0.796 0.192 0.15 ^ ^ ^1 0.07 0.1 0.07 0 1
playsound entity.firework_rocket.blast master @a[distance=..40] ~ ~ ~ 1 1.2 0.1
playsound entity.firework_rocket.blast master @a[distance=..40] ~ ~ ~ 1 0.8 0.1
playsound entity.firework_rocket.blast master @a[distance=..40] ~ ~ ~ 1 0.4 0.1
playsound block.glass.break master @a ~ ~ ~ 0.5 1.4 0
playsound block.iron_door.open master @a ~ ~ ~ 0.8 2 0
playsound entity.generic.extinguish_fire master @a ~ ~ ~ 0.2 1.1 0
execute if score @s cg.aa40.ammo matches ..10 run playsound block.iron_door.open master @a ~ ~ ~ 1 1.2 0