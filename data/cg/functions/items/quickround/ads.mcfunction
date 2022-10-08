execute as @s[predicate=cg:select/quickround,scores={cg.sneak=1..},tag=cg.quickround.ads] run attribute @s generic.movement_speed base set 0.05
execute as @s[scores={cg.sneak=..0},tag=cg.quickround.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 0.25 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.quickround.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/quickround,scores={cg.sneak=..0},tag=cg.quickround.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"QuickRound","color":"blue","bold":true,"italic":false}'},CustomModelData:8,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.quickround.ads] run tag @s remove cg.quickround.ads