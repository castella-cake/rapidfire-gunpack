execute as @s[predicate=cg:select/fp5,scores={cg.sneak=1..},tag=cg.fp5.ads] run attribute @s generic.movement_speed base set 0.08
execute as @s[scores={cg.sneak=..0},tag=cg.fp5.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 0.25 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.fp5.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/fp5,scores={cg.sneak=..0},tag=cg.fp5.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"FP5","color":"blue","bold":true,"italic":false}'},CustomModelData:1,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.fp5.ads] run tag @s remove cg.fp5.ads