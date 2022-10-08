execute unless predicate cg:select/charged run summon armor_stand ^ ^ ^ {Tags:["cg.bul.quickround","cg.bul","cg.bul_type.pistol","cg.bul_ammo.mid","cg.bul.frompillager"],Marker:1b,Small:1b,Invisible:1b}
execute unless predicate cg:select/charged run function cg:entity/shot_am
execute unless predicate cg:select/charged run function cg:entity/shot_am
execute unless predicate cg:select/charged run function cg:items/quickround/effect_shot
execute unless predicate cg:select/charged run item modify entity @s weapon cg:set_quickcharge