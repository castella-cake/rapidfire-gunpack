# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute if score @s cg.use matches 1.. if score @s cg.aa40.ammo matches 1.. unless score @s cg.aa40.delay matches 1.. unless score @s cg.aa40.burst matches 3.. run scoreboard players set @s cg.aa40.burst 4

execute if score @s cg.aa40.burst matches 1.. unless score @s cg.aa40.delay matches 1.. if score @s cg.aa40.ammo matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.aa40","cg.bul","cg.bul_type.ar","cg.bul_ammo.mid"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.aa40.burst matches 1.. unless score @s cg.aa40.delay matches 1.. if score @s cg.aa40.ammo matches 1.. run function cg:shot_am
execute if score @s cg.aa40.burst matches 1.. unless score @s cg.aa40.delay matches 1.. if score @s cg.aa40.ammo matches 1.. run function cg:items/aa40/effect_shot
execute if score @s cg.aa40.burst matches 1.. unless score @s cg.aa40.delay matches 1.. if score @s cg.aa40.ammo matches 1.. run tp @s ~ ~ ~ ~ ~-1.2
execute if score @s cg.aa40.burst matches 1.. unless score @s cg.aa40.delay matches 1.. if score @s cg.aa40.ammo matches 1.. if entity @s[tag=!cg.aa40.ads] run tp @s ~ ~ ~ ~ ~-2
execute if score @s cg.aa40.burst matches 1.. unless score @s cg.aa40.delay matches 1.. if score @s cg.aa40.ammo matches 1.. run scoreboard players remove @s cg.aa40.ammo 1
execute if score @s cg.aa40.burst matches 1.. unless score @s cg.aa40.delay matches 1.. unless score @s cg.aa40.ammo matches 1.. run tag @s add cg.aa40.reload
execute if score @s cg.aa40.burst matches 1.. unless score @s cg.aa40.delay matches 1.. if score @s cg.aa40.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.aa40.burst matches 1.. unless score @s cg.aa40.delay matches 1.. run scoreboard players remove @s cg.aa40.burst 1
execute if score @s cg.aa40.burst matches 1.. unless score @s cg.aa40.delay matches 1.. if score @s cg.aa40.ammo matches 1.. run scoreboard players add @s cg.aa40.delay 1

execute if score @s cg.aa40.delay matches 1.. run scoreboard players remove @s cg.aa40.delay 1

execute if entity @s[tag=cg.aa40.reload] unless score @s cg.ammo_mid matches 1.. run scoreboard players reset @s cg.aa40.rld_timer
execute if entity @s[tag=cg.aa40.reload] unless score @s cg.ammo_mid matches 1.. run tag @s remove cg.aa40.reload

execute as @s[scores={cg.sneak=1..},tag=!cg.aa40.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.aa40.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"A-a40","color":"gold","bold":true,"italic":false}'},CustomModelData:6,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.aa40.ads

execute if entity @s[tag=cg.aa40.reload] run scoreboard players add @s cg.aa40.rld_timer 1
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 3 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.4 0
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 3 if score @s cg.aa40.ammo matches 1.. run scoreboard players set @s cg.aa40.ammo 1
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 3 unless score @s cg.aa40.ammo matches 1.. run scoreboard players set @s cg.aa40.ammo 0
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 23 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 42 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.5 0
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 42.. if score @s cg.ammo_mid matches ..31 run scoreboard players operation @s cg.aa40.ammo += @s cg.ammo_mid
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 42.. if score @s cg.ammo_mid matches ..31 run scoreboard players set @s cg.ammo_mid 0
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 42.. if score @s cg.ammo_mid matches 32.. run scoreboard players add @s cg.aa40.ammo 32
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 42.. if score @s cg.ammo_mid matches 32.. run scoreboard players remove @s cg.ammo_mid 32
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 42.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.aa40.reload] if score @s cg.aa40.rld_timer matches 42.. run tag @s remove cg.aa40.reload
execute if score @s cg.aa40.rld_timer matches 42.. run scoreboard players reset @s cg.aa40.rld_timer

execute if entity @s[tag=!cg.aa40.reload] run title @s actionbar [{"text":"","color":"gold"},{"text":"==== A-a40 "},{"score":{"name":"@s","objective":"cg.aa40.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" AT/BST \\__"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.aa40.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"==== A-a40 "},{"score":{"name":"@s","objective":"cg.aa40.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" RELOAD \\__"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]