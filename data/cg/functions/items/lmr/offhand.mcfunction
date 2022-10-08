item replace entity @s weapon.offhand with air
execute at @s run playsound item.armor.equip_netherite master @a ~ ~ ~ 1 1.5 0

execute if entity @s[tag=!cg.lmr.bipod] run scoreboard players set @s cg.offhand_temp 1
execute if entity @s[tag=cg.lmr.bipod] run scoreboard players set @s cg.offhand_temp 2
     
execute if score @s cg.offhand_temp matches 1 run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"LMR","color":"dark_green","bold":true,"italic":false}'},CustomModelData:22,Charged:1b}
execute if score @s cg.offhand_temp matches 2 run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"LMR","color":"dark_green","bold":true,"italic":false}'},CustomModelData:21,Charged:1b}
execute if score @s cg.offhand_temp matches 1 run tag @s add cg.lmr.bipod
execute if score @s cg.offhand_temp matches 2 run tag @s remove cg.lmr.bipod