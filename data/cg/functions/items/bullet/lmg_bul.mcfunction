particle dust 0.961 0.663 0.114 0.2 ~ ~ ~ 0 0 0 1 1
execute unless entity @a[distance=..100] run kill @s
execute unless block ~ ~ ~ #cg:ignore run particle smoke ^ ^ ^-0.5 0 0 0 0 2
execute unless block ~ ~ ~ #cg:ignore run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 1.6 0
execute unless block ~ ~ ~ #cg:ignore run kill @s