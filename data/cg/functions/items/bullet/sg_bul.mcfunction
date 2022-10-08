particle dust 1 0.282 0 0.8 ~ ~ ~ 0 0 0 1 1
execute unless entity @a[distance=..20] run kill @s
execute unless block ~ ~ ~ #cg:ignore run particle smoke ^ ^ ^-0.5 0 0 0 0 4
execute unless block ~ ~ ~ #cg:ignore run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.25 2 0
execute unless block ~ ~ ~ #cg:ignore run kill @s