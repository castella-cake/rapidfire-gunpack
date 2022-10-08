# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 0

execute if entity @s[tag=!cg.fp5.reload] if score @s cg.use matches 1.. if score @s cg.fp5.ammo matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.fp5","cg.bul","cg.bul_type.pistol","cg.bul_ammo.sml"],Marker:1b,Small:1b,Invisible:1b}
execute if entity @s[tag=!cg.fp5.reload] if score @s cg.use matches 1.. if score @s cg.fp5.ammo matches 1.. run function cg:shot_am
execute if entity @s[tag=!cg.fp5.reload] if score @s cg.use matches 1.. if score @s cg.fp5.ammo matches 1.. run function cg:items/fp5/se_shot
execute if entity @s[tag=!cg.fp5.reload] if score @s cg.use matches 1.. if score @s cg.fp5.ammo matches 1.. run tp @s ~ ~ ~ ~ ~-2
execute if entity @s[tag=!cg.fp5.reload] if score @s cg.use matches 1.. if score @s cg.fp5.ammo matches 1.. anchored eyes run particle block gold_block ^-0.2 ^ ^1 0 0 0 1 1
execute if entity @s[tag=!cg.fp5.reload] if score @s cg.use matches 1.. if score @s cg.fp5.ammo matches 1.. run scoreboard players remove @s cg.fp5.ammo 1
execute if entity @s[tag=!cg.fp5.reload] if score @s cg.use matches 1.. unless score @s cg.fp5.ammo matches 1.. run tag @s add cg.fp5.reload
execute if entity @s[tag=!cg.fp5.reload] if score @s cg.use matches 1.. if score @s cg.fp5.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow

execute if entity @s[tag=cg.fp5.reload] unless score @s cg.ammo_sml matches 1.. run scoreboard players reset @s cg.fp5.rld_timer
execute if entity @s[tag=cg.fp5.reload] unless score @s cg.ammo_sml matches 1.. run tag @s remove cg.fp5.reload

execute as @s[scores={cg.sneak=1..},tag=!cg.fp5.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 0.25 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.fp5.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"FP5","color":"blue","bold":true,"italic":false}'},CustomModelData:30,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.fp5.ads

execute if entity @s[tag=cg.fp5.reload] run scoreboard players add @s cg.fp5.rld_timer 1
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 3 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 3 if score @s cg.fp5.ammo matches 1.. run scoreboard players set @s cg.fp5.ammo 1
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 3 unless score @s cg.fp5.ammo matches 1.. run scoreboard players set @s cg.fp5.ammo 0
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 20 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.9 0
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 20 if score @s cg.ammo_sml matches ..15 run scoreboard players operation @s cg.fp5.ammo += @s cg.ammo_sml
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 20 if score @s cg.ammo_sml matches ..15 run scoreboard players set @s cg.ammo_sml 0
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 20 if score @s cg.ammo_sml matches 16.. run scoreboard players add @s cg.fp5.ammo 16
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 20 if score @s cg.ammo_sml matches 16.. run scoreboard players remove @s cg.ammo_sml 16
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 20 if score @s cg.fp5.ammo matches 17.. run scoreboard players set @s cg.fp5.rld_timer 40
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 39 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 39 run playsound block.iron_door.close player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 40.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.fp5.reload] if score @s cg.fp5.rld_timer matches 40.. run tag @s remove cg.fp5.reload
execute if score @s cg.fp5.rld_timer matches 40.. run scoreboard players reset @s cg.fp5.rld_timer

execute if entity @s[tag=!cg.fp5.reload] run title @s actionbar [{"text":"","color":"blue"},{"text":"-| FP5 "},{"score":{"name":"@s","objective":"cg.fp5.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sml"},"color":"gray"},{"text":" SINGLE |-"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.fp5.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"-| FP5 "},{"score":{"name":"@s","objective":"cg.fp5.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sml"},"color":"gray"},{"text":" RELOAD |-"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]