execute as @s[predicate=cg:select/aa40,scores={cg.sneak=1..},tag=cg.aa40.ads] run attribute @s generic.movement_speed base set 0.08
execute as @s[scores={cg.sneak=..0},tag=cg.aa40.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.aa40.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/aa40,scores={cg.sneak=..0},tag=cg.aa40.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"A-a40","color":"gold","bold":true,"italic":false}'},CustomModelData:5,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.aa40.ads] run tag @s remove cg.aa40.ads