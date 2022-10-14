# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute if score @s cg.use matches 1.. if score @s cg.pgi10.ammo matches 1.. unless score @s cg.pgi10.burst matches 3.. run scoreboard players set @s cg.pgi10.burst 5

execute if score @s cg.pgi10.burst matches 1.. if score @s cg.pgi10.ammo matches 1.. if entity @s[tag=!cg.pgi10.reload] run summon armor_stand ^ ^ ^ {Tags:["cg.bul.pgi10","cg.bul","cg.bul_type.smg","cg.bul_ammo.sml"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.pgi10.burst matches 1.. if score @s cg.pgi10.ammo matches 1.. if entity @s[tag=!cg.pgi10.reload] run function cg:shot_am
execute if score @s cg.pgi10.burst matches 1.. if score @s cg.pgi10.ammo matches 1.. run function cg:items/pgi10/effect_shot
execute if score @s cg.pgi10.burst matches 1.. if score @s cg.pgi10.ammo matches 1.. run function cg:items/recoil/pgi10
execute if score @s cg.pgi10.burst matches 1.. if score @s cg.pgi10.ammo matches 1.. run scoreboard players remove @s cg.pgi10.ammo 1
execute if score @s cg.pgi10.burst matches 1.. unless score @s cg.pgi10.ammo matches 1.. run tag @s add cg.pgi10.reload
execute if score @s cg.pgi10.burst matches 1.. if score @s cg.pgi10.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.pgi10.burst matches 1.. run scoreboard players remove @s cg.pgi10.burst 1
#execute if score @s cg.pgi10.burst matches 1.. if score @s cg.pgi10.ammo matches 1.. run scoreboard players add @s cg.pgi10.delay 1

#execute if score @s cg.pgi10.delay matches 1.. run scoreboard players remove @s cg.pgi10.delay 1

execute as @s[scores={cg.sneak=1..},tag=!cg.pgi10.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.pgi10.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"PGI-10","color":"aqua","bold":true,"italic":false}'},CustomModelData:20,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.pgi10.ads

execute if entity @s[tag=cg.pgi10.reload] unless score @s cg.ammo_sml matches 1.. run scoreboard players reset @s cg.pgi10.rld_timer
execute if entity @s[tag=cg.pgi10.reload] unless score @s cg.ammo_sml matches 1.. run tag @s remove cg.pgi10.reload

execute if entity @s[tag=cg.pgi10.reload] run scoreboard players add @s cg.pgi10.rld_timer 1
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 5 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 5 if score @s cg.pgi10.ammo matches 1.. run scoreboard players set @s cg.pgi10.ammo 1
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 5 unless score @s cg.pgi10.ammo matches 1.. run scoreboard players set @s cg.pgi10.ammo 0
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 15 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.9 0
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 39 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.9 0
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 39.. if score @s cg.ammo_sml matches ..31 run scoreboard players operation @s cg.pgi10.ammo += @s cg.ammo_sml
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 39.. if score @s cg.ammo_sml matches ..31 run scoreboard players set @s cg.ammo_sml 0
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 39.. if score @s cg.ammo_sml matches 32.. run scoreboard players add @s cg.pgi10.ammo 32
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 39.. if score @s cg.ammo_sml matches 32.. run scoreboard players remove @s cg.ammo_sml 32
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 39.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.pgi10.reload] if score @s cg.pgi10.rld_timer matches 39.. run tag @s remove cg.pgi10.reload
execute if score @s cg.pgi10.rld_timer matches 39.. run scoreboard players reset @s cg.pgi10.rld_timer

execute if entity @s[tag=!cg.pgi10.reload] run title @s actionbar [{"text":"","color":"aqua"},{"text":"---- PGI-10 "},{"score":{"name":"@s","objective":"cg.pgi10.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sml"},"color":"gray"},{"text":" AT/BST | |￣\\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.pgi10.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"---- PGI-10 "},{"score":{"name":"@s","objective":"cg.pgi10.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sml"},"color":"gray"},{"text":" RELOAD | |￣\\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]