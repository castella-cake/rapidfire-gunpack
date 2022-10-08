# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 1

execute if score @s cg.use matches 1.. if score @s cg.lmr.ammo matches 1.. unless score @s cg.lmr.delay matches 1.. run scoreboard players set @s cg.lmr.burst 2
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.burst matches 1.. run scoreboard players set @s cg.lmr.burst 0

execute if score @s cg.lmr.burst matches 1.. unless score @s cg.lmr.delay matches 1.. if score @s cg.lmr.ammo matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.lmr","cg.bul","cg.bul_type.lmg","cg.bul_ammo.mid"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.lmr.burst matches 1.. unless score @s cg.lmr.delay matches 1.. if score @s cg.lmr.ammo matches 1.. run function cg:shot_am
execute if score @s cg.lmr.burst matches 1.. unless score @s cg.lmr.delay matches 1.. if score @s cg.lmr.ammo matches 1.. run function cg:items/lmr/se_shot
execute if score @s cg.lmr.burst matches 1.. unless score @s cg.lmr.delay matches 1.. if score @s cg.lmr.ammo matches 1.. run function cg:items/recoil/lmr
execute if score @s cg.lmr.burst matches 1.. unless score @s cg.lmr.delay matches 1.. if score @s cg.lmr.ammo matches 1.. anchored eyes run particle block gold_block ^-0.2 ^ ^1 0 0 0 1 1
execute if score @s cg.lmr.burst matches 1.. unless score @s cg.lmr.delay matches 1.. if score @s cg.lmr.ammo matches 1.. run scoreboard players remove @s cg.lmr.ammo 1
execute if score @s cg.lmr.burst matches 1.. unless score @s cg.lmr.delay matches 1.. unless score @s cg.lmr.ammo matches 1.. run tag @s add cg.lmr.reload
execute if score @s cg.lmr.burst matches 1.. unless score @s cg.lmr.delay matches 1.. if score @s cg.lmr.ammo matches 1.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if score @s cg.lmr.burst matches 1.. unless score @s cg.lmr.delay matches 1.. run scoreboard players remove @s cg.lmr.burst 1
execute if score @s cg.lmr.burst matches 1.. unless score @s cg.lmr.delay matches 1.. if score @s cg.lmr.ammo matches 1.. run scoreboard players add @s cg.lmr.delay 2

execute if score @s cg.lmr.delay matches 1.. run scoreboard players remove @s cg.lmr.delay 1

execute as @s[scores={cg.sneak=1..},tag=!cg.lmr.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=1..},tag=!cg.lmr.ads,tag=cg.lmr.bipod] at @s run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"LMR","color":"dark_green","bold":true,"italic":false}'},CustomModelData:23,Charged:1b}
execute as @s[scores={cg.sneak=1..}] run tag @s add cg.lmr.ads

execute as @s[tag=cg.lmr.bipod] run effect give @s slowness 1 3 true

execute if entity @s[tag=cg.lmr.reload] unless score @s cg.ammo_mid matches 1.. run scoreboard players reset @s cg.lmr.rld_timer
execute if entity @s[tag=cg.lmr.reload] unless score @s cg.ammo_mid matches 1.. run tag @s remove cg.lmr.reload

execute if entity @s[tag=cg.lmr.reload] run scoreboard players add @s cg.lmr.rld_timer 1
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 3 run playsound block.iron_door.open player @a ~ ~ ~ 1 1.5 0
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 22 run playsound block.chain.break player @a ~ ~ ~ 1 1 0
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 22 if score @s cg.lmr.ammo matches 1.. run scoreboard players set @s cg.lmr.ammo 1
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 22 unless score @s cg.lmr.ammo matches 1.. run scoreboard players set @s cg.lmr.ammo 0
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 46 run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.8 0
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 70 run playsound block.chain.break player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 90 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.3 0
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 110 run playsound block.iron_door.open player @a ~ ~ ~ 1 2 0
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 110.. if score @s cg.ammo_mid matches ..63 run scoreboard players operation @s cg.lmr.ammo += @s cg.ammo_mid
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 110.. if score @s cg.ammo_mid matches ..63 run scoreboard players set @s cg.ammo_mid 0
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 110.. if score @s cg.ammo_mid matches 64.. run scoreboard players add @s cg.lmr.ammo 64
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 110.. if score @s cg.ammo_mid matches 64.. run scoreboard players remove @s cg.ammo_mid 64
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 110.. run item modify entity @s weapon.mainhand cg:crossbow_arrow
execute if entity @s[tag=cg.lmr.reload] if score @s cg.lmr.rld_timer matches 110.. run tag @s remove cg.lmr.reload
execute if score @s cg.lmr.rld_timer matches 110.. run scoreboard players reset @s cg.lmr.rld_timer

execute if entity @s[tag=!cg.lmr.reload,tag=!cg.lmr.bipod] run title @s actionbar [{"text":"","color":"dark_green"},{"text":"----| LMR "},{"score":{"name":"@s","objective":"cg.lmr.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" AT/BST \\__"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=!cg.lmr.reload,tag=cg.lmr.bipod] run title @s actionbar [{"text":"","color":"dark_green"},{"text":"/ ----| LMR "},{"score":{"name":"@s","objective":"cg.lmr.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" AT/BST \\__ \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.lmr.reload,tag=!cg.lmr.bipod] run title @s actionbar [{"text":"","color":"red"},{"text":"----| LMR "},{"score":{"name":"@s","objective":"cg.lmr.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" RELOAD \\__"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.lmr.reload,tag=cg.lmr.bipod] run title @s actionbar [{"text":"","color":"red"},{"text":"/ ----| LMR "},{"score":{"name":"@s","objective":"cg.lmr.ammo"},"color":"white"},{"text":" / "},{"score":{"name":"@s","objective":"cg.ammo_mid"},"color":"gray"},{"text":" RELOAD \\__ \\"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]