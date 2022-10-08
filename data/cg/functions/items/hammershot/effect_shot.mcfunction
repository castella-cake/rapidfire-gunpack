execute if entity @s[tag=!cg.hammershot.ads] anchored eyes run particle smoke ^-0.15 ^ ^0.8 0 0 0 0 1
execute if entity @s[tag=!cg.hammershot.ads] anchored eyes run particle dust 0.98 0.376 0.192 0.3 ^-0.15 ^-0.1 ^0.8 0.03 0.1 0.03 0 1
execute if entity @s[tag=!cg.hammershot.ads] anchored eyes run particle dust 0.98 0.796 0.192 0.15 ^-0.15 ^-0.1 ^0.8 0.07 0.1 0.07 0 1
execute if entity @s[tag=cg.hammershot.ads] anchored eyes run particle dust 0.294 0.294 0.294 0.5 ^ ^ ^1 0 0.1 0 0 1
execute if entity @s[tag=cg.hammershot.ads] anchored eyes run particle dust 0.98 0.376 0.192 0.3 ^ ^ ^1 0.03 0.1 0.03 0 1
execute if entity @s[tag=cg.hammershot.ads] anchored eyes run particle dust 0.98 0.796 0.192 0.15 ^ ^ ^1 0.07 0.1 0.07 0 1
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 2 0.1
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 1.8 0.1
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 1.6 0.1
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 1.0 0.1
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 0.5 0.1
playsound entity.generic.explode master @a[distance=..30] ~ ~ ~ 0.9 1.6 0.1
playsound entity.generic.extinguish_fire master @a ~ ~ ~ 0.2 1.7 0
playsound block.glass.break master @a ~ ~ ~ 1 1.6 0
playsound block.iron_door.open master @a ~ ~ ~ 1 2 0