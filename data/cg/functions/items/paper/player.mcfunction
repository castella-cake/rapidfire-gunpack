# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute if score @s cg.use matches 1.. if score @s cg.paper.ammo matches 1.. unless score @s cg.paper.burst matches 3.. run scoreboard players set @s cg.paper.burst 5

execute if score @s cg.paper.burst matches 1.. unless score @s cg.paper.delay matches 1.. if score @s cg.paper.ammo matches 1.. if entity @s[tag=!cg.ppaper.reload] run summon armor_stand ^ ^ ^ {Tags:["cg.bul.paper","cg.bul","cg.bul_type.smg","cg.bul_ammo.sml"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.paper.burst matches 1.. unless score @s cg.paper.delay matches 1.. if score @s cg.paper.ammo matches 1.. if entity @s[tag=!cg.paper.reload] run function cg:shot_am
execute if score @s cg.paper.burst matches 1.. unless score @s cg.paper.delay matches 1.. if score @s cg.paper.ammo matches 1.. run function cg:items/paper/effect_shot
execute if score @s cg.paper.burst matches 1.. unless score @s cg.paper.delay matches 1.. if score @s cg.paper.ammo matches 1.. run function cg:items/recoil/paper
execute if score @s cg.paper.burst matches 1.. unless score @s cg.paper.delay matches 1.. if score @s cg.paper.ammo matches 1.. run scoreboard players remove @s cg.paper.ammo 1
execute if score @s cg.paper.burst matches 1.. unless score @s cg.paper.delay matches 1.. unless score @s cg.paper.ammo matches 1.. run tag @s add cg.paper.reload
execute if score @s cg.paper.burst matches 1.. unless score @s cg.paper.delay matches 1.. if score @s cg.paper.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.paper.burst matches 1.. unless score @s cg.paper.delay matches 1.. run scoreboard players remove @s cg.paper.burst 1
execute if score @s cg.paper.burst matches 1.. unless score @s cg.paper.delay matches 1.. if score @s cg.paper.ammo matches 1.. run scoreboard players add @s cg.paper.delay 1

execute if score @s cg.paper.delay matches 1.. run scoreboard players remove @s cg.paper.delay 1

execute if entity @s[tag=cg.paper.reload] unless score @s cg.ammo_sml matches 1.. run scoreboard players reset @s cg.paper.rld_timer
execute if entity @s[tag=cg.paper.reload] unless score @s cg.ammo_sml matches 1.. run tag @s remove cg.paper.reload

execute if entity @s[tag=cg.paper.reload] run scoreboard players add @s cg.paper.rld_timer 1
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 3 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.6 0
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 3 if score @s cg.paper.ammo matches 1.. run scoreboard players set @s cg.paper.ammo 1
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 3 unless score @s cg.paper.ammo matches 1.. run scoreboard players set @s cg.paper.ammo 0
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 21 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 39 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.5 0
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 39.. if score @s cg.ammo_sml matches ..23 run scoreboard players operation @s cg.paper.ammo += @s cg.ammo_sml
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 39.. if score @s cg.ammo_sml matches ..23 run scoreboard players set @s cg.ammo_sml 0
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 39.. if score @s cg.ammo_sml matches 24.. run scoreboard players add @s cg.paper.ammo 24
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 39.. if score @s cg.ammo_sml matches 24.. run scoreboard players remove @s cg.ammo_sml 24
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 39.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.paper.reload] if score @s cg.paper.rld_timer matches 39.. run tag @s remove cg.paper.reload
execute if score @s cg.paper.rld_timer matches 39.. run scoreboard players reset @s cg.paper.rld_timer

execute if entity @s[tag=!cg.paper.reload] run title @s actionbar [{"text":"","color":"aqua"},{"text":"---| Paper "},{"score":{"name":"@s","objective":"cg.paper.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sml"},"color":"gray"},{"text":" AT/BST \\_\\￣"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.paper.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"---| Paper "},{"score":{"name":"@s","objective":"cg.paper.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sml"},"color":"gray"},{"text":" RELOAD \\_\\￣"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]