execute as @s[predicate=cg:select/sag18,scores={cg.sneak=1..},tag=cg.sag18.ads] run attribute @s generic.movement_speed base set 0.05
execute as @s[scores={cg.sneak=..0},tag=cg.sag18.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 0.25 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.sag18.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/sag18,scores={cg.sneak=..0},tag=cg.sag18.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"SAG18","color":"gold","bold":true,"italic":false}'},CustomModelData:13,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.sag18.ads] run tag @s remove cg.sag18.ads