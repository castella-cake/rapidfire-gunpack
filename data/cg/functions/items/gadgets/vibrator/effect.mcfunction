tp ^ ^ ^3
particle dust 0.165 0.749 0.855 0.5 ~ ~ ~ 0.1 0.1 0.1 1 10
execute if entity @s[tag=cg.vibrator.effect.boom] run particle sonic_boom ~ ~ ~ 0 0 0 1 1
execute unless entity @a[distance=..30] run kill @s