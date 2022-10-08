# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute if score @s cg.use matches 1.. if score @s cg.stw03.ammo matches 1.. unless score @s cg.stw03.delay matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.stw03","cg.bul","cg.bul_type.pistol","cg.bul_ammo.sml"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.use matches 1.. if score @s cg.stw03.ammo matches 1.. unless score @s cg.stw03.delay matches 1.. run function cg:shot_am
execute if score @s cg.use matches 1.. if score @s cg.stw03.ammo matches 1.. unless score @s cg.stw03.delay matches 1.. run function cg:items/stw03/effect_shot
execute if score @s cg.use matches 1.. if score @s cg.stw03.ammo matches 1.. unless score @s cg.stw03.delay matches 1.. run tp @s ~ ~ ~ ~ ~-2.5
execute if score @s cg.use matches 1.. if score @s cg.stw03.ammo matches 1.. unless score @s cg.stw03.delay matches 1.. if entity @s[tag=!cg.stw03.ads] run tp @s ~ ~ ~ ~ ~-5
execute if score @s cg.use matches 1.. if score @s cg.stw03.ammo matches 1.. unless score @s cg.stw03.delay matches 1.. run scoreboard players remove @s cg.stw03.ammo 1
execute if score @s cg.use matches 1.. if score @s cg.stw03.ammo matches 1.. unless score @s cg.stw03.delay matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.use matches 1.. unless score @s cg.stw03.ammo matches 1.. run tag @s add cg.stw03.reload


execute as @s[scores={cg.stw03.delay=1..}] run scoreboard players remove @s cg.stw03.delay 1
execute as @s[scores={cg.stw03.delay=1..2}] run item modify entity @s weapon.mainhand cg:crossbow_arrow

execute as @s[scores={cg.sneak=1..},tag=!cg.stw03.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 0.25 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.stw03.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"STW-03","color":"blue","bold":true,"italic":false}'},CustomModelData:29,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.stw03.ads

execute if entity @s[tag=cg.stw03.reload] unless score @s cg.ammo_sml matches 1.. run scoreboard players reset @s cg.stw03.rld_timer
execute if entity @s[tag=cg.stw03.reload] unless score @s cg.ammo_sml matches 1.. run tag @s remove cg.stw03.reload

execute if entity @s[tag=cg.stw03.reload] run scoreboard players add @s cg.stw03.rld_timer 1
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 6 run playsound entity.item_frame.break player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 6 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 6 run playsound item.armor.equip_gold player @a ~ ~ ~ 1 1.3 0
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 6 if score @s cg.stw03.ammo matches 1.. run scoreboard players set @s cg.stw03.ammo 1
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 6 unless score @s cg.stw03.ammo matches 1.. run scoreboard players set @s cg.stw03.ammo 0
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 24 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.6 0
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 24 run playsound item.armor.equip_gold player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 24 if score @s cg.ammo_sml matches ..11 run scoreboard players operation @s cg.stw03.ammo += @s cg.ammo_sml
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 24 if score @s cg.ammo_sml matches ..11 run scoreboard players set @s cg.ammo_sml 0
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 24 if score @s cg.ammo_sml matches 12.. run scoreboard players add @s cg.stw03.ammo 12
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 24 if score @s cg.ammo_sml matches 12.. run scoreboard players remove @s cg.ammo_sml 12
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 24 if score @s cg.stw03.ammo matches 13.. run scoreboard players set @s cg.stw03.rld_timer 48
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 47 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 47 run playsound block.iron_door.close player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 48.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.stw03.reload] if score @s cg.stw03.rld_timer matches 48.. run tag @s remove cg.stw03.reload
execute if score @s cg.stw03.rld_timer matches 48.. run scoreboard players reset @s cg.stw03.rld_timer

execute if entity @s[tag=!cg.stw03.reload] run title @s actionbar [{"text":"","color":"blue"},{"text":"--- STW-03 "},{"score":{"name":"@s","objective":"cg.stw03.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" SINGLE ￣\\ \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.stw03.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"--- STW-03 "},{"score":{"name":"@s","objective":"cg.stw03.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" RELOAD ￣\\ \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]