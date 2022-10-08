execute as @s[predicate=cg:select/lmr,scores={cg.sneak=1..},tag=cg.lmr.ads] run attribute @s generic.movement_speed base set 0.08
execute as @s[scores={cg.sneak=..0},tag=cg.lmr.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.lmr.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/lmr,scores={cg.sneak=..0},tag=cg.lmr.ads,tag=cg.lmr.bipod] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"LMR","color":"dark_green","bold":true,"italic":false}'},CustomModelData:22,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.lmr.ads] run tag @s remove cg.lmr.ads