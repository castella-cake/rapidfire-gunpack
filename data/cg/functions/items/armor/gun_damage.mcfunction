summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Small:1b,Tags:["cg.armor.armorstand"]}
item replace entity @e[sort=nearest,limit=1,tag=cg.armor.armorstand] armor.chest from entity @s armor.chest
execute store result score @s cg.armor.damage run data get entity @e[sort=nearest,limit=1,tag=cg.armor.armorstand] ArmorItems[2].tag.Damage
execute store result entity @e[sort=nearest,limit=1,tag=cg.armor.armorstand] ArmorItems[2].tag.Damage int 1 unless predicate cg:select/golden_chestplate run scoreboard players operation @s cg.armor.damage += $dmgarmor_temp cg.dmgdisp_temp
execute store result entity @e[sort=nearest,limit=1,tag=cg.armor.armorstand] ArmorItems[2].tag.Damage int 1 if predicate cg:select/golden_chestplate run scoreboard players operation @s cg.armor.damage += $dmgarmorex_temp cg.dmgdisp_temp
function cg:items/armor/updatearmor
item replace entity @s armor.chest from entity @e[sort=nearest,limit=1,tag=cg.armor.armorstand] armor.chest
execute if score @s cg.armor.damage >= @s cg.armor.max at @s run function cg:items/armor/broke
playsound entity.blaze.hurt master @a ~ ~ ~ 1 2 0
kill @e[sort=nearest,limit=1,tag=cg.armor.armorstand]