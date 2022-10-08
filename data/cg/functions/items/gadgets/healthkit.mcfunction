execute if score @s cg.use_gadget matches 1.. if score @s cg.healthkit.cd matches 100.. run effect give @s regeneration 3 2 true
execute if score @s cg.use_gadget matches 1.. if score @s cg.healthkit.cd matches 100.. run effect give @s resistance 3 1 true
execute if score @s cg.use_gadget matches 1.. if score @s cg.healthkit.cd matches 100.. run effect give @s saturation 3 1 true
execute if score @s cg.use_gadget matches 1.. if score @s cg.healthkit.cd matches 100.. run playsound item.armor.equip_netherite master @a ~ ~ ~ 1 2 0
execute if score @s cg.use_gadget matches 1.. if score @s cg.healthkit.cd matches 100.. run playsound block.iron_door.open master @a ~ ~ ~ 1 2 0
execute if score @s cg.use_gadget matches 1.. if score @s cg.healthkit.cd matches 100.. run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if score @s cg.use_gadget matches 1.. if score @s cg.healthkit.cd matches 100.. run playsound entity.generic.extinguish_fire master @a ~ ~ ~ 1 2 0
execute if score @s cg.use_gadget matches 1.. if score @s cg.healthkit.cd matches 100.. run scoreboard players set @s cg.healthkit.cd 0

execute if score @s cg.healthkit.cd matches 100.. run title @s actionbar [{"text":"","color":"white"},{"text":"+ Health Kit "},{"score":{"name":"@s","objective":"cg.healthkit.cd"},"color":"white"},{"text":"% +"}]
execute unless score @s cg.healthkit.cd matches 100.. run title @s actionbar [{"text":"","color":"red"},{"text":"+ Health Kit "},{"score":{"name":"@s","objective":"cg.healthkit.cd"},"color":"white"},{"text":"% +"}]