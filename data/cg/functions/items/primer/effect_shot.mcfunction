execute if entity @s[tag=!cg.quickround.ads] anchored eyes run particle smoke ^-0.225 ^ ^0.8 0 0 0 0 5
execute if entity @s[tag=!cg.quickround.ads] anchored eyes run particle dust 0.98 0.376 0.192 0.3 ^-0.225 ^-0.1 ^0.8 0.03 0.1 0.03 1 5
execute if entity @s[tag=!cg.quickround.ads] anchored eyes run particle dust 0.98 0.796 0.192 0.15 ^-0.225 ^-0.1 ^0.8 0.07 0.1 0.07 1 5
execute if entity @s[tag=cg.quickround.ads] anchored eyes run particle dust 0.294 0.294 0.294 0.5 ^ ^ ^1 0 0.1 0 1 5
execute if entity @s[tag=cg.quickround.ads] anchored eyes run particle dust 0.98 0.376 0.192 0.3 ^ ^-0.05 ^1 0.01 0.02 0.01 1 30
execute if entity @s[tag=cg.quickround.ads] anchored eyes run particle dust 0.98 0.796 0.192 0.15 ^ ^-0.05 ^1 0.08 0.1 0.08 1 60
playsound entity.firework_rocket.blast master @a[distance=..70] ~ ~ ~ 1 1.5 0.1
playsound entity.firework_rocket.blast master @a[distance=..70] ~ ~ ~ 1 1.0 0.1
playsound entity.firework_rocket.blast master @a[distance=..70] ~ ~ ~ 1 0.5 0.1
playsound entity.firework_rocket.blast master @a[distance=..70] ~ ~ ~ 1 0.2 0.1
playsound entity.generic.explode master @a[distance=..70] ~ ~ ~ 1 1.8 0.1
playsound entity.generic.explode master @a[distance=..70] ~ ~ ~ 1 1.3 0.1
playsound block.glass.break master @a[distance=..70] ~ ~ ~ 1 1.8 0
playsound block.iron_door.open master @a ~ ~ ~ 1 2 0
playsound block.iron_door.open master @a ~ ~ ~ 1 1.2 0