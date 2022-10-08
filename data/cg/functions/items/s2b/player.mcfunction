# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 3

execute if score @s cg.use matches 1.. if score @s cg.s2b.ammo matches 1.. unless score @s cg.s2b.delay matches 1.. run function cg:items/spread/s2b
execute if score @s cg.use matches 1.. if score @s cg.s2b.ammo matches 1.. unless score @s cg.s2b.delay matches 1.. run function cg:items/s2b/se_shot
execute if score @s cg.use matches 1.. if score @s cg.s2b.ammo matches 1.. unless score @s cg.s2b.delay matches 1.. run tp @s ~ ~ ~ ~ ~-5
execute if score @s cg.use matches 1.. if score @s cg.s2b.ammo matches 1.. unless score @s cg.s2b.delay matches 1.. run scoreboard players remove @s cg.s2b.ammo 1
execute if score @s cg.use matches 1.. if score @s cg.s2b.ammo matches 1.. unless score @s cg.s2b.delay matches 1.. run scoreboard players set @s cg.s2b.delay 20
execute if score @s cg.use matches 1.. unless score @s cg.s2b.ammo matches 1.. run tag @s add cg.s2b.reload
execute if score @s cg.use matches 1.. if score @s cg.s2b.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow

execute if score @s cg.s2b.delay matches 1.. run scoreboard players remove @s cg.s2b.delay 1

execute if entity @s[tag=cg.s2b.reload] unless score @s cg.ammo_epic_lge matches 1.. run scoreboard players reset @s cg.s2b.rld_timer
execute if entity @s[tag=cg.s2b.reload] unless score @s cg.ammo_epic_lge matches 1.. run tag @s remove cg.s2b.reload

execute if entity @s[tag=cg.s2b.reload] run scoreboard players add @s cg.s2b.rld_timer 1
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 3 run playsound block.iron_door.open player @a ~ ~ ~ 1 1.1 0
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 18 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.9 0
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 18 run scoreboard players set @s cg.s2b.ammo 0
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 38 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 38 run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 0.8 0
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 55 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.3 0
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 55.. if score @s cg.ammo_epic_lge matches 1 run scoreboard players add @s cg.s2b.ammo 1
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 55.. if score @s cg.ammo_epic_lge matches 1 run scoreboard players remove @s cg.ammo_epic_lge 1
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 55.. if score @s cg.ammo_epic_lge matches 2.. run scoreboard players add @s cg.s2b.ammo 2
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 55.. if score @s cg.ammo_epic_lge matches 2.. run scoreboard players remove @s cg.ammo_epic_lge 2
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 55.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.s2b.reload] if score @s cg.s2b.rld_timer matches 55.. run tag @s remove cg.s2b.reload
execute if score @s cg.s2b.rld_timer matches 55.. run scoreboard players reset @s cg.s2b.rld_timer

execute if entity @s[tag=!cg.s2b.reload] run title @s actionbar [{"text":"","color":"dark_red"},{"text":"=== S2B "},{"score":{"name":"@s","objective":"cg.s2b.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_epic_lge"},"color":"gray"},{"text":" SINGLE \\\\=="},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.s2b.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"=== S2B "},{"score":{"name":"@s","objective":"cg.s2b.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_epic_lge"},"color":"gray"},{"text":" RELOAD \\\\=="},{"nbt":"text","storage":"cg:actionbar","interpret":true}]