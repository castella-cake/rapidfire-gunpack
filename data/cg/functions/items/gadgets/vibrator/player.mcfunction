# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 0

execute if score @s cg.sneak matches 1.. run scoreboard players add @s cg.vibrator.beat 1
execute if score @s cg.sneak matches 1.. if score @s cg.vibrator.beat matches 20.. if entity @e[distance=0.5..30,type=!#cg:ignore] at @e[distance=0.5..30,limit=1,sort=random,type=!#cg:ignore] if predicate cg:random/0_5 run playsound block.sculk_sensor.clicking master @s ~ ~ ~ 1 1 0.5
execute if score @s cg.sneak matches 1.. if entity @e[distance=0.1..30,type=!#cg:ignore] anchored eyes facing entity @e[distance=0.1..30,limit=1,sort=random,type=!#cg:ignore] eyes positioned ^ ^ ^2 run particle dust 0 0.882 1 0.5 ~ ~ ~ 0.2 0.2 0.2 1 1
execute if score @s cg.sneak matches 1.. if score @s cg.vibrator.beat matches 20.. run scoreboard players reset @s cg.vibrator.beat

execute if score @s cg.use_gadget matches 1.. if score @s cg.vibrator.ammo matches 50.. run tag @s add cg.vibrator.shot_sub

execute if score @s cg.vibrator.ammo matches 100.. run title @s actionbar [{"text":"","color":"blue"},{"text":"| Vibrator "},{"score":{"name":"@s","objective":"cg.vibrator.ammo"},"color":"white"},{"text":"% "},{"text":"[DARK","color":"yellow","underlined":true},{"text":"BALL]","color":"#ffc800","underlined":true},{"text":" / ","color":"white"},{"text":"[SONICBOOM]","color":"gold","underlined":true},{"text":" -|"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if score @s cg.vibrator.ammo matches 85..99 run title @s actionbar [{"text":"","color":"red"},{"text":"| Vibrator "},{"score":{"name":"@s","objective":"cg.vibrator.ammo"},"color":"white"},{"text":"% "},{"text":"[DARK","color":"yellow","underlined":true},{"text":"BAL","color":"#ffc800","underlined":true},{"text":"L]","color":"#ffc800"},{"text":" / ","color":"white"},{"text":"SONICBOOM","color":"gray"},{"text":" -|"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if score @s cg.vibrator.ammo matches 76..84 run title @s actionbar [{"text":"","color":"red"},{"text":"| Vibrator "},{"score":{"name":"@s","objective":"cg.vibrator.ammo"},"color":"white"},{"text":"% "},{"text":"[DARK","color":"yellow","underlined":true},{"text":"BA","color":"#ffc800","underlined":true},{"text":"LL]","color":"#ffc800"},{"text":" / ","color":"white"},{"text":"SONICBOOM","color":"gray"},{"text":" -|"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if score @s cg.vibrator.ammo matches 66..75 run title @s actionbar [{"text":"","color":"red"},{"text":"| Vibrator "},{"score":{"name":"@s","objective":"cg.vibrator.ammo"},"color":"white"},{"text":"% "},{"text":"[DARK","color":"yellow","underlined":true},{"text":"B","color":"#ffc800","underlined":true},{"text":"ALL]","color":"#ffc800"},{"text":" / ","color":"white"},{"text":"SONICBOOM","color":"gray"},{"text":" -|"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if score @s cg.vibrator.ammo matches 50..65 run title @s actionbar [{"text":"","color":"red"},{"text":"| Vibrator "},{"score":{"name":"@s","objective":"cg.vibrator.ammo"},"color":"white"},{"text":"% "},{"text":"[DARK","color":"yellow","underlined":true},{"text":"BALL]","color":"#ffc800"},{"text":" / ","color":"white"},{"text":"SONICBOOM","color":"gray"},{"text":" -|"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]

execute if score @s cg.vibrator.ammo matches 35..49 unless score @s cg.vibrator.charge matches 1.. run title @s actionbar [{"text":"","color":"red"},{"text":"| Vibrator "},{"score":{"name":"@s","objective":"cg.vibrator.ammo"},"color":"white"},{"text":"% "},{"text":"DAR","color":"gray","underlined":true},{"text":"KBALL","color":"gray"},{"text":" / ","color":"white"},{"text":"SONICBOOM","color":"gray"},{"text":" -|"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if score @s cg.vibrator.ammo matches 26..34 unless score @s cg.vibrator.charge matches 1.. run title @s actionbar [{"text":"","color":"red"},{"text":"| Vibrator "},{"score":{"name":"@s","objective":"cg.vibrator.ammo"},"color":"white"},{"text":"% "},{"text":"DA","color":"gray","underlined":true},{"text":"RKBALL","color":"gray"},{"text":" / ","color":"white"},{"text":"SONICBOOM","color":"gray"},{"text":" -|"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if score @s cg.vibrator.ammo matches 16..25 unless score @s cg.vibrator.charge matches 1.. run title @s actionbar [{"text":"","color":"red"},{"text":"| Vibrator "},{"score":{"name":"@s","objective":"cg.vibrator.ammo"},"color":"white"},{"text":"% "},{"text":"D","color":"gray","underlined":true},{"text":"ARKBALL","color":"gray"},{"text":" / ","color":"white"},{"text":"SONICBOOM","color":"gray"},{"text":" -|"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if score @s cg.vibrator.ammo matches 1..15 unless score @s cg.vibrator.charge matches 1.. run title @s actionbar [{"text":"","color":"red"},{"text":"| Vibrator "},{"score":{"name":"@s","objective":"cg.vibrator.ammo"},"color":"white"},{"text":"% "},{"text":"","color":"gray","underlined":true},{"text":"DARKBALL","color":"gray"},{"text":" / ","color":"white"},{"text":"SONICBOOM","color":"gray"},{"text":" -|"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if score @s cg.vibrator.charge matches 1.. run title @s actionbar [{"text":"","color":"gold","bold":true},{"text":"| Vibrator SONICBOOM ACTIVE -|"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]