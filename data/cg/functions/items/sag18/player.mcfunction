# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute if entity @s[tag=!cg.sag18.reload] if score @s cg.use matches 1.. if score @s cg.sag18.ammo matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.sag18","cg.bul","cg.bul_type.ar","cg.bul_ammo.mid"],Marker:1b,Small:1b,Invisible:1b}
execute if entity @s[tag=!cg.sag18.reload] if score @s cg.use matches 1.. if score @s cg.sag18.ammo matches 1.. run function cg:shot_am
execute if entity @s[tag=!cg.sag18.reload] if score @s cg.use matches 1.. if score @s cg.sag18.ammo matches 1.. run function cg:items/sag18/se_shot
execute if entity @s[tag=!cg.sag18.reload] if score @s cg.use matches 1.. if score @s cg.sag18.ammo matches 1.. run tp @s ~ ~ ~ ~ ~-3
execute if entity @s[tag=!cg.sag18.reload] if score @s cg.use matches 1.. if score @s cg.sag18.ammo matches 1.. run scoreboard players remove @s cg.sag18.ammo 1
execute if entity @s[tag=!cg.sag18.reload] if score @s cg.use matches 1.. unless score @s cg.sag18.ammo matches 1.. run tag @s add cg.sag18.reload
execute if entity @s[tag=!cg.sag18.reload] if score @s cg.use matches 1.. if score @s cg.sag18.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow

execute as @s[scores={cg.sneak=1..},tag=!cg.sag18.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.sag18.ads] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"SAG18","color":"gold","bold":true,"italic":false}'},CustomModelData:14,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.sag18.ads

execute if entity @s[tag=cg.sag18.reload] unless score @s cg.ammo_mid matches 1.. run scoreboard players reset @s cg.sag18.rld_timer
execute if entity @s[tag=cg.sag18.reload] unless score @s cg.ammo_mid matches 1.. run tag @s remove cg.sag18.reload

execute if entity @s[tag=cg.sag18.reload] run scoreboard players add @s cg.sag18.rld_timer 1
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 1 run playsound block.iron_door.open player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 3 run playsound block.chain.break player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 3 anchored eyes run particle block gold_block ^-0.2 ^ ^1 0 0 0 1 1
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 3 run scoreboard players set @s cg.sag18.ammo 0
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 18 run playsound item.armor.equip_iron player @a ~ ~ ~ 1 1.0 0
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 18 run playsound item.armor.equip_gold player @a ~ ~ ~ 1 1.3 0
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 18 run playsound item.crossbow.loading_end player @a ~ ~ ~ 1 0.9 0
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 18 if score @s cg.ammo_mid matches 1.. run scoreboard players add @s cg.sag18.ammo 1
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 18 if score @s cg.ammo_mid matches 1.. run scoreboard players remove @s cg.ammo_mid 1
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 35 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.6 0
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 35.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.sag18.reload] if score @s cg.sag18.rld_timer matches 35.. run tag @s remove cg.sag18.reload
execute if score @s cg.sag18.rld_timer matches 35.. run scoreboard players reset @s cg.sag18.rld_timer

execute if entity @s[tag=!cg.sag18.reload] run title @s actionbar [{"text":"","color":"gold"},{"text":"---- SAG18 "},{"score":{"name":"@s","objective":"cg.sag18.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" SINGLE \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.sag18.reload] run title @s actionbar [{"text":"","color":"red"},{"text":"---- SAG18 "},{"score":{"name":"@s","objective":"cg.sag18.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" RELOAD \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]