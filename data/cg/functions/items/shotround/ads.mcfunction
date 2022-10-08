execute as @s[predicate=cg:select/shotround,scores={cg.sneak=1..},tag=cg.shotround.ads] run attribute @s generic.movement_speed base set 0.08
execute as @s[scores={cg.sneak=..0},tag=cg.shotround.ads] at @s run playsound item.armor.equip_iron master @a ~ ~ ~ 0.25 2 0
execute as @s[scores={cg.sneak=..0},tag=cg.shotround.ads] run attribute @s generic.movement_speed base set 0.1
execute as @s[predicate=cg:select/shotround,scores={cg.sneak=..0},tag=cg.shotround.ads] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"ShotRound","color":"dark_red","bold":true,"italic":false}'},CustomModelData:10,Charged:1b}
execute as @s[scores={cg.sneak=..0},tag=cg.shotround.ads] run tag @s remove cg.shotround.ads