item replace entity @s weapon.offhand with air
execute at @s run playsound block.lever.click master @a ~ ~ ~ 1 1.5 0

execute if score @s cg.pb21.mode matches 0 run scoreboard players set @s cg.offhand_temp 1
execute if score @s cg.pb21.mode matches 1 run scoreboard players set @s cg.offhand_temp 2


item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"PB-21","color":"gold","bold":true,"italic":false}'},CustomModelData:32,Charged:1b}
execute if score @s cg.offhand_temp matches 1 run scoreboard players set @s cg.pb21.mode 1
execute if score @s cg.offhand_temp matches 2 run scoreboard players set @s cg.pb21.mode 0