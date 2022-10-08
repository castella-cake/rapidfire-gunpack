particle dust 1 0.792 0.408 0.2 ~ ~ ~ 0 0 0 1 1
execute unless entity @a[distance=..50] run kill @s
execute unless block ~ ~ ~ #cg:ignore run particle smoke ^ ^ ^-0.5 0 0 0 0 2
execute unless block ~ ~ ~ #cg:ignore run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.3 2 0
execute unless block ~ ~ ~ #cg:ignore run kill @s