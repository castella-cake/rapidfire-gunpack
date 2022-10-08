execute if score @s cg.pillager.random_timer matches 1.. if entity @e[type=#cg:pillager_withoutplayer,distance=..30] if predicate cg:random/0_1 unless score @s cg.pillager.burst matches 1.. run scoreboard players set @s cg.pillager.burst 3
execute if score @s cg.pillager.random_timer matches 1.. if entity @e[type=player,distance=..30,gamemode=!creative,gamemode=!spectator] if predicate cg:random/0_1 unless score @s cg.pillager.burst matches 1.. run scoreboard players set @s cg.pillager.burst 3
execute unless predicate cg:select/charged if predicate cg:random/0_5 run scoreboard players set @s cg.pillager.burst 3
execute unless predicate cg:select/charged run scoreboard players set @s cg.pillager.random_timer 100
execute unless predicate cg:select/charged run item modify entity @s weapon cg:set_quickcharge

execute if score @s cg.pillager.random_timer matches 1.. unless entity @e[type=#cg:pillager_withoutplayer,distance=..15] unless entity @e[type=player,distance=..15,gamemode=!creative,gamemode=!spectator] run scoreboard players reset @s cg.pillager.random_timer

execute if score @s cg.pillager.burst matches 1.. unless entity @e[type=#cg:pillager_withoutplayer,distance=..15] unless entity @e[type=player,distance=..15,gamemode=!creative,gamemode=!spectator] run scoreboard players reset @s cg.pillager.burst

execute if score @s cg.pillager.burst matches 1.. run summon armor_stand ^ ^ ^ {Tags:["cg.bul.pillager_gun","cg.bul","cg.bul_type.ar","cg.bul_ammo.mid","cg.bul.frompillager"],Marker:1b,Small:1b,Invisible:1b}
execute if score @s cg.pillager.burst matches 1.. run function cg:entity/shot_am
execute if score @s cg.pillager.burst matches 1.. run function cg:entity/shot_am
execute if score @s cg.pillager.burst matches 1.. run function cg:items/ar50/se_shot
scoreboard players remove @s[scores={cg.pillager.burst=1..}] cg.pillager.burst 1
scoreboard players remove @s[scores={cg.pillager.random_timer=1..}] cg.pillager.random_timer 1