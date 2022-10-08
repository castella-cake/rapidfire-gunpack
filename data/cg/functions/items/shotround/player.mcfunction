execute if score @s cg.use matches 1.. if score @s cg.shotround.ammo matches 2.. if entity @s[tag=cg.shotround.reload] run scoreboard players reset @s cg.shotround.rld_timer
execute if score @s cg.use matches 1.. if score @s cg.shotround.ammo matches 2.. if entity @s[tag=cg.shotround.reload] run tag @s remove cg.shotround.reload
execute if score @s cg.use matches 1.. if score @s cg.shotround.ammo matches 1.. unless score @s cg.shotround.delay matches 1.. unless entity @s[tag=cg.shotround.reload] run function cg:items/spread/shotround
execute if score @s cg.use matches 1.. if score @s cg.shotround.ammo matches 1.. unless score @s cg.shotround.delay matches 1.. unless entity @s[tag=cg.shotround.reload] run function cg:items/shotround/se_shot
execute if score @s cg.use matches 1.. if score @s cg.shotround.ammo matches 1.. unless score @s cg.shotround.delay matches 1.. unless entity @s[tag=cg.shotround.reload] unless entity @s[tag=cg.shotround.ads] run tp @s ~ ~ ~ ~ ~-13
execute if score @s cg.use matches 1.. if score @s cg.shotround.ammo matches 1.. unless score @s cg.shotround.delay matches 1.. unless entity @s[tag=cg.shotround.reload] if entity @s[tag=cg.shotround.ads] run tp @s ~ ~ ~ ~ ~-8
execute if score @s cg.use matches 1.. if score @s cg.shotround.ammo matches 1.. unless score @s cg.shotround.delay matches 1.. unless entity @s[tag=cg.shotround.reload] run scoreboard players remove @s cg.shotround.ammo 1
execute if score @s cg.use matches 1.. if score @s cg.shotround.ammo matches 1.. unless score @s cg.shotround.delay matches 1.. unless entity @s[tag=cg.shotround.reload] run scoreboard players set @s cg.shotround.delay 18
execute if score @s cg.use matches 1.. unless score @s cg.shotround.ammo matches 1.. run tag @s add cg.shotround.reload

execute if score @s cg.shotround.delay matches 3 run playsound block.iron_door.open player @a ~ ~ ~ 1 1.3 0
execute if score @s cg.shotround.delay matches 3 run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 0.5 0
execute if score @s cg.shotround.delay matches 1 run playsound item.armor.equip_gold player @a ~ ~ ~ 1 1.5 0
execute if score @s cg.shotround.delay matches 1 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.5 0
execute if score @s cg.shotround.delay matches 1 run playsound item.armor.equip_generic player @a ~ ~ ~ 1 1.8 0
execute if score @s cg.shotround.delay matches 1 anchored eyes run particle block red_wool ^-1 ^ ^1 0 0 0 1 1
execute if score @s cg.shotround.delay matches 1 run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.shotround.delay matches 1.. run scoreboard players remove @s cg.shotround.delay 1

execute as @s[scores={cg.sneak=1..},tag=!cg.shotround.ads] at @s run playsound item.armor.equip_generic master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.shotround.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"ShotRound","color":"dark_red","bold":true,"italic":false}'},CustomModelData:31,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.shotround.ads

execute if entity @s[tag=cg.shotround.reload] unless score @s cg.ammo_sg matches 1.. run scoreboard players reset @s cg.shotround.rld_timer
execute if entity @s[tag=cg.shotround.reload] unless score @s cg.ammo_sg matches 1.. run tag @s remove cg.shotround.reload

execute if entity @s[tag=cg.shotround.reload] run scoreboard players add @s cg.shotround.rld_timer 1
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 10 unless score @s cg.shotround.ammo matches 4.. run playsound item.armor.equip_gold player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 10 unless score @s cg.shotround.ammo matches 4.. run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.4 0
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 10 unless score @s cg.shotround.ammo matches 4.. run playsound item.armor.equip_generic player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12 unless score @s cg.shotround.ammo matches 4.. run playsound block.calcite.break player @a ~ ~ ~ 0.6 1.4 0
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12 unless score @s cg.shotround.ammo matches 4.. run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12 unless score @s cg.shotround.ammo matches 4.. run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12 unless score @s cg.shotround.ammo matches 4.. run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 0.8 0
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12 unless score @s cg.shotround.ammo matches 4.. run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 1.3 0
# Old Sound
#execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12 if score @s cg.shotround.rld_timer matches 10 unless score @s cg.shotround.ammo matches 4.. run playsound item.armor.equip_gold player @a ~ ~ ~ 1 1.2 0
#execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12 unless score @s cg.shotround.ammo matches 4.. run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.5 0
#execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12 unless score @s cg.shotround.ammo matches 4.. run playsound item.armor.equip_generic player @a ~ ~ ~ 1 1.9 0
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12.. unless score @s cg.shotround.ammo matches 4.. run scoreboard players remove @s cg.ammo_sg 1
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12.. unless score @s cg.shotround.ammo matches 4.. run scoreboard players add @s cg.shotround.ammo 1
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.shotround.reload] if score @s cg.shotround.rld_timer matches 12.. if score @s cg.shotround.ammo matches 4.. run tag @s remove cg.shotround.reload
execute if score @s cg.shotround.rld_timer matches 12.. run scoreboard players reset @s cg.shotround.rld_timer

execute if entity @s[tag=!cg.shotround.reload] run title @s actionbar [{"text":"","color":"dark_red"},{"text":"--- ShotRound "},{"score":{"name":"@s","objective":"cg.shotround.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sg"},"color":"gray"},{"text":" SINGLE \\ \\__"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.shotround.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"--- ShotRound "},{"score":{"name":"@s","objective":"cg.shotround.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sg"},"color":"gray"},{"text":" RELOAD \\ \\__"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]