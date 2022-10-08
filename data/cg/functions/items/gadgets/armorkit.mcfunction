execute if score @s cg.sneak matches 1.. if score @s cg.armorkit.cd matches 100.. run scoreboard players add @s cg.armorkit.use_timer 2
execute if score @s cg.sneak matches 1.. if score @s cg.armorkit.cd matches 100.. if predicate cg:select/body_armor_lv1 run scoreboard players add @s cg.armorkit.use_timer 1
execute if score @s cg.sneak matches 1.. if score @s cg.armorkit.cd matches 100.. if predicate cg:select/body_armor_lvex run scoreboard players add @s cg.armorkit.use_timer 2
execute if score @s cg.armorkit.use_timer matches 1.. unless score @s cg.sneak matches 1.. run scoreboard players reset @s cg.armorkit.use_timer
execute if score @s cg.armorkit.use_timer matches 30 if score @s cg.armorkit.cd matches 100.. run playsound item.spyglass.use master @a ~ ~ ~ 1 0.8 0
execute if score @s cg.armorkit.use_timer matches 60 if score @s cg.armorkit.cd matches 100.. run playsound item.spyglass.use master @a ~ ~ ~ 1 0.8 0
execute if score @s cg.armorkit.use_timer matches 90 if score @s cg.armorkit.cd matches 100.. run playsound block.anvil.place master @a ~ ~ ~ 1 2 0
execute if score @s cg.armorkit.use_timer matches 95 if score @s cg.armorkit.cd matches 100.. run playsound block.anvil.place master @a ~ ~ ~ 1 2 0
execute if score @s cg.armorkit.use_timer matches 100.. if score @s cg.armorkit.cd matches 100.. run scoreboard players set @s cg.armor.value -200
execute if score @s cg.armorkit.use_timer matches 100.. if score @s cg.armorkit.cd matches 100.. if predicate cg:select/golden_chestplate run scoreboard players set @s cg.armor.value -112
execute if score @s cg.armorkit.use_timer matches 100.. if score @s cg.armorkit.cd matches 100.. run function cg:items/armor/add
execute if score @s cg.armorkit.use_timer matches 100.. if score @s cg.armorkit.cd matches 100.. run playsound item.armor.equip_netherite master @a ~ ~ ~ 1 2 0
execute if score @s cg.armorkit.use_timer matches 100.. if score @s cg.armorkit.cd matches 100.. run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if score @s cg.armorkit.use_timer matches 100.. if score @s cg.armorkit.cd matches 100.. run playsound block.anvil.use master @a ~ ~ ~ 1 2 0
execute if score @s cg.armorkit.use_timer matches 100.. if score @s cg.armorkit.cd matches 100.. run scoreboard players set @s cg.armorkit.cd 0
execute if score @s cg.armorkit.use_timer matches 100.. run scoreboard players set @s cg.armorkit.use_timer 0

execute if score @s cg.armorkit.cd matches 100.. if score @s cg.armorkit.use_timer matches 1.. run title @s actionbar [{"text":"","color":"aqua"},{"text":"+ ArmorKit REPAIRING "},{"score":{"name":"@s","objective":"cg.armorkit.use_timer"},"color":"white"},{"text":"% +"}]
execute if score @s cg.armorkit.cd matches 100.. unless score @s cg.armorkit.use_timer matches 1.. run title @s actionbar [{"text":"","color":"white"},{"text":"+ ArmorKit READY +"}]
execute unless score @s cg.armorkit.cd matches 100.. unless score @s cg.armorkit.use_timer matches 1.. run title @s actionbar [{"text":"","color":"red"},{"text":"+ ArmorKit CHARGE "},{"score":{"name":"@s","objective":"cg.armorkit.cd"},"color":"white"},{"text":"% +"}]