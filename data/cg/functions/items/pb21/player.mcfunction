# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute unless score @s cg.pb21.mode matches 0.. run scoreboard players set @s cg.pb21.mode 0

execute if score @s cg.use matches 1.. if score @s cg.pb21.ammo matches 1.. if score @s cg.pb21.mode matches 0 unless score @s cg.pb21.burst matches 2.. unless score @s cg.pb21.burst_delay matches 1.. run scoreboard players set @s cg.pb21.burst 2
execute if score @s cg.use matches 1.. if score @s cg.pb21.ammo matches 1.. if score @s cg.pb21.mode matches 1 unless score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.burst_delay matches 1.. run scoreboard players set @s cg.pb21.burst 3
execute if score @s cg.use matches 1.. if score @s cg.pb21.ammo matches 1.. if score @s cg.pb21.mode matches 1 unless score @s cg.pb21.burst_delay matches 1.. run scoreboard players set @s cg.pb21.burst_delay 5
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.burst matches 1.. run scoreboard players set @s cg.pb21.burst 0

execute if score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.delay matches 1.. if score @s cg.pb21.ammo matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.pb21","cg.bul","cg.bul_type.ar","cg.bul_ammo.mid"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.delay matches 1.. if score @s cg.pb21.ammo matches 1.. run function cg:shot_am
execute if score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.delay matches 1.. if score @s cg.pb21.ammo matches 1.. run function cg:items/pb21/se_shot
execute if score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.delay matches 1.. if score @s cg.pb21.ammo matches 1.. run function cg:items/recoil/pb21
execute if score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.delay matches 1.. if score @s cg.pb21.ammo matches 1.. anchored eyes run particle block gold_block ^-0.2 ^ ^1 0 0 0 1 1
execute if score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.delay matches 1.. if score @s cg.pb21.ammo matches 1.. run scoreboard players remove @s cg.pb21.ammo 1
execute if score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.delay matches 1.. unless score @s cg.pb21.ammo matches 1.. run tag @s add cg.pb21.reload
execute if score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.delay matches 1.. if score @s cg.pb21.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.delay matches 1.. run scoreboard players remove @s cg.pb21.burst 1
execute if score @s cg.pb21.burst matches 1.. unless score @s cg.pb21.delay matches 1.. if score @s cg.pb21.ammo matches 1.. if score @s cg.pb21.mode matches 0 run scoreboard players add @s cg.pb21.delay 2

execute if score @s cg.pb21.delay matches 1.. run scoreboard players remove @s cg.pb21.delay 1
execute if score @s cg.pb21.burst_delay matches 1.. run scoreboard players remove @s cg.pb21.burst_delay 1

execute as @s[scores={cg.sneak=1..},tag=!cg.pb21.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.pb21.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"PB-21","color":"gold","bold":true,"italic":false}'},CustomModelData:33,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.pb21.ads

execute unless predicate cg:select/charged unless entity @s[tag=cg.pb21.reload] run item modify entity @s weapon.mainhand cg:crossbow_arrow

execute if entity @s[tag=cg.pb21.reload] unless score @s cg.ammo_mid matches 1.. run scoreboard players reset @s cg.pb21.rld_timer
execute if entity @s[tag=cg.pb21.reload] unless score @s cg.ammo_mid matches 1.. run tag @s remove cg.pb21.reload

execute if entity @s[tag=cg.pb21.reload] run scoreboard players add @s cg.pb21.rld_timer 1
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 3 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.0 0
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 3 if score @s cg.pb21.ammo matches 1.. run scoreboard players set @s cg.pb21.ammo 1
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 3 unless score @s cg.pb21.ammo matches 1.. run scoreboard players set @s cg.pb21.ammo 0
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 25 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 45 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 45.. if score @s cg.ammo_mid matches ..31 run scoreboard players operation @s cg.pb21.ammo += @s cg.ammo_mid
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 45.. if score @s cg.ammo_mid matches ..31 run scoreboard players set @s cg.ammo_mid 0
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 45.. if score @s cg.ammo_mid matches 32.. run scoreboard players add @s cg.pb21.ammo 32
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 45.. if score @s cg.ammo_mid matches 32.. run scoreboard players remove @s cg.ammo_mid 32
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 45.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.pb21.reload] if score @s cg.pb21.rld_timer matches 45.. run tag @s remove cg.pb21.reload
execute if score @s cg.pb21.rld_timer matches 45.. run scoreboard players reset @s cg.pb21.rld_timer

execute if entity @s[tag=!cg.pb21.reload] if score @s cg.pb21.mode matches 0 run title @s actionbar [{"text":"","color":"gold"},{"text":"=// PB-21 "},{"score":{"name":"@s","objective":"cg.pb21.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" [AT/BS] //"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=!cg.pb21.reload] if score @s cg.pb21.mode matches 1 run title @s actionbar [{"text":"","color":"gold"},{"text":"=// PB-21 "},{"score":{"name":"@s","objective":"cg.pb21.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" [3-BST] //"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.pb21.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"=// PB-21 "},{"score":{"name":"@s","objective":"cg.pb21.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" RELOAD //"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]