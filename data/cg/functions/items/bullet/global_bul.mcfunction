scoreboard players add @s cg.bul_timer 1
particle dust 1 0.937 0.843 0.2 ~ ~ ~
#execute unless entity @a[distance=..300] run tellraw @a "a"
execute unless entity @a[distance=..300] run kill @s