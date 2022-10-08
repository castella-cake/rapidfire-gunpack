# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute if score @s cg.use matches 1.. if score @s cg.type150r.ammo matches 1.. unless score @s cg.type150r.burst matches 1.. run scoreboard players set @s cg.type150r.burst 2
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.burst matches 1.. run scoreboard players set @s cg.type150r.burst 0

execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. if score @s cg.type150r.ammo matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.type150r","cg.bul","cg.bul_smg","cg.bul_ammo.sml"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. if score @s cg.type150r.ammo matches 1.. run function cg:shot_am
execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. if score @s cg.type150r.ammo matches 1.. run function cg:items/type150r/se_shot
execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. if score @s cg.type150r.ammo matches 1.. if entity @s[tag=!cg.type150r.ads] run tp @s ~ ~ ~ ~ ~-2.8
execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. if score @s cg.type150r.ammo matches 1.. run function cg:items/recoil/type150r
execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. if score @s cg.type150r.ammo matches 1.. anchored eyes run particle block gold_block ^-0.2 ^ ^1 0 0 0 1 1
execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. if score @s cg.type150r.ammo matches 1.. run scoreboard players remove @s cg.type150r.ammo 1
execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. unless score @s cg.type150r.ammo matches 1.. run tag @s add cg.type150r.reload
execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. if score @s cg.type150r.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. run scoreboard players remove @s cg.type150r.burst 1
execute if score @s cg.type150r.burst matches 1.. unless score @s cg.type150r.delay matches 1.. if score @s cg.type150r.ammo matches 1.. run scoreboard players add @s cg.type150r.delay 2

execute if score @s cg.type150r.delay matches 1.. run scoreboard players remove @s cg.type150r.delay 1

execute if entity @s[tag=cg.type150r.reload] unless score @s cg.ammo_sml matches 1.. run scoreboard players reset @s cg.type150r.rld_timer
execute if entity @s[tag=cg.type150r.reload] unless score @s cg.ammo_sml matches 1.. run tag @s remove cg.type150r.reload

execute if entity @s[tag=cg.type150r.reload] run scoreboard players add @s cg.type150r.rld_timer 1
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 3 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.5 0
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 3 if score @s cg.type150r.ammo matches 1.. run scoreboard players set @s cg.type150r.ammo 1
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 3 unless score @s cg.type150r.ammo matches 1.. run scoreboard players set @s cg.type150r.ammo 0
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 25 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 45 run playsound block.iron_door.close player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 45.. if score @s cg.ammo_sml matches ..29 run scoreboard players operation @s cg.type150r.ammo += @s cg.ammo_sml
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 45.. if score @s cg.ammo_sml matches ..29 run scoreboard players set @s cg.ammo_sml 0
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 45.. if score @s cg.ammo_sml matches 30.. run scoreboard players add @s cg.type150r.ammo 30
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 45.. if score @s cg.ammo_sml matches 30.. run scoreboard players remove @s cg.ammo_sml 30
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 45.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.type150r.reload] if score @s cg.type150r.rld_timer matches 45.. run tag @s remove cg.type150r.reload
execute if score @s cg.type150r.rld_timer matches 45.. run scoreboard players reset @s cg.type150r.rld_timer

execute if entity @s[tag=!cg.type150r.reload] run title @s actionbar [{"text":"","color":"aqua"},{"text":" 一五〇複式 "},{"score":{"name":"@s","objective":"cg.type150r.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sml"},"color":"gray"},{"text":" AT/BST "},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.type150r.reload] run title @s actionbar [{"text":"","color":"red"},{"text":" 一五〇複式 "},{"score":{"name":"@s","objective":"cg.type150r.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sml"},"color":"gray"},{"text":" RELOAD "},{"nbt":"text","storage":"cg:actionbar","interpret":true}]