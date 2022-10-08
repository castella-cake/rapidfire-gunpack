playsound entity.firework_rocket.blast master @a[distance=..60] ~ ~ ~ 1 1.4 0.1
playsound entity.firework_rocket.blast master @a[distance=..60] ~ ~ ~ 1 1.0 0.1
playsound entity.firework_rocket.blast master @a[distance=..60] ~ ~ ~ 1 0.7 0.1
playsound entity.firework_rocket.blast master @a[distance=..60] ~ ~ ~ 1 0.3 0.1
playsound block.glass.break master @a ~ ~ ~ 1 1.9 0
playsound block.iron_door.open master @a ~ ~ ~ 1 1.3 0
execute if score @s cg.lmr.ammo matches ..10 run playsound block.iron_door.open master @a ~ ~ ~ 1 1.6 0
execute if score @s cg.lmr.ammo matches ..1 run playsound block.anvil.place master @a ~ ~ ~ 0.2 0.8 0