execute as @s[predicate=cg:select/ar50,scores={cg.sneak=1..},tag=cg.ar50.ads] run attribute @s generic.movement_speed base set 0.05
execute as @s[scores={cg.sneak=..0},tag=cg.ar50.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.ar50.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/ar50,scores={cg.sneak=..0},tag=cg.ar50.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"AR50","color":"gold","bold":true,"italic":false}'},CustomModelData:25,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.ar50.ads] run tag @s remove cg.ar50.ads