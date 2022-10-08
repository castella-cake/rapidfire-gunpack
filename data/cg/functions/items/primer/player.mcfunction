# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute if score @s cg.use matches 1.. if score @s cg.primer.ammo matches 1.. unless score @s cg.primer.delay matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.primer","cg.bul","cg.bul_type.sniper","cg.bul_ammo.lge"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.use matches 1.. if score @s cg.primer.ammo matches 1.. unless score @s cg.primer.delay matches 1.. run function cg:shot_am
execute if score @s cg.use matches 1.. if score @s cg.primer.ammo matches 1.. unless score @s cg.primer.delay matches 1.. run function cg:items/primer/effect_shot
execute if score @s cg.use matches 1.. if score @s cg.primer.ammo matches 1.. unless score @s cg.primer.delay matches 1.. run tp @s ~ ~ ~ ~ ~-7
execute if score @s cg.use matches 1.. if score @s cg.primer.ammo matches 1.. unless score @s cg.primer.delay matches 1.. if entity @s[tag=!cg.primer.ads] run tp @s ~ ~ ~ ~ ~-10
execute if score @s cg.use matches 1.. if score @s cg.primer.ammo matches 1.. unless score @s cg.primer.delay matches 1.. run scoreboard players remove @s cg.primer.ammo 1
execute if score @s cg.use matches 1.. if score @s cg.primer.ammo matches 1.. unless score @s cg.primer.delay matches 1.. run scoreboard players set @s cg.primer.delay 20
execute if score @s cg.use matches 1.. unless score @s cg.primer.ammo matches 1.. run tag @s add cg.primer.reload


execute as @s[scores={cg.primer.delay=1..}] run scoreboard players remove @s cg.primer.delay 1
execute as @s[scores={cg.primer.delay=1}] run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute as @s[scores={cg.primer.delay=5}] at @s run playsound block.lever.click master @a ~ ~ ~ 1 1.2 0
execute as @s[scores={cg.primer.delay=3}] at @s run playsound item.crossbow.loading_end master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.primer.delay=1}] at @s run playsound block.glass.break master @a ~ ~ ~ 1 2 0


execute as @s[scores={cg.sneak=1..},tag=!cg.primer.ads] at @s run playsound item.armor.equip_generic master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.primer.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"Primer","color":"dark_aqua","bold":true,"italic":false}'},CustomModelData:12,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.primer.ads

execute if entity @s[tag=cg.primer.reload] unless score @s cg.ammo_lge matches 1.. run scoreboard players reset @s cg.primer.rld_timer
execute if entity @s[tag=cg.primer.reload] unless score @s cg.ammo_lge matches 1.. run tag @s remove cg.primer.reload

execute if entity @s[tag=cg.primer.reload] run scoreboard players add @s cg.primer.rld_timer 1
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 3 run playsound block.lever.click player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 5 run playsound item.armor.equip_netherite player @a ~ ~ ~ 0.8 2 0
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 28 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.7 0
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 28 if score @s cg.primer.ammo matches 1.. run scoreboard players set @s cg.primer.ammo 1
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 28 unless score @s cg.primer.ammo matches 1.. run scoreboard players set @s cg.primer.ammo 0
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 48 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.5 0
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 68 run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 68 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 68.. if score @s cg.ammo_lge matches ..2 run scoreboard players operation @s cg.primer.ammo += @s cg.ammo_lge
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 68.. if score @s cg.ammo_lge matches ..2 run scoreboard players set @s cg.ammo_lge 0
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 68.. if score @s cg.ammo_lge matches 3.. run scoreboard players add @s cg.primer.ammo 3
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 68.. if score @s cg.ammo_lge matches 3.. run scoreboard players remove @s cg.ammo_lge 3
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 68.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.primer.reload] if score @s cg.primer.rld_timer matches 68.. run tag @s remove cg.primer.reload
execute if score @s cg.primer.rld_timer matches 68.. run scoreboard players reset @s cg.primer.rld_timer

execute if entity @s[tag=!cg.primer.reload] run title @s actionbar [{"text":"","color":"dark_aqua"},{"text":"---- Primer "},{"score":{"name":"@s","objective":"cg.primer.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_lge"},"color":"gray"},{"text":" SINGLE \\___\\_\\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.primer.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"---- Primer "},{"score":{"name":"@s","objective":"cg.primer.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_lge"},"color":"gray"},{"text":" RELOAD \\___\\_\\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]