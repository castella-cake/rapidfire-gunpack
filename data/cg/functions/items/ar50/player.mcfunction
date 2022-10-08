# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute unless predicate cg:select/charged unless entity @s[tag=cg.ar50.reload] unless score @s cg.ar50.delay matches 1.. unless score @s cg.ar50.burst matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow

execute if score @s cg.use matches 1.. if score @s cg.ar50.ammo matches 1.. unless score @s cg.ar50.delay matches 1.. run scoreboard players set @s cg.ar50.burst 3
#execute if score @s cg.use matches 1.. if score @s cg.ar50.ammo matches 1.. unless score @s cg.ar50.delay matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.use matches 1.. if score @s cg.ar50.ammo matches 1.. unless score @s cg.ar50.delay matches 1.. run scoreboard players add @s cg.ar50.delay 6
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.burst matches 1.. run scoreboard players set @s cg.ar50.burst 0

execute if score @s cg.ar50.burst matches 1.. if score @s cg.ar50.ammo matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.ar50","cg.bul","cg.bul_type.ar","cg.bul_ammo.mid"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.ar50.burst matches 1.. if score @s cg.ar50.ammo matches 1.. run function cg:shot_am
execute if score @s cg.ar50.burst matches 1.. if score @s cg.ar50.ammo matches 1.. run function cg:items/ar50/se_shot
execute if score @s cg.ar50.burst matches 1.. if score @s cg.ar50.ammo matches 1.. if entity @s[tag=!cg.ar50.ads] run tp @s ~ ~ ~ ~ ~-2.8
execute if score @s cg.ar50.burst matches 1.. if score @s cg.ar50.ammo matches 1.. run function cg:items/recoil/ar50
execute if score @s cg.ar50.burst matches 1.. if score @s cg.ar50.ammo matches 1.. anchored eyes run particle block gold_block ^-0.2 ^ ^1 0 0 0 1 1
execute if score @s cg.ar50.burst matches 1.. if score @s cg.ar50.ammo matches 1.. run scoreboard players remove @s cg.ar50.ammo 1
execute if score @s cg.ar50.burst matches 1.. unless score @s cg.ar50.ammo matches 1.. run tag @s add cg.ar50.reload
#execute if score @s cg.ar50.burst matches 1.. unless score @s cg.ar50.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.ar50.burst matches 1.. run scoreboard players remove @s cg.ar50.burst 1

execute if score @s cg.ar50.delay matches 1.. run scoreboard players remove @s cg.ar50.delay 1

execute as @s[scores={cg.sneak=1..},tag=!cg.ar50.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.ar50.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"AR50","color":"gold","bold":true,"italic":false}'},CustomModelData:26,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.ar50.ads


execute if entity @s[tag=cg.ar50.reload] unless score @s cg.ammo_mid matches 1.. run scoreboard players reset @s cg.ar50.rld_timer
execute if entity @s[tag=cg.ar50.reload] unless score @s cg.ammo_mid matches 1.. run tag @s remove cg.ar50.reload

execute if entity @s[tag=cg.ar50.reload] run scoreboard players add @s cg.ar50.rld_timer 1
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 3 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 3 if score @s cg.ar50.ammo matches 1.. run scoreboard players set @s cg.ar50.ammo 1
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 3 unless score @s cg.ar50.ammo matches 1.. run scoreboard players set @s cg.ar50.ammo 0
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 28 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 48 run playsound block.iron_door.close player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 48.. if score @s cg.ammo_mid matches ..20 run scoreboard players operation @s cg.ar50.ammo += @s cg.ammo_mid
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 48.. if score @s cg.ammo_mid matches ..20 run scoreboard players set @s cg.ammo_mid 0
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 48.. if score @s cg.ammo_mid matches 21.. run scoreboard players add @s cg.ar50.ammo 21
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 48.. if score @s cg.ammo_mid matches 21.. run scoreboard players remove @s cg.ammo_mid 21
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 48.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.ar50.reload] if score @s cg.ar50.rld_timer matches 48.. run tag @s remove cg.ar50.reload
execute if score @s cg.ar50.rld_timer matches 48.. run scoreboard players reset @s cg.ar50.rld_timer

execute if entity @s[tag=!cg.ar50.reload] run title @s actionbar [{"text":"","color":"gold"},{"text":"==== AR50 "},{"score":{"name":"@s","objective":"cg.ar50.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" BST \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.ar50.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"==== AR50 "},{"score":{"name":"@s","objective":"cg.ar50.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" RLD \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]