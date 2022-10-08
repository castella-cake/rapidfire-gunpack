scoreboard players operation $temp cg.dmgdisp_temp = @s cg.dmgdisp_sgpntemp
scoreboard players set $hittype_temp cg.dmgdisp_temp 2
execute store result score $dmgr_temp cg.dmgdisp_temp run data get storage score_damage: Argument.Damage 100
execute store result score $dmg_temp cg.dmgdisp_temp run data get storage score_damage: Argument.Damage 8
execute store result score $dmgh_temp cg.dmgdisp_temp run data get storage score_damage: Argument.Damage 1
execute store result score $dmgarmor_temp cg.dmgdisp_temp run data get storage score_damage: Argument.Damage 10
execute store result score $dmgarmorex_temp cg.dmgdisp_temp run data get storage score_damage: Argument.Damage 3
execute store result score $hp_temp cg.dmgdisp_temp run data get entity @s Health 100
#data modify storage cg:debug dmgdisp_debug set value '[{"nbt":"Health","entity":"@e[distance=..3,type=!#cg:ignore,sort=nearest,limit=1,type=!player]","interpret":true}]'
#data modify storage cg:debug dmgdiip_debug set value '[{"nbt":"dmgdisp_debug","storage":"cg:debug","interpret":true}]'
execute as @a if score @s cg.player_number = $temp cg.dmgdisp_temp if score $hittype_temp cg.dmgdisp_temp matches 1 at @s run playsound entity.player.hurt master @s ~ ~ ~ 1 2 1
execute as @a if score @s cg.player_number = $temp cg.dmgdisp_temp if score $hittype_temp cg.dmgdisp_temp matches 2 at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
execute as @a if score @s cg.player_number = $temp cg.dmgdisp_temp if score $hp_temp cg.dmgdisp_temp <= $dmgr_temp cg.dmgdisp_temp at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

execute as @a at @s if score @s cg.player_number = $temp cg.dmgdisp_temp run scoreboard players set @s cg.dmgdisp_deldelay 40
execute as @a at @s if score @s cg.player_number = $temp cg.dmgdisp_temp run scoreboard players operation @s cg.dmgdisp += $dmg_temp cg.dmgdisp_temp
#execute as @a at @s if score @s cg.player_number = $temp cg.dmgdisp_temp run scoreboard players operation @s cg.stat_dmg += $dmg_temp cg.dmgdisp_temp
#execute as @a at @s if score @s cg.player_number = $temp cg.dmgdisp_temp run scoreboard players operation @s cg.stat_dmg_h += $dmgh_temp cg.dmgdisp_temp

execute as @a if score @s cg.player_number = $temp cg.dmgdisp_temp unless score $hittype_temp cg.dmgdisp_temp matches 1.. run data modify storage cg:dmgdisp_text text set value '[{"score":{"name":"@s","objective":"cg.dmgdisp"},"color":"yellow"},{"text":" DMG"}]'
execute as @a if score @s cg.player_number = $temp cg.dmgdisp_temp if score $hittype_temp cg.dmgdisp_temp matches 1 run data modify storage cg:dmgdisp_text text set value '[{"score":{"name":"@s","objective":"cg.dmgdisp"},"color":"yellow"},{"text":" DMG"}]'
execute as @a if score @s cg.player_number = $temp cg.dmgdisp_temp if score $hittype_temp cg.dmgdisp_temp matches 2 run data modify storage cg:dmgdisp_text text set value '[{"score":{"name":"@s","objective":"cg.dmgdisp"},"color":"yellow"},{"text":" DMG"}]'
execute as @a if score @s cg.player_number = $temp cg.dmgdisp_temp if score $hittype_temp cg.dmgdisp_temp matches 1 if score $hp_temp cg.dmgdisp_temp <= $dmgr_temp cg.dmgdisp_temp run data modify storage cg:dmgdisp_text text set value '[{"text":"Killed ","color":"red"},{"score":{"name":"@s","objective":"cg.dmgdisp"},"color":"yellow"},{"text":" DMG","color":"yellow"}]'
execute as @a if score @s cg.player_number = $temp cg.dmgdisp_temp if score $hittype_temp cg.dmgdisp_temp matches 2 if score $hp_temp cg.dmgdisp_temp <= $dmgr_temp cg.dmgdisp_temp run data modify storage cg:dmgdisp_text text set value '[{"text":"Killed ","color":"red"},{"score":{"name":"@s","objective":"cg.dmgdisp"},"color":"yellow"},{"text":" DMG","color":"yellow"}]'
#execute at @a if score @p cg.player_number = $temp cg.dmgdisp_temp if score $hittype_temp cg.dmgdisp_temp matches 2 if score $hp_temp cg.dmgdisp_temp <= $dmgr_temp cg.dmgdisp_temp run tellraw @a [{"text":""},{"selector":"@s","color":"red"},{"text":"は"},{"selector":"@p","color":"red"},{"text":"にショットガンのヘッドショットで倒された"}]
execute as @a if score @p cg.player_number = $temp cg.dmgdisp_temp if score $hittype_temp cg.dmgdisp_temp matches 2 if score $hp_temp cg.dmgdisp_temp <= $dmgr_temp cg.dmgdisp_temp if score $connect_rfsys cg.config matches 1 run function rf:kill_bonus
#tellraw @a [{"nbt":"Health","entity":"@e[distance=..3,type=!#cg:ignore,sort=nearest,limit=1,type=!player]"},{"text":"HP(NBT), "},{"score":{"name":"$hp_temp","objective":"cg.dmgdisp_temp"}},{"text":"HP(X100), "},{"score":{"name":"$dmgr_temp","objective":"cg.dmgdisp_temp"}},{"text":"DMG(RAW)"}]
execute as @a if score @s cg.player_number = $temp cg.dmgdisp_temp run function cg:ch_right_dmgdisp
execute at @a if score @p cg.player_number = $temp cg.dmgdisp_temp if score $hp_temp cg.dmgdisp_temp <= $dmgr_temp cg.dmgdisp_temp run kill @s
