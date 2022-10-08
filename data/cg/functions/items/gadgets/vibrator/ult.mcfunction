execute if entity @s[tag=cg.vibrator.ult] run scoreboard players add @s cg.vibrator.charge 1
execute if score @s cg.vibrator.charge matches 1..10 run effect give @s slowness 1 255 true
execute if score @s cg.vibrator.charge matches 1..10 run effect give @s darkness 1 255 true
execute if score @s cg.vibrator.charge matches 1.. run particle dust 0.055 0.286 0.325 0.5 ~ ~ ~ 0.5 1.5 0.5 1 50
execute if score @s cg.vibrator.charge matches 2 run playsound entity.warden.heartbeat master @a[distance=..30] ~ ~ ~ 1 2 0.1
execute if score @s cg.vibrator.charge matches 2 run playsound entity.warden.sonic_charge master @a[distance=..30] ~ ~ ~ 1 1.2 0.1
execute if score @s cg.vibrator.charge matches 2 run playsound entity.warden.sonic_charge master @a[distance=..30] ~ ~ ~ 1 1.2 0.1
execute if score @s cg.vibrator.charge matches 2 run playsound entity.warden.sonic_charge master @a[distance=..30] ~ ~ ~ 1 1.2 0.1
execute if score @s cg.vibrator.charge matches 1..10 anchored eyes run summon armor_stand ^ ^ ^ {Tags:["cg.vibrator.effect"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.vibrator.charge matches 13 anchored eyes run summon armor_stand ^ ^ ^ {Tags:["cg.vibrator.effect","cg.vibrator.effect.boom"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.vibrator.charge matches 2..25 anchored eyes run tp @e[tag=cg.vibrator.effect,sort=nearest,limit=1] ^ ^ ^ ~ ~
execute if score @s cg.vibrator.charge matches 28..30 if score @s cg.vibrator.ammo matches 100.. run effect give @s speed 1 2 true
execute if score @s cg.vibrator.charge matches 30 if score @s cg.vibrator.ammo matches 100.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.vibrator","cg.bul"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.vibrator.charge matches 30 if score @s cg.vibrator.ammo matches 100.. run function cg:shot_am
execute if score @s cg.vibrator.charge matches 30 if score @s cg.vibrator.ammo matches 100.. run function cg:items/gadgets/vibrator/se_shot
execute if score @s cg.vibrator.charge matches 30 if score @s cg.vibrator.ammo matches 100.. run scoreboard players remove @s cg.vibrator.ammo 100
execute if score @s cg.vibrator.charge matches 28.. run effect give @s speed 1 1 true
execute if score @s cg.vibrator.charge matches 28.. run effect give @s strength 1 4 true
execute if score @s cg.vibrator.charge matches 28.. run effect give @s regeneration 1 0 true
execute if score @s cg.vibrator.charge matches 28 run attribute @s generic.knockback_resistance base set 1
execute if score @s cg.vibrator.charge matches 30.. run scoreboard players add @s cg.vibrator.beat 1
execute if score @s cg.vibrator.beat matches 10.. run playsound entity.warden.heartbeat master @a[distance=..15] ~ ~ ~ 1 2 0.1
execute if score @s cg.vibrator.beat matches 10.. run scoreboard players reset @s cg.vibrator.beat
execute if score @s cg.vibrator.charge matches 330.. run attribute @s generic.knockback_resistance base set 0.0
execute if score @s cg.vibrator.charge matches 330.. run playsound entity.warden.death master @a ~ ~ ~ 1 0.5 0
execute if score @s cg.vibrator.charge matches 330.. run tag @s remove cg.vibrator.ult
execute if score @s cg.vibrator.charge matches 330.. run scoreboard players reset @s cg.vibrator.charge