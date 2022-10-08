execute as @s[predicate=cg:select/pb21,scores={cg.sneak=1..},tag=cg.pb21.ads] run attribute @s generic.movement_speed base set 0.05
execute as @s[scores={cg.sneak=..0},tag=cg.pb21.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.pb21.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/pb21,scores={cg.sneak=..0},tag=cg.pb21.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"PB-21","color":"gold","bold":true,"italic":false}'},CustomModelData:32,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.pb21.ads] run tag @s remove cg.pb21.ads