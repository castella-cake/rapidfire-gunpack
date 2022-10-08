particle dust 1 0.651 0 0.3 ~ ~ ~ 0 0 0 1 1 force
execute unless entity @a[distance=..100] run kill @s
execute unless block ~ ~ ~ #cg:ignore run particle smoke ^ ^ ^-0.5 0 0 0 0 2
execute unless block ~ ~ ~ #cg:ignore run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 1.6 0
execute unless block ~ ~ ~ #cg:ignore run kill @s