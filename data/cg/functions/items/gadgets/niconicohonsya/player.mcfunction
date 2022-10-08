# ammo type
# small = 0
# medium = 1
# large = 2
# shotgun = 3
# battery = 4
scoreboard players set @s cg.current_ammo 0

execute if entity @s[tag=!cg.niconicohonsya.reload] if score @s cg.use_gadget matches 1.. if score @s cg.niconicohonsya.ammo matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.niconicohonsya","cg.bul"],Marker:1b,Small:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:2}}]}
execute if entity @s[tag=!cg.niconicohonsya.reload] if score @s cg.use_gadget matches 1.. if score @s cg.niconicohonsya.ammo matches 1.. run function cg:shot_am
execute if entity @s[tag=!cg.niconicohonsya.reload] if score @s cg.use_gadget matches 1.. if score @s cg.niconicohonsya.ammo matches 1.. run function cg:items/gadgets/niconicohonsya/se_shot
execute if entity @s[tag=!cg.niconicohonsya.reload] if score @s cg.use_gadget matches 1.. if score @s cg.niconicohonsya.ammo matches 1.. run scoreboard players remove @s cg.niconicohonsya.ammo 1
execute if entity @s[tag=!cg.niconicohonsya.reload] if score @s cg.use_gadget matches 1.. unless score @s cg.niconicohonsya.ammo matches 1.. run tag @s add cg.niconicohonsya.reload

execute if entity @s[tag=cg.niconicohonsya.reload] run scoreboard players add @s cg.niconicohonsya.rld_timer 10
execute if entity @s[tag=cg.niconicohonsya.reload] if score @s cg.niconicohonsya.rld_timer matches 20 run scoreboard players set @s cg.niconicohonsya.ammo 1
execute if entity @s[tag=cg.niconicohonsya.reload] if score @s cg.niconicohonsya.rld_timer matches 20 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.2 0
execute if entity @s[tag=cg.niconicohonsya.reload] if score @s cg.niconicohonsya.rld_timer matches 20.. run tag @s remove cg.niconicohonsya.reload
execute if score @s cg.niconicohonsya.rld_timer matches 20.. run scoreboard players reset @s cg.niconicohonsya.rld_timer

execute if entity @s[tag=!cg.niconicohonsya.reload] run title @s actionbar [{"text":"","color":"#ff0000"},{"text":"-| NCO-HS.G1 \"NiconicoHonsya Grenade\" "},{"score":{"name":"@s","objective":"cg.niconicohonsya.ammo"},"color":"white"},{"text":" READY |-"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]
execute if entity @s[tag=cg.niconicohonsya.reload] run title @s actionbar [{"text":"","color":"gray"},{"text":"-| NCO-HS.G1 \"NiconicoHonsya Grenade\" "},{"score":{"name":"@s","objective":"cg.niconicohonsya.ammo"},"color":"white"},{"text":" RELOAD |-"},{"nbt":"text","storage":"cg:actionbar","interpret":true}]