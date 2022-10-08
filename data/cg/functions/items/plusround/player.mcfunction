# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute if score @s cg.use matches 1.. if score @s cg.plusround.ammo matches 1.. unless score @s cg.plusround.delay matches 1.. run scoreboard players set @s cg.plusround.burst 2
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.burst matches 1.. run scoreboard players set @s cg.plusround.burst 0

execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. if score @s cg.plusround.ammo matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.plusround","cg.bul","cg.bul_type.ar","cg.bul_ammo.mid"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. if score @s cg.plusround.ammo matches 1.. run function cg:shot_am
execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. if score @s cg.plusround.ammo matches 1.. run function cg:items/plusround/se_shot
execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. if score @s cg.plusround.ammo matches 1.. if entity @s[tag=!cg.plusround.ads] run tp @s ~ ~ ~ ~ ~-2.8
execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. if score @s cg.plusround.ammo matches 1.. run function cg:items/recoil/plusround
execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. if score @s cg.plusround.ammo matches 1.. anchored eyes run particle block gold_block ^-0.2 ^ ^1 0 0 0 1 1
execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. if score @s cg.plusround.ammo matches 1.. run scoreboard players remove @s cg.plusround.ammo 1
execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. unless score @s cg.plusround.ammo matches 1.. run tag @s add cg.plusround.reload
execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. if score @s cg.plusround.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. run scoreboard players remove @s cg.plusround.burst 1
execute if score @s cg.plusround.burst matches 1.. unless score @s cg.plusround.delay matches 1.. if score @s cg.plusround.ammo matches 1.. run scoreboard players add @s cg.plusround.delay 2

execute if score @s cg.plusround.delay matches 1.. run scoreboard players remove @s cg.plusround.delay 1

execute as @s[scores={cg.sneak=1..},tag=!cg.plusround.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.plusround.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"PlusRound","color":"gold","bold":true,"italic":false}'},CustomModelData:3,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.plusround.ads


execute if entity @s[tag=cg.plusround.reload] unless score @s cg.ammo_mid matches 1.. run scoreboard players reset @s cg.plusround.rld_timer
execute if entity @s[tag=cg.plusround.reload] unless score @s cg.ammo_mid matches 1.. run tag @s remove cg.plusround.reload

execute if entity @s[tag=cg.plusround.reload] run scoreboard players add @s cg.plusround.rld_timer 1
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 3 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.0 0
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 3 if score @s cg.plusround.ammo matches 1.. run scoreboard players set @s cg.plusround.ammo 1
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 3 unless score @s cg.plusround.ammo matches 1.. run scoreboard players set @s cg.plusround.ammo 0
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 25 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 45 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 45.. if score @s cg.ammo_mid matches ..23 run scoreboard players operation @s cg.plusround.ammo += @s cg.ammo_mid
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 45.. if score @s cg.ammo_mid matches ..23 run scoreboard players set @s cg.ammo_mid 0
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 45.. if score @s cg.ammo_mid matches 24.. run scoreboard players add @s cg.plusround.ammo 24
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 45.. if score @s cg.ammo_mid matches 24.. run scoreboard players remove @s cg.ammo_mid 24
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 45.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.plusround.reload] if score @s cg.plusround.rld_timer matches 45.. run tag @s remove cg.plusround.reload
execute if score @s cg.plusround.rld_timer matches 45.. run scoreboard players reset @s cg.plusround.rld_timer

execute if entity @s[tag=!cg.plusround.reload] run title @s actionbar [{"text":"","color":"gold"},{"text":"=// PlusRound "},{"score":{"name":"@s","objective":"cg.plusround.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" AT/BST //"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.plusround.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"=// PlusRound "},{"score":{"name":"@s","objective":"cg.plusround.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" RELOAD //"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]