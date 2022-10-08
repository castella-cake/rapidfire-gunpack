execute as @s[predicate=cg:select/primer,scores={cg.sneak=1..},tag=cg.primer.ads] run attribute @s generic.movement_speed base set 0.025
execute as @s[scores={cg.sneak=..0},tag=cg.primer.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 0.25 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.primer.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/primer,scores={cg.sneak=..0},tag=cg.primer.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"Primer","color":"dark_aqua","bold":true,"italic":false}'},CustomModelData:11,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.primer.ads] run tag @s remove cg.primer.ads