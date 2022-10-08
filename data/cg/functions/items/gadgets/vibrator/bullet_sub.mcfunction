tp @s ^ ^ ^1.0 ~ ~1
execute unless entity @a[distance=..30] run kill @s

particle vibration 0 0 0 0 ~ ~ ~ 0 0 0 1 1
particle dust 0.059 0.263 0.302 1 ~ ~ ~ 0 0 0 1 1
particle dust 0 0.835 1 1 ~ ~ ~ 0.5 0.5 0.5 1 10

execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] run playsound entity.warden.sonic_boom master @a[distance=..30] ~ ~ ~ 1 1.2 0.1
execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] run particle dust 0.059 0.263 0.302 2 ~ ~ ~ 5 5 5 1 100
execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] run particle dust 0.024 0.18 0.227 2 ~ ~ ~ 5 5 5 1 100
execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] run particle dust 0.008 0.067 0.086 5 ~ ~ ~ 3 3 3 1 500
execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] at @e[distance=..5,type=!#cg:ignore] run particle dust 0 0.349 1 1 ~ ~ ~ 0.5 2 0.5 1 100
execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] run effect give @e[distance=..5,type=!#cg:ignore] glowing 5 1 true
execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] run effect give @e[distance=..5,type=!#cg:ignore] weakness 5 1 true
execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] run effect give @e[distance=..5,type=!#cg:ignore] slowness 8 1 true
execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] run effect give @e[distance=..5,type=!#cg:ignore] darkness 8 1 true
execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] run effect give @e[distance=..5,type=!#cg:ignore] blindness 3 1 true
execute if entity @e[distance=..3,type=!#cg:ignore,type=!player,type=!armor_stand] run kill @s

execute unless block ~ ~ ~ #cg:ignore run playsound entity.warden.sonic_boom master @a[distance=..30] ~ ~ ~ 1 1.2 0.1
execute unless block ~ ~ ~ #cg:ignore run particle dust 0.059 0.263 0.302 2 ~ ~ ~ 5 5 5 1 100
execute unless block ~ ~ ~ #cg:ignore run particle dust 0.024 0.18 0.227 2 ~ ~ ~ 5 5 5 1 100
execute unless block ~ ~ ~ #cg:ignore run particle dust 0.008 0.067 0.086 5 ~ ~ ~ 3 3 3 1 500
execute unless block ~ ~ ~ #cg:ignore at @e[distance=..5,type=!#cg:ignore] run particle dust 0 0.349 1 1 ~ ~ ~ 0.5 2 0.5 1 100
execute unless block ~ ~ ~ #cg:ignore run effect give @e[distance=..5,type=!#cg:ignore] glowing 5 1 true
execute unless block ~ ~ ~ #cg:ignore run effect give @e[distance=..5,type=!#cg:ignore] weakness 5 1 true
execute unless block ~ ~ ~ #cg:ignore run effect give @e[distance=..5,type=!#cg:ignore] slowness 8 1 true
execute unless block ~ ~ ~ #cg:ignore run effect give @e[distance=..5,type=!#cg:ignore] darkness 8 1 true
execute unless block ~ ~ ~ #cg:ignore run effect give @e[distance=..5,type=!#cg:ignore] blindness 3 1 true
execute unless block ~ ~ ~ #cg:ignore run kill @s