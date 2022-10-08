playsound entity.firework_rocket.blast master @a[distance=..40] ~ ~ ~ 1 2 0.1
playsound entity.firework_rocket.blast master @a[distance=..40] ~ ~ ~ 1 1.5 0.1
playsound entity.firework_rocket.blast master @a[distance=..40] ~ ~ ~ 1 1.0 0.1
playsound entity.firework_rocket.blast master @a[distance=..40] ~ ~ ~ 1 0.5 0.1
playsound block.glass.break master @a ~ ~ ~ 0.2 1.2 0
playsound block.iron_door.open master @a ~ ~ ~ 1 2 0
execute if score @s cg.paper.ammo matches ..10 run playsound block.iron_door.open master @a ~ ~ ~ 1 1.1 0