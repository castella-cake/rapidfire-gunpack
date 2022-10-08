execute if score @s cg.use matches 1.. if score @s cg.hammershot.ammo matches 1.. unless score @s cg.hammershot.burst matches 1.. unless score @s cg.hammershot.delay matches 1.. run scoreboard players set @s cg.hammershot.burst 1
execute if score @s cg.use matches 1.. if score @s cg.hammershot.ammo matches 1.. run scoreboard players add @s cg.hammershot.delay 2
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.burst matches 1.. run scoreboard players set @s cg.hammershot.burst 0

execute if score @s cg.hammershot.burst matches 1.. if score @s cg.hammershot.ammo matches 1.. run function cg:items/spread/hammershot
execute if score @s cg.hammershot.burst matches 1.. if score @s cg.hammershot.ammo matches 1.. run function cg:items/hammershot/effect_shot
execute if score @s cg.hammershot.burst matches 1.. if score @s cg.hammershot.ammo matches 1.. run tp @s[tag=cg.hammershot.ads] ~ ~ ~ ~ ~-3
execute if score @s cg.hammershot.burst matches 1.. if score @s cg.hammershot.ammo matches 1.. run tp @s[tag=!cg.hammershot.ads] ~ ~ ~ ~ ~-5
execute if score @s cg.hammershot.burst matches 1.. if score @s cg.hammershot.ammo matches 1.. anchored eyes run particle block red_wool ^-0.6 ^ ^0.8 0 0 0 1 1
execute if score @s cg.hammershot.burst matches 1.. if score @s cg.hammershot.ammo matches 1.. run scoreboard players remove @s cg.hammershot.ammo 1
execute if score @s cg.hammershot.burst matches 1.. unless score @s cg.hammershot.ammo matches 1.. run tag @s add cg.hammershot.reload
execute if score @s cg.hammershot.burst matches 1.. if score @s cg.hammershot.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.hammershot.burst matches 1.. run scoreboard players remove @s cg.hammershot.burst 1

execute if score @s cg.hammershot.delay matches 1.. run scoreboard players remove @s cg.hammershot.delay 1

execute as @s[scores={cg.sneak=1..},tag=!cg.hammershot.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.hammershot.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"HammerShot","color":"dark_red","bold":true,"italic":false}'},CustomModelData:16,Charged:1b}
execute as @s[scores={cg.sneak=1..},tag=!cg.hammershot.ads,tag=cg.hammershot.attachment.scope.holo] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"HammerShot","color":"dark_red","bold":true,"italic":false}'},CustomModelData:18,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.hammershot.ads


execute if entity @s[tag=cg.hammershot.reload] unless score @s cg.ammo_sg matches 1.. run scoreboard players reset @s cg.hammershot.rld_timer
execute if entity @s[tag=cg.hammershot.reload] unless score @s cg.ammo_sg matches 1.. run tag @s remove cg.hammershot.reload

execute if entity @s[tag=cg.hammershot.reload] run scoreboard players add @s cg.hammershot.rld_timer 1
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 3 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 3 run playsound item.armor.equip_gold player @a ~ ~ ~ 1 1.3 0
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 3 if score @s cg.hammershot.ammo matches 1.. run scoreboard players set @s cg.hammershot.ammo 1
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 3 unless score @s cg.hammershot.ammo matches 1.. run scoreboard players set @s cg.hammershot.ammo 0
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 18 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.5 0
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 3 run playsound item.armor.equip_gold player @a ~ ~ ~ 1 1.1 0
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 38 run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 38 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.5 0
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 38 run playsound block.iron_door.close player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 38.. if score @s cg.ammo_sg matches ..7 run scoreboard players operation @s cg.hammershot.ammo += @s cg.ammo_sg
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 38.. if score @s cg.ammo_sg matches ..7 run scoreboard players operation @s cg.hammershot.ammo *= $static_2x cg.config
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 38.. if score @s cg.ammo_sg matches ..7 run scoreboard players set @s cg.ammo_sg 0
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 38.. if score @s cg.ammo_sg matches 8.. run scoreboard players add @s cg.hammershot.ammo 16
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 38.. if score @s cg.ammo_sg matches 8.. run scoreboard players remove @s cg.ammo_sg 8
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 38.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.hammershot.reload] if score @s cg.hammershot.rld_timer matches 38.. run tag @s remove cg.hammershot.reload
execute if score @s cg.hammershot.rld_timer matches 38.. run scoreboard players reset @s cg.hammershot.rld_timer

execute if entity @s[tag=!cg.hammershot.reload] run title @s actionbar [{"text":"","color":"dark_red"},{"text":"===\\ HammerShot "},{"score":{"name":"@s","objective":"cg.hammershot.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sg"},"color":"gray"},{"text":" AUTOMA | |  \\ \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.hammershot.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"===\\ HammerShot "},{"score":{"name":"@s","objective":"cg.hammershot.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_sg"},"color":"gray"},{"text":" RELOAD | |  \\ \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]