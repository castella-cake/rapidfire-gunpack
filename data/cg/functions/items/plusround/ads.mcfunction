execute as @s[predicate=cg:select/plusround,scores={cg.sneak=1..},tag=cg.plusround.ads] run attribute @s generic.movement_speed base set 0.05
execute as @s[scores={cg.sneak=..0},tag=cg.plusround.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 1 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.plusround.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/plusround,scores={cg.sneak=..0},tag=cg.plusround.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"PlusRound","color":"gold","bold":true,"italic":false}'},CustomModelData:2,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.plusround.ads] run tag @s remove cg.plusround.ads