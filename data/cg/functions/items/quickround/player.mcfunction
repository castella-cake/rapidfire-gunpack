# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute if score @s cg.use matches 1.. if score @s cg.quickround.ammo matches 1.. unless score @s cg.quickround.delay matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.quickround","cg.bul","cg.bul_type.pistol","cg.bul_ammo.sml"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.use matches 1.. if score @s cg.quickround.ammo matches 1.. unless score @s cg.quickround.delay matches 1.. run function cg:shot_am
execute if score @s cg.use matches 1.. if score @s cg.quickround.ammo matches 1.. unless score @s cg.quickround.delay matches 1.. run function cg:items/quickround/effect_shot
execute if score @s cg.use matches 1.. if score @s cg.quickround.ammo matches 1.. unless score @s cg.quickround.delay matches 1.. run tp @s ~ ~ ~ ~ ~-4
execute if score @s cg.use matches 1.. if score @s cg.quickround.ammo matches 1.. unless score @s cg.quickround.delay matches 1.. if entity @s[tag=!cg.quickround.ads] run tp @s ~ ~ ~ ~ ~-8
execute if score @s cg.use matches 1.. if score @s cg.quickround.ammo matches 1.. unless score @s cg.quickround.delay matches 1.. run scoreboard players remove @s cg.quickround.ammo 1
execute if score @s cg.use matches 1.. if score @s cg.quickround.ammo matches 1.. unless score @s cg.quickround.delay matches 1.. run scoreboard players set @s cg.quickround.delay 7
execute if score @s cg.use matches 1.. unless score @s cg.quickround.ammo matches 1.. run tag @s add cg.quickround.reload


execute as @s[scores={cg.quickround.delay=1..}] run scoreboard players remove @s cg.quickround.delay 1
execute as @s[scores={cg.quickround.delay=1..2}] run item modify entity @s weapon.mainhand cg:crossbow_arrow

execute as @s[scores={cg.sneak=1..},tag=!cg.quickround.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 0.25 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.quickround.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"QuickRound","color":"blue","bold":true,"italic":false}'},CustomModelData:9,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.quickround.ads

execute if entity @s[tag=cg.quickround.reload] unless score @s cg.ammo_mid matches 1.. run scoreboard players reset @s cg.quickround.rld_timer
execute if entity @s[tag=cg.quickround.reload] unless score @s cg.ammo_mid matches 1.. run tag @s remove cg.quickround.reload

execute if entity @s[tag=cg.quickround.reload] run scoreboard players add @s cg.quickround.rld_timer 1
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 3 run playsound block.lever.click player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 3 run playsound item.armor.equip_generic player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 22 run playsound item.armor.equip_gold player @a ~ ~ ~ 1 1.1 0
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 28 run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 1.7 0
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 28 run scoreboard players set @s cg.quickround.ammo 0
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 41 run playsound item.armor.equip_gold player @a ~ ~ ~ 1 1.5 0
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 43 run playsound block.chain.break player @a ~ ~ ~ 1 1.5 0
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 45 run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 63 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 63.. if score @s cg.ammo_mid matches ..5 run scoreboard players operation @s cg.quickround.ammo += @s cg.ammo_mid
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 63.. if score @s cg.ammo_mid matches ..5 run scoreboard players set @s cg.ammo_mid 0
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 63.. if score @s cg.ammo_mid matches 6.. run scoreboard players add @s cg.quickround.ammo 6
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 63.. if score @s cg.ammo_mid matches 6.. run scoreboard players remove @s cg.ammo_mid 6
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 63.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.quickround.reload] if score @s cg.quickround.rld_timer matches 63.. run tag @s remove cg.quickround.reload
execute if score @s cg.quickround.rld_timer matches 63.. run scoreboard players reset @s cg.quickround.rld_timer

execute if entity @s[tag=!cg.quickround.reload] run title @s actionbar [{"text":"","color":"blue"},{"text":"=== QuickRound "},{"score":{"name":"@s","objective":"cg.quickround.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" SINGLE ￣\\ \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.quickround.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"=== QuickRound "},{"score":{"name":"@s","objective":"cg.quickround.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" RELOAD ￣\\ \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]