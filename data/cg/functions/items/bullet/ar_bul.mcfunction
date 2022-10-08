particle dust 1 0.729 0.231 0.3 ~ ~ ~ 0 0 0 1 1
execute unless entity @a[distance=..90] run kill @s
execute unless block ~ ~ ~ #cg:ignore run particle smoke ^ ^ ^-0.5 0 0 0 0 2
execute unless block ~ ~ ~ #cg:ignore run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.5 1.9 0
execute unless block ~ ~ ~ #cg:ignore run kill @s