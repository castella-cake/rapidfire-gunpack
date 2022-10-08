execute as @s[predicate=cg:select/pgi10,scores={cg.sneak=1..},tag=cg.pgi10.ads] run attribute @s generic.movement_speed base set 0.08
execute as @s[scores={cg.sneak=..0},tag=cg.pgi10.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.pgi10.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/pgi10,scores={cg.sneak=..0},tag=cg.pgi10.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"PGI-10","color":"aqua","bold":true,"italic":false}'},CustomModelData:19,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.pgi10.ads] run tag @s remove cg.pgi10.ads