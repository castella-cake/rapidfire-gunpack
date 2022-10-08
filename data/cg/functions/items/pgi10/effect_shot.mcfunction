execute anchored eyes run particle block gold_block ^-0.2 ^ ^1 0 0 0 1 1
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 1.5 0.1
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 1.2 0.1
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 0.9 0.1
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 0.5 0.1
playsound block.glass.break master @a ~ ~ ~ 1 1.9 0
playsound block.iron_door.open master @a ~ ~ ~ 1 1.5 0
execute if score @s cg.pgi10.ammo matches ..10 run playsound block.iron_door.open master @a ~ ~ ~ 1 1.3 0